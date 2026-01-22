Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1021B2737FC
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769085834; cv=none; b=qNB8Y8r2KOkOUnDSLb2hZEHtkg5JfjHAmpk9pTwx2uIrTxqew/WZspSvYP1cK3GpaZqf43omNag6/7aw15zpsanVmJivnygnEOOOVyfJR50S3xJ3CWCWBLgp3sGFaxWBbwcYFIc4yMwWuSddqvD1INnoFWW1Ez1mGfYaIpSNIEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769085834; c=relaxed/simple;
	bh=ssLH6kKhl8rR/+MVLrETg6a+65K4xwZCgsATgv7z0C4=;
	h=To:Subject:From:Message-Id:Date; b=b0p+11FaISjTLAG9hdXxHgVuDASo9FRX8eWvqt+mUqGJiuSIVv/Y1dwFfQegACYSRaPKhfLXrRpMEHwY2YUG9eU7tf58Cn5v1Ew8hc9MtcOJeLe7vwN0qc5vZWckGNVwTarzuBEDZhJmx5NeeP4RpHtFfIuO5/Uc8L5bUfZK4/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbc+BU1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbc+BU1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1302C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769085833;
	bh=ssLH6kKhl8rR/+MVLrETg6a+65K4xwZCgsATgv7z0C4=;
	h=To:Subject:From:Date:From;
	b=cbc+BU1CEPifEdcxOFUkwWUZ9YFk+V01ZctUJWiNWcfhWS399iCIy3ATdod4NbIJs
	 +9/D4kKp73YNNBFA3H7XuJ9Q8SjfDHGXJHAx2bEdBrrpgpVj4ejX32NXhaqMHOvjVT
	 1Qvia8oDEs6zv328ZeWVuvuv3AZuDr7yd/ugizT82qP/JQQHBqcdyzIW16987QNSm7
	 EY2gow1Gn2RKsX1jRSYAH/GRbhTk1Zua/UOUHbgWmhXKhy3cE+Nwmjtjv/JIMgna1E
	 tNgza2iX2gCHWd3QPXk6sQhPPPy5u1DzbTd+wEifl9aDOeGGEguE2Ag3IjJND9T0SO
	 TEYh82FPeWQLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92ED5CA5FB6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176908583359.28095.10953895257717471856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1cb4171c3f04a4ec181ff4adcb55b842284e83adbec3d011154415bf3ecf10
Date: Thu, 22 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769085833
