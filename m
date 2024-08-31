Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 170B21BC40
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725074154; cv=none; b=Qnda38+/gEiXOU46h9B892UMdcy+d584waVhpzIBCGYqZRIxo56GonHLhAFsyNKKfAy4Qjuq9oBzK3R0vwQklgGV9jp3vo2F1XF+zZWAv1FiJ0218EYwcRVCm9TsU/KgeVcjp1Hbxf+LNJIJ033K5hmwMQtZ0ISegbOiErTvLFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725074154; c=relaxed/simple;
	bh=r9FAW6aDjviI8htl3VgG3a3c20kZp59Cd7k2eNRVacM=;
	h=To:Subject:From:Message-Id:Date; b=ojXbF8K5mMS9lEPbAhK/5vmjSqZWSMdtO/D2ROzMD5XmbhKFvd2tTdTwZy/waWdSOpqkt8LTrKEd28k59UqLTI7sLDyPGqHjr0q3Yr57/KV+TCs3dSK0m6uR1AqHOzOi+jc9+2mY0a4JYB8ltyWEciFFbRwpjeSyz5h8j3UR9sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BL9mw4IJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BL9mw4IJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FA3C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725074153;
	bh=r9FAW6aDjviI8htl3VgG3a3c20kZp59Cd7k2eNRVacM=;
	h=To:Subject:From:Date:From;
	b=BL9mw4IJWbSO6lvaLBCEBQqimZ+OOQfFUnKd2DuCNJiR5UwFKeoc8JyAxqipjyIbO
	 Iv/UlzHfnguFGQrJ9VjUt+ug+w+Af6RYImRenIomfwkPk97oxaHyOxYznZ7lXbN5Ts
	 RZZiuPrDLB5S5YfPNHxpw3QlDiKOUE7T+kLymClzRpbPxhUE3U1GuscDDRU1OJ3pL6
	 r/f7LbXAO/Pi8kq03cw+ljTFRSrO+faHP6BUD8PPpy7IKKTGnhy34nhrHj2iT0EGE8
	 W4z8VhhXEMEEPw2JPn/ofK5gK2HVQHVfIBw/nZYTl5VrDmwxwOzGm/KilNKtebdN4U
	 9MRTXVlZ2MAEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C6C5474C
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172507415358.9237.16566635633397862404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a9cafeeb1f5081e8ab2e224a53eb169d7631cac28ca15528d5231c84771aa1
Date: Sat, 31 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725074153
