Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2713F79DA
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767759234; cv=none; b=Huliq/0J6tzsjE5SXojWIhNnaYBVSCFpiG5JkjFVO0dfpKGQjBzowZxMe2cYBsnS8oJ+elCBwZxBtVLU1FiPbFGnOfUzJg9JyB8jA+BOmKJ9gdhpy7v+rHy9/iGX0ujOsKYLXQ4XTpsnHoExwMg/wvB8qM/blUq6x11+y1CZIPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767759234; c=relaxed/simple;
	bh=/HXORct555bOclK1RZaiSyU6RrSKJHW/OkmTbn0W1LM=;
	h=To:Subject:From:Message-Id:Date; b=qZ6kMAWtWZRzqHDByFu7MnE11XD6F0Ep/B6n3z0+45eF/06IQlA+5wtcDcwzmHvBAndXZ2d4Fbq5SXHdk8NDErs0Mwn0X7i5SPTC2jKyHnd7cRdguxOuKHgsTXTbo3B+bxdqnhVBm+Rgt9etebmfeEbI0h1aA9wMkEyqXJhJu48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYBZ2xqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYBZ2xqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7058C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767759233;
	bh=/HXORct555bOclK1RZaiSyU6RrSKJHW/OkmTbn0W1LM=;
	h=To:Subject:From:Date:From;
	b=AYBZ2xqyUE+hDN5AT2YZWXRMcgPmwwJdtICBdq44XseuASzk8bHEITE4gd53IkWM3
	 l9hDHkUMpofsqFMO/95Pv3c+cF3e4dxOJhakt7yl3Qj9H62cENkeUaBmrXFudxQp41
	 KDrjrDYxa6fYyf0wb3psfKbzKWGFCHMyPhEHTxSrBKecXbugFdnGIhPwySb/2nfgPd
	 3+RpE/0bJEleMHN8hSpOwT9XIiRNErvlidSAnqpJmYsyMccnz5fASBhzJBI6Q+muaq
	 qmWIttQlakJ9fECeFJGvRvTy/ki+i9eJOs+0XEQozZNbK3ZsJi4Q00aotqV6nvkRiU
	 lueUCnI0UyPzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913CBCF6BE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775923357.10805.12229142634131083399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 337c072ef861d430d9a9ffbd9d1900200eb369e3d53e7107ebbb4d98d1da766f
Date: Wed, 07 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767759233
