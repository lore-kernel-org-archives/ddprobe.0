Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA262605A2
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707846497; cv=none; b=gLn0Zqwr+0t07AWiEhhBXW4SxzscLLh78/xDWmHXmfhFxry5azXv/tgXKlIco70yv82a8VKwlUqHh8xRFpyKwiSZVizXC2XxfIADw5ihepM5hCr070N86vJzyZIMrrPVKS7whycdv0iYQG3jpKAF8F/+waJDPIvB4oHui5TBlA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707846497; c=relaxed/simple;
	bh=xH0fz0C+qqPT/obeUmsWkmzqDb2OIAMc0ZPRZaqXHRs=;
	h=To:Subject:From:Message-Id:Date; b=qrf7sU6CNfLHRMeLoI2ZTo7uQsQiZFS8LKBHCc8iByDrGR4Ae89R+eQ8Zhyif2ahQVXKM0qA6YEI5b/oBKqZDxGejiWg/McKuW6pJYM9A8+YY+TRivXE6Mh/8DpL+XYU5CGjJmPOd6mzzM4yNb9fvyec54PFrFkcT0pPoqsXrt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCwCfxio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCwCfxio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 721D9C43394
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707846496;
	bh=xH0fz0C+qqPT/obeUmsWkmzqDb2OIAMc0ZPRZaqXHRs=;
	h=To:Subject:From:Date:From;
	b=fCwCfxioNK94xbNodkeR2XPnWLCGOg6yl5Rnj6tcyn+YqqFEGBQEFFtAaG+zw9ae6
	 BUGqcyP6A4IyYw51SmRo/f2uYjvegUdKZB4+mufIznxoFhIgeojNdtZyiaV3irdqYA
	 /ghh/oDmYLichND28QOYkfa0OcZO6Xa3uVehj2QZ8bRujETRFg9aC1ydmEsYfjiDEE
	 57s92FQhn5zludkRqBRFfIOCR6r/5COK6eLiBD2c9wIMxSXU2aQzoYtqxvRCfyI1p7
	 UN6anm5DPfV+mgIjqSGf57uPOvmblBPBroeJSe78khOiDLDibDDNDF6EzNU8xr6EXb
	 czba6Gyq75Pjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 617F0C48260
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170784649638.11181.9880261697224104658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a73fb702d3cb8970a977dbbb84c012e21a7bf582db6f4a1c440250bdbea5d55b
Date: Tue, 13 Feb 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707846496
