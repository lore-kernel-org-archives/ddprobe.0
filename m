Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 734D5EAFA
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718428703; cv=none; b=lk2W9l7RMErUiCVR4WznCPG0oNmxhphMs69XcaHWKPzMOysq1hXA2UpTjWzoQLtiigq1VwGp33G92po4is+QhkUYCELPTkBUicbt3/SqffKGpXcsnRwCnUTuAhQhB2CxhvGHuCR21jnV35oR8lnlXEykyWvxbKFmzoDZLsK1Y/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718428703; c=relaxed/simple;
	bh=bJD3FTJPXCcT1Kz4rCp6sxs6IsujChu8s9jzM9eiwU0=;
	h=To:Subject:From:Message-Id:Date; b=DL+SELwrAMpICkakjwC/Sn5VSPaDRgR/ZiqRVD50shfad2PuQ/ry/7LvKe4s03/1WU1c/+lTKhyd2uCRAjkY9HljF2qKNwPgE8N5/9OIo/gFMRG/I9+OlY1y2RtBTwX+yMQxHeVz7/Kq54uMhDL3qPNhGEl+4C4H0ho+QSvF5dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KZ+qcLTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KZ+qcLTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4B60C116B1
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718428702;
	bh=bJD3FTJPXCcT1Kz4rCp6sxs6IsujChu8s9jzM9eiwU0=;
	h=To:Subject:From:Date:From;
	b=KZ+qcLTnuYzXeXaoSKVYAIv/FdA5XFd1HPLUhbET6nScEIn9ddbEMDBG2OuiEhCnY
	 OIeHc5GpJ6ST1b7K4vUdnIsqMM95/hrxBFXdIMmh4jOhtQLEoWlSfvKBZz80cP1va9
	 /JSiB49GhOcEUgsidmG19DOD5A6a7gpgpFn6tz5e1kmUYQFH9AsDC4vVkTtwcaz9Dy
	 COF4vvJWdbQLN7BtZCS62RleseZXrgYcdAZEHIJ1V88Gd5TIUEBxucAYcW1Qb3F3XH
	 pqW9YQKtIMCNkznlyLuwaKwST6vjmH4yjePM6OtADQ0AuqtazCmeRYl4FRwFdV51s6
	 mHGlHv3uod12g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD1E7C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 15 Jun 2024 05:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171842870281.21647.8852946203763114097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2cce044db7a56c46acd79fcff3af4820d495f3a76ed97065f8a075542aa71d
Date: Sat, 15 Jun 2024 05:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718428702
