Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F1201F16B
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773019494; cv=none; b=OZpgI6w02u6S5yJXZks3uopIP/xbhT9oQ+spplS7YLNa07UtvSBdem/yWLkYskxPXyd5RmvN3aHSVljjvpSpEHBLMXSgobk8ClHBaZuVCk41JmfFCEbZYNURrS1OOG2IjnETA+fKNevLY2R4yr4mEOc+hG/4lru2sZCNR/XTigE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773019494; c=relaxed/simple;
	bh=DwQkzBUP43KVoO2C5wUW6hEjRrI4nvRj/1N/9aMNPfE=;
	h=To:Subject:From:Message-Id:Date; b=F+z9GsOFhY6dcGs5FTS6dnOEqYVmdMzbhzKDOk+eu7zRjaz1jY+artKWv/youTCg/ptIPfhsjZ44fnf4Hzk9a4CocokNdsq5kW3JSYg4jz4vn0PaE8k0ZPxGTKroozSl9awWw7iLeljFytNq2foXR3EIufqMxQs8jV1Azup1aWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NhC4I7YF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NhC4I7YF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2ACC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773019493;
	bh=DwQkzBUP43KVoO2C5wUW6hEjRrI4nvRj/1N/9aMNPfE=;
	h=To:Subject:From:Date:From;
	b=NhC4I7YFSM53BpNkLVMzrCees111Pj13GDYZJgd1/ayGTsaffCfZz2b8iCAOXe1P+
	 gRgJIX3w5AfawfHbgxGxMpAB1GNI8iocq9lJA/8lLIr2+hAZBGqh3tO8iRNsbjkV5u
	 YMTDfFBmzge7QrcBI04u+dkPSV4TAsldCzmaYyRo7K/MMsis/KjWXTvq1fenRILlzf
	 C5dr6pd915Z41f54yTewFXujrS2/ZPyI+T2n3JZYU9i6Edk2ADXRUu0iDDLh2VdFBk
	 Yt0MyXR0pDTHBn8RimuCn2udozQbOc3QbVzWaQXw6AVU6WwS2hVVmNenyV1/6rxK6z
	 EcC6kVp907/1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D34EA852F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301949358.28629.11988216900346714220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c8231fb768443658a870ce4f24fca0fce823ff09c861fa83c4cf182fa74700
Date: Mon, 09 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773019493
