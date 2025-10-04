Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FE4175D53
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759587594; cv=none; b=Fqjjlcsae6eaQRiBDBuyyPY6+vD1vR/SuzWkX3HOFog5MDdKwlu9kSvDBjt0ugVm7mtgMqlFyrI0QGv9EOMKmvMc98Y2azGytL2cGbByVU6owgduJIqzi/AiEpPcrnTB66hW2uUuqwjgRjOxE/ajabUTGAVe2n0FhDBD6bbz5A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759587594; c=relaxed/simple;
	bh=eg+ydXQatelWPzYo9+KLRLRyFqnWoxuqKv/VuLYeJQw=;
	h=To:Subject:From:Message-Id:Date; b=UoyvRBPqKYwCE9g05Z2pX/z0u9Gl8tNwMBYjCXJ2wb12eeSV7EYu4IDWIyO3LmsXfuuB4KuH2Y/0NpQkDGicrpN6OuSK2pHx5FWC8IMUMQTxfpEB/MpgdZPyTkVbEeHnPQtsyJnpooyN34ONQ+sa8PZpjTm6JRJM3DnSGF5uJtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJhJ4Z9T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJhJ4Z9T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D73C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759587593;
	bh=eg+ydXQatelWPzYo9+KLRLRyFqnWoxuqKv/VuLYeJQw=;
	h=To:Subject:From:Date:From;
	b=GJhJ4Z9TiLZDUE7JAcbTNzbLaI6RHpApBksVOT7fxlLDEkPMFOjp4Ij8Euzz5Ui4I
	 EQimMotNeKmC9VZ4FD/+eQSQZdItvl57hu6do4PVDPrlhuGY9sir1fKxGHU23DcjOz
	 s3PZ4BAJ/hv7cwlb0awPSXLycbCFg/VTAOjxwn87PmBgG8zZ2G56vioH4wp6FmUSB6
	 7ryx2KxLVn0uDC0L9Y2LvLlZ/9VitnNPHgpfc1NlYoWqSrSwmNXGLd4R2pqen9CtXN
	 tnYcR2ShAekw05Xk8p+xFLyBkK2n5xb3xTA4L+YQ84CqRwAjac0x+nWujcx2rr8eo2
	 H3rp5vDuztkaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9211BCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958759357.545.6691089211733018756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36e4f78a17da7dee0bcfe1fb4e7abbc2d17693c6a2dd978d54677a8cafe36819
Date: Sat, 04 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759587593
