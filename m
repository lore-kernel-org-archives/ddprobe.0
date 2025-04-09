Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA6CEEC8
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744205994; cv=none; b=YOTrJFWxRRTsfBkdMSxLDx8PP7PLofuR9KZlDTwTUC3mRdHeIT0gm2/hMVJxTzCUIMDkVXEGMXPTC8ecNer+47Jod9K+fEKX31WZfNkvOlpnmAiZ/pYluIN225cqTf2dgzremhA0WvCnOQVG53QjJ3ydUeI8b06bA7xewTeTsLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744205994; c=relaxed/simple;
	bh=OYBdaptZSfNFeAlkVk2/N9bm/bgc+sm2xqe3IsldFZI=;
	h=To:Subject:From:Message-Id:Date; b=VQKN1AjophOAkrLSUjchDpswkxo5WmL9QlyyWV6Zkcqdc1q4D1p/74AiNACnHaL5WWXSwZa8AcBrLW9hokCobIK3qv6LjS+PgJtGR9cKyNHwsfsL4OWR+E7pJLVllRKwHq1QsEty5oGmh/GIM4PxYD/uIGviuKMJDGHvRg61Uww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PM9DOnUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PM9DOnUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09A9C4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744205993;
	bh=OYBdaptZSfNFeAlkVk2/N9bm/bgc+sm2xqe3IsldFZI=;
	h=To:Subject:From:Date:From;
	b=PM9DOnUZXFIeR82CxrIq5qkIHfCCWGASEckKmrTKTYwwXsXoX4MuDzPXNf7RjBZ+E
	 GMn2BBO6HdpAApac4lN3jdPIbM0+qtqxMK2cnaVWRFD/AvhciSv0kE81vPC/2c8qiK
	 wjXCKdnxdk2uznAb7WYe2DGzMbMyHTcQimogYy0uFHNaDAZdoN9+xTLnX07mMn55mB
	 5KMoB50Qq/ncJszSM4ZisSg7F2IKUQQ3Y+iBI/BJgpJgr3/Wup+A+YJNym3Sef6W/i
	 BDb7rQQ+e0NkzSgusuv2dnRsJmDhlKLPQ4sf0p0XNss1ZaeT7XXU2Fwx3+OvuAAKAS
	 8smqthZhl7LZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9324DC36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174420599359.8093.1955118749110719226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc94c8e314af480c75857f1c06b1161f8e4137c4495e0243ec971a06bee48638
Date: Wed, 09 Apr 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744205993
