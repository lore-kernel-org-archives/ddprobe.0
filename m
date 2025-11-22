Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F0736D4EA
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763805714; cv=none; b=HhfFBj7fAmGW/gEpx6EqiOxUIRJTpUp7pJGfz2vZlNqbMFu9JxHTC8CatUbjEsWCblzEShWvI5D3EX8M2IfpL/x+n7qrJkRmLBsKcLnLFgF40TvgSunQMbZAyytO+8yVUCmA3sXx/hIlpfHANLKgiIo1Ep1YTYRGHCeIFWaDirM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763805714; c=relaxed/simple;
	bh=vZ7vsARXDILE/ySkzu4+c3XURW2u7uoGvD3K26RHO4c=;
	h=To:Subject:From:Message-Id:Date; b=Yb3a8eoCx9DA/BefSw0JcJ7VD2/0jooYBYh3pfsWljeCRJJZq/rMs+QVHIgWugVL7ezjPJTahDfP3qDpn2m5mm2EAu6/gFD1cs36ygvng4YRoOjmcmyT6HWVVQEHWAm4lzr8+4xIDPuGr40ODDkP2+PPEhiTNmXjjvJWEawszMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t5yMzA8x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t5yMzA8x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A648CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763805713;
	bh=vZ7vsARXDILE/ySkzu4+c3XURW2u7uoGvD3K26RHO4c=;
	h=To:Subject:From:Date:From;
	b=t5yMzA8xhQlP3lFMR+m9zeku4vCe57ySzIn216JVxLLQcUObm2CU/WSJ37nB6ShOp
	 tyfGf+uwOj5QETV51CiJc2P4o8zkM4jBKVvIFzruprPFEiZ1Z5sVuIFHU9hLuQpb3P
	 i7s/4XCkjnMTCetTYFQTZVFSNInFlr5fAToVFb72FyuxsMdlwRq/Mqh6R2lE56727b
	 tS+Eb5zqZ2lO4pn5UyvQTPmUz0MyLPguueYuGLMvpmeOI0ThEu3SQuRkt2t/PSzslZ
	 305RqEam4+9vmtDGXXabkFClz/W0ganX82sEqrSWyaBOKc5HIDTFS8JGPXuXRoLbqT
	 RBLWqQaXKTC3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B2CFC51E
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 10:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380571358.32041.2960339244650163209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c1548a18e1129bf15c1fc76eea27d396c9be95830cc98c5c9945b009e16e6fa
Date: Sat, 22 Nov 2025 10:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763805713
