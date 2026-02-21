Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C3322B5AC
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771647894; cv=none; b=DBxDanolbjevF2DRRCle4H+05kVptaHlNUN08L27S8ZPukjafrVoaxvXiZxn99AL3reSnt81XkfnS3mFrqRlGFb4pR3URmiNcB35DWdW15wRNqNaEV6KhIn1Fm54Um4f+lR14ouEeBN5SqhUv7e5OTY2kuogtfSZ6SkiypPV/uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771647894; c=relaxed/simple;
	bh=7UTAGhyN2P8g0/Mgtjy2S97pxZ0XN3YDtIE9QrVZ304=;
	h=To:Subject:From:Message-Id:Date; b=l43b5ea0qFvjesOaMDr7p1+urNSIrUmvmGFcPWqVPWZWfMlYrv8gBrA8O7vZo46JjxeS98AfeF3IcvFM3SHP0PMB1SRg1Nn3LmCaTcrjO6pOoHA5qAQUxNKQT2qjCIGT3lCtLZVevP+zUOY7WeGJ5AsryB/dvxVaJBMlcZVZ9ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEdqaTxw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEdqaTxw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE1CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771647893;
	bh=7UTAGhyN2P8g0/Mgtjy2S97pxZ0XN3YDtIE9QrVZ304=;
	h=To:Subject:From:Date:From;
	b=NEdqaTxwRx/amg/Iy694DZSEij4UpXoXhGQtOQ6x1ru374YFTniSJPejYUBNZLQaP
	 FB4nKyfU1E9muqpyFSBdwpezY8/nrGwI/nF6NVfay1CDOguPXTqYEMqwDWboEsGTXY
	 mDh18w+k5xfTpN97e+nwYlQfMx3cAF+gc1Qr/JxsJ7S/RvlRu74QCsAns4EW2OZgIS
	 yP0UMx5hynzZUiD/NikZFCiQCtA81FJ371MDk0XYnXxpT1DEgXh8JFzODh6h++JJef
	 S1OnCEjEHjkClUqDh+8WuakdhctCIypV4Cv7sM9y3M1UJJfK6lyAu0DoKQhrlgCJX3
	 P/gG7w/s+unWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C46C5DF83
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164789360.9182.17678403980377364119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7235569ccdf09d259336fff227f6b14a9b44fb5962db9436ade96a1b4f0987a4
Date: Sat, 21 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771647893
