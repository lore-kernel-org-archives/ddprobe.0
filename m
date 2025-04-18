Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449B71519A2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744940394; cv=none; b=UJwh/+xRBkaPhT/nCk6hqqY1vefDz1D2PyBEVRHi+QkV9BytfsDarb2vV0u1yOnN7nbmCrBwJZFpf7RLHprt/MFH0WRQXN5PzYKejiHcLk2O99faOv0xhRh5+Bsk6bl2R9Inyc9tzj6h9mZ9jdF0b4ML8/0JwOD/zInRvNwi+uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744940394; c=relaxed/simple;
	bh=uMssEwwknhRUDGm5fRuHS9w2yaPxmGklOX9uofV3D1E=;
	h=To:Subject:From:Message-Id:Date; b=m8GkXqe0yzyuZkQlwNoeMCCNBmUBBAlA44zFnRwX28rh48JUuFCvSq2jCu4xlj+Ec4FDYA7nmlOKKNPn0bAFq6n7AU7K4AwgOE2VCHThy5SovIm9QnQzYNsIJEKh1sacXaJ9cmGgpW4TWGwQbH8vcFZF0wGR/4QEvLjaKFlOJmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukFzGs7v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukFzGs7v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B331FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744940393;
	bh=uMssEwwknhRUDGm5fRuHS9w2yaPxmGklOX9uofV3D1E=;
	h=To:Subject:From:Date:From;
	b=ukFzGs7vNC/waJCwwFeswSs5g64iY+EBSTocf0CB6eZbphHQrtUFWWw8Qm1l08D36
	 bZ3BkT51rixifRrM4wUAjyGahhLTX1isUIe4iSh2se3hz5PMBCMJI783RhlWi2L01h
	 QwSfwgRYs+WF0zx6wWdyV5ATln6AqQXuT9zwKl3OXSWd8jjp2OGfvAVQGKKjp8EXib
	 J9azdFscbWBQlOz/LVzQ/1s9rkJdtzh393oDmakkNxvi68/EVxqmYaQYCQ9Kc2ew2A
	 Qtyg+9fUx3DP4NPgWg42b4MweP68iPa5K1tartbmAEp93DRZ6u7bE88/0lgEj2WzlR
	 sQMNdYv3tNoZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DB39C369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174494039363.4083.9083897631821509191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5fda87814414f9b4ab7d70368fb5b03e0b605d0d5fe5288105417434f38c020
Date: Fri, 18 Apr 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744940393
