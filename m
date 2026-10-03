Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4516D1FC4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790998234; cv=none; b=SUYhWh7MQ6lH3Y35VWkVt5JbtjVhzFrOcbeEzdcC4IY4viokBJvm4rmqybyRbYrTReH3NICLwtXLPZqmQBoV2yQ3FsKiHsB5VCd1KmpURGNuXXDAyfSG8edq8rXP+GLTaMI6C1UImrpaSKt3XYzqku6zkoP5jBSwileWexWgGGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790998234; c=relaxed/simple;
	bh=uSLs8FZgW1M19C5wQ/utAHO7QHTTIhwn0jWBu97NvJc=;
	h=To:Subject:From:Message-Id:Date; b=XRW6/p1h+laW+AiTYX/PxbiQZXj/Vcl9TnWW16xtvrHWgGxzcLRTGPr2rtRobbwedgRzq0+tMinCFxxDG+kvDxDsqydaARTe/PLXDsiy4T7XQZWYcmA/IW4hQw+7cJAQIyC3Hn8n+d/GXGVCZImgqc1crpgwdumdf/C147j3XS4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ni887YdN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ni887YdN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1F0FC2BCF4
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790998233;
	bh=uSLs8FZgW1M19C5wQ/utAHO7QHTTIhwn0jWBu97NvJc=;
	h=To:Subject:From:Date:From;
	b=Ni887YdNlZ9m8LUSGl0f6RRw61Pbg6guIYgQm3w0YlROKi3dODa18I7JjW0Af+LUB
	 LAi2XRGmDIrFfTg/ACAih992iZH/EmGj18AwMaYcmhUKSTJUxRqzgwtwlroibFET1J
	 hqumAxGhO1DYDPHpp6sxN/1fyfubXM0k0e3kjNNlGKLNxBVud59SMNgnXtPTgvCU22
	 hkqeSLO8KdTyKSX1vUIkArwSLW2rpvJePMPSnkLk81PMa5zQ/rSmfV8PSY4YFdUR8h
	 9Petd5KIm0SP0gXrBUwkAfSyIxoo1yZoOJ2v6mQp3m5QoO8jt091H1LcUxJoVzuam2
	 Uhf91rCrXMXiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AEFCA5FE3
	for <ddprobe@lists.linux.dev>; Sat,  3 Oct 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179099823368.31583.7527217036018010259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b084b5e522a615a23c64b71315f79e435528c7cf8a5129397806a15f76f2c69
Date: Sat, 03 Oct 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790998233
