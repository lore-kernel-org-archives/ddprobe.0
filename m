Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F08F3EBF31
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769261034; cv=none; b=JpRZEZcR/h9q6Ix6k+PHohC2JLl/AilqcW4Xj+IOih7rW+fCiZDZR481PfsqKi3fRJc7Y9fXJpjkt3igpnr42TfkDRUejXykD/s7QVnRVZ0I5cHhSe9qPzyMRBRszbc/bDCzPOMOFvmrvFDGL5ac3UUVSb46e9pycYHnOv3rvVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769261034; c=relaxed/simple;
	bh=SYjaLUC+jaZ1JK7BOdBHUstnEgrTrlfAmF8Br+VPf8s=;
	h=To:Subject:From:Message-Id:Date; b=bWIAIbOHjYvXSjul457zG7dBGivd8U2ABxLfBJ8f8mOOgMQ7sBGFMnxy+8e/hm0hYcdlU8CVKMTfnnK+MJB0JlWqZAxbzS2wJj422VZNWIbP9i91JVWQa/LvT3wkNLww0+fjL1mfQQzM3BI1pY6AkfbSE94+Mr7FYUJmMm8fP4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nilU4Wg7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nilU4Wg7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1153C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769261033;
	bh=SYjaLUC+jaZ1JK7BOdBHUstnEgrTrlfAmF8Br+VPf8s=;
	h=To:Subject:From:Date:From;
	b=nilU4Wg7nvtuM0o3H8G6EQGpuU2E7Oe4dHAUK/m5W/38T1DpPAXLy7wklEl5Izzbk
	 67mwIFxiRWiL8gFZZ665vaBUIcgNb8JBv/4N6N4c9jAD5MKRzriipzgNU8/6bMoVVd
	 4AA1ovJOopt1zCNMc/IQvMIq+/vE3ZjFNNnFmifoJCNKev99ym+d67Z9Tx6Q3EDH2z
	 7eL04+I2Wl1C2Nk/xBkmmj0/26KB82MKGyaey6p2NVYkcQWaTTFRWRoSx/waNpXr8X
	 eDbIaFL3dwSbtwRbfStF3p7gv2004Yb/6GRMqhZb5425dAXo5Ab68CkvbFRdQRtwON
	 AL9Ctfkscx4lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F543D715E9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926103357.5158.2135262566697705564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d343bb407f60e600045d3355a3932514cfe03c75c5b1f23af0e1848668ec6de4
Date: Sat, 24 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769261033
