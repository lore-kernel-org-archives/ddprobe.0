Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C44223E347
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757797194; cv=none; b=V5Pvpn+zjccGaKfm5FouVqFoSnMRqEqq38rHKbDtODka6NJhk9TikzKUeI49lEFa/EZn1Wbrru6kiOkSgawxcuB3/eQDmBV0sGIhKK1FzZsrupyt2j91GdT9eL8J/8URz5pz7yfgtfmZdv+0rJzENQ1110v0W/x4nnpTCYwcDgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757797194; c=relaxed/simple;
	bh=hNwe2qHbMV0o/utJ8mNWsMFe6BGsaHkWtB2k/a8MW38=;
	h=To:Subject:From:Message-Id:Date; b=u5gBe6JXDztckIVZiePU3QHwZVpvV+aZX0wPRn2xNMlFG29yw1vNAcF9zUQEM1ozBdy69IPTTM7buym8W8r/R7kBfHOBHtUqujSewZWN29nAs971N2uuotg6GxGKYCGfz0drIbtVPjTZ7MjBxQyp4MrdGw9kHKfG8akun81qZnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I52WnM2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I52WnM2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C8CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757797193;
	bh=hNwe2qHbMV0o/utJ8mNWsMFe6BGsaHkWtB2k/a8MW38=;
	h=To:Subject:From:Date:From;
	b=I52WnM2DgWIDcexfBeCaa4g+NM8nxY10W1dqJsVvcTA71lTO70OruzfUco1B/qb94
	 Y+R/GNxRjE29bUDsdseJ3NNbqONE6BTCBTGTZVuTHDBFvTPkc3gU0/xsS2Gg7an+1J
	 F58eFkQDf3XpL1bm0vIZf53jyDh0pB7nwdaliBlpays5RC7bJzaoZZ4fsQ4455E0Ss
	 F4OFx1xoHSf/nedSPG/LLIaMv8urmyLKHSvTmhS7V9p6uOgO1u3/semv+ZiI1bEJ+4
	 HsdSec5kFP09IwFo6Jii1vy1oIUsh2VuFuTeX/SkfBz/b79ZMnaXe9DA0IQ5+v7hKZ
	 alptSsAdEaN4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC5CAC593
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779719357.3211.14680820778372561558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4cd7c221c97f67deda9599e3fec0516b803a91243df5046f0bbe3424b34e4e6
Date: Sat, 13 Sep 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757797193
