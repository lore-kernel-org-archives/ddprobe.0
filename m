Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237561DE4F2
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729329954; cv=none; b=cNQ5FoMI+TpbppyH4LbA4383/iK2ucCG5puWazZjE7wz2bXl3UHvVR+2tMOvtO2DLJ0gbZ1dgq8I0JHUQCjtdvKnz3rPSVtbT0B1HCIsUIMV4H0CVFLB8xLTHYXWqzOH1YVyhJD+kUwbdhj8vLxq4MlaxDOPJBUB6MXEg7g/Z2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729329954; c=relaxed/simple;
	bh=UJebJWwurtHMrLUMgNTyqiYoWzbZgLWcGm+DRHZVjaM=;
	h=To:Subject:From:Message-Id:Date; b=VZp6L8ezbNzPywdus2Pc4Pet80GyMxRF35/59kDXgyCHxRTH3cFCEDbJtEaJXT7WI+EXl85D/9OGjJhvhf6kNbR9nbeA+ZwAG7r5W2j85OEc6nJkWUVEfg8xr+eirXrbLJNPQDdvKbQtLOCrPiZF4cF09BPqCysLqt5bWai4Onc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrEbO/vq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrEbO/vq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC0BFC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729329953;
	bh=UJebJWwurtHMrLUMgNTyqiYoWzbZgLWcGm+DRHZVjaM=;
	h=To:Subject:From:Date:From;
	b=PrEbO/vqs3y5vwr0jijeF3xkHxeXyBGj+NldiYLaIdO8RMVnUTrdNuEABZ5k9moL/
	 96DdgaYl2Y8UQazxN0O0s9oTHJ27JSDbw3oSoxT413ldu8fjkslcyvM/G4e43WeDIs
	 iFaR+xO6qPALa3B9wRxcqhjmruVNABOKzoLxUI96EPI1HscAa7T5EiHMd25gZbaRJ6
	 6K4t7rHncqyTqOIf2MNYB3UtKZ85CtJQPvmSbZXy1mxK5gjJcdv2XWfTiXJKdw8Gw1
	 f9VkBtLeVMlc0aVqiq1PxvCwzoroXtfgSm99s26J7lGh1qsKBAuhlfD4W2uXK/PEEb
	 w0fcaMoGf6JtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D06D3C905
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172932995359.24842.7593308425316039468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ec157e3ae51da73a0f8cecdeab557d5d63cc7f6e820cbf4949f85cfe89b3e4e
Date: Sat, 19 Oct 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729329953
