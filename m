Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E4A1531C5
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742981395; cv=none; b=Wpr5gMekTi+skkuDxoNibInYsDISBDj23LOBLvgXaUoXrFJL/QW1Q/26MhCJQ9OPJoFl12wpxTRBOu7FF2I9m4GjnXRt5C/omXBoqe42RtWjb3El1SLm6VuJK8sjSWMBqNZ/SihDQgtJRD8XnMpRrK6BlYjo956lPGPl7ZIn+UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742981395; c=relaxed/simple;
	bh=Xo3wELKOynbUSUAQNPe+w4D8NPUy25iWDxUDxXbCwbM=;
	h=To:Subject:From:Message-Id:Date; b=O0kdT1q2Ps+ylUBvcoCICpjgSCUcj2B0rYmBg8zQ44jvdVzndSX7chX6V57gYgB6omFX/Zn+G1OrITQeYDPr9y178HxHbnnHpNKVAF6/9uCJku1gqo2B+8pVCX/+y8aC9raVSW8GXphJom0K7xncU/Bd4mQwp6DXmCLzf255Eg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVBSoGMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVBSoGMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4BEC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742981393;
	bh=Xo3wELKOynbUSUAQNPe+w4D8NPUy25iWDxUDxXbCwbM=;
	h=To:Subject:From:Date:From;
	b=HVBSoGMj09uVXsq8IX8jKwZb2VQCIEABAKsEnzwHOka37aksrxT/+niHIcsmLgCVY
	 vhYLAgqqBv4EOKDO3nif0xXhmGEE2UUpCkR9ZIjcDVwZvaV/d7/S02Zpd2jngjy8sc
	 u3iFq7Sdz6s5pQtSm5VnmCobFNSBpe0q7SSFAePREjlzB03g7wIbIO1kb+EGT7olmd
	 SRHXltrumY2FvtnD7K1zYhFjG3OdfvkP+g/RimdqoXOHnlb0NBxBnZogZU/XKgS04m
	 W8juVG+Z7C6VMJLo9EaAltY9Di8KtwL7BXDmaRtDAqvjwGakSBTu/E2JVISmrf3iPR
	 3reUr1YvcQJ+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5083C3600C
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298139365.10695.15812486407608531815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 183f48426d883c8152b545e9eb0de0d6704eb41e650522e11f09f2d02bb84d7d
Date: Wed, 26 Mar 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742981393
