Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB4815A856
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719403403; cv=none; b=J0X/YHcp2bzjwYHbMjyj3lj7z87bPAUVxXgG4LZLomF4q2VGulJ9uTcyuJbw5bkTOZp4uMLIm3PlfOcL6pQOTScVvRLRpHuJmASgy2xJYj4a8pu9aL13rF2vWB1pJ1q+O91PFnKWqYDsCWJFAjIxFqvEFKKzoU6z+8/Uo3KIygQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719403403; c=relaxed/simple;
	bh=BdAVJfKLZucxq7xVCdj5qgQeFP4UBIFDsQU1WqAtQeU=;
	h=To:Subject:From:Message-Id:Date; b=rGfhUGEZ0atauKMwRzq70um+/bRjqtXdaZf6+iifE0qSfAy101xAj7e3NDRM1NvIs6lRUO+iyVBJCvMVvFa7RMzrKh2aRdgcuqH7+TnqfS7k26jx1eljGaHnWREDdPW0yQIZl/+xHFMYLDfyONDuBtNyn2C8BfUxDDJgokIaDIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dj3t68EQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dj3t68EQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF3E2C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719403402;
	bh=BdAVJfKLZucxq7xVCdj5qgQeFP4UBIFDsQU1WqAtQeU=;
	h=To:Subject:From:Date:From;
	b=Dj3t68EQxdoOXlP3TlI6JSEoDzEXH8mYP86y1fgSzBSEeP3tZm9NfgwauBuPo30qu
	 f6qBFwSas2QPtpiBNZ80ZiKBf5/z5bK/flHoAAuE64vQnqj48f+wTD7HWo/FwUN00h
	 ZyKz3UxO7mb/yv03WpChNDbdbR0/ck+dfyKKmtE57tYYWgzhek2sqwBgQBZrboDw3B
	 zootANMin4PLJz0niEXX8ZGJGOL8lZkyRlAQ0H4cNPdvmKXmcWTCOXlXlsqLliFQ+z
	 +QRFm1V4T56gMKCqojIQ3bB0Rc9eScIpwro7OaY3M+XOrSI/qZKk10gTaScEgS3T16
	 U+b/Hm0LY4kLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2E0EC27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 12:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171940340278.15540.13130694141362303064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa87d0fc001f226b2909e8ae627e3bef6cb3a7af721a66909cfe002c886eaa7
Date: Wed, 26 Jun 2024 12:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719403402
