Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3DE29A2
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735789554; cv=none; b=kjuDLxNWF0PLG7kLroY4E8euOILWIwtS7F1MYCm1bOjaQPueENKX6SsmYgUkyVV0AAHvuiEvhYNEKaFgTLUyS/BfF9U/vGM3bkedjVrSiGNHXql/mb3O95PVUyUc0+tphYl2HxskGOaq4upoGa6oJ7QPGT3US8EWoh20yeaPBtU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735789554; c=relaxed/simple;
	bh=NkdnUv3KifhMD2D3HwT76ifEP9gNCndwYJpKnNuGlUE=;
	h=To:Subject:From:Message-Id:Date; b=Ix6kD602BgunL80JxQzvJBZLc/Gp9We+aW7b/Ox4mgnfbr7FdzMw8RS8vQhL/gy1Hjv2afE8A90FJ2heHCfL4qtCfm4C+0Nx9HcP5cW5E2N7sXMoegMza0wvN1Tz/FLgss0DKC7KZmTQvovAiRX90Arm9Fw+L8qfKHm8t1agKpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgr/tqRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgr/tqRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E41C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735789553;
	bh=NkdnUv3KifhMD2D3HwT76ifEP9gNCndwYJpKnNuGlUE=;
	h=To:Subject:From:Date:From;
	b=kgr/tqRv4LqDaHWtuza5yRyyVzr6f/O4h24ncLNuRW4iGLYpZQAsBBlmz5XwDgC8b
	 CFa8fn3hdef8AfelrCh3ugHVg1Se6fQs8D4u4dHaBFsy2p7d3J5jtdrK4NcdvgiSZU
	 hU79LuIv7rFA08gyC/D8QOWxrny+0u0IUMwwU0twYTKp+In7HYNVmlJhEJihXOyU1z
	 ghAVILtDf5XGlzNNi0YC1C+7FjPInD2InMtlG2FP3CV+DRxqMBLOLF5n2aKNozqVzB
	 S1kVoBNQghx7pUvydnfK93SlscjQy7rRYB4lutqEBmEn0tUVame/iqNeuDd1fybR2y
	 0OBdeEgDnxhlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D3AE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173578955358.26377.16407901869738175088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729ee494c9c9220c5d051129533260baabf433c750e20d3b17ab39df0c88c495
Date: Thu, 02 Jan 2025 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735789553
