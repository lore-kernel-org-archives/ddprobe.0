Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832A9B647
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 10:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716720863; cv=none; b=Qj5DpANc8K/19g0jWrhyQOVLpf8Emm3pU/2cJVoLcm3lsX6HV60DiPKyqLFe+ESjt8m7nr0dR4a1GFLWH39V/XX502a7E0OqQCzdg48aA5SFEHsDymjADY+ufZyKbkLVetYT2Xc2P+t4RPEfoZAPbVVzI0kCyk0q2nlJyJUIl+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716720863; c=relaxed/simple;
	bh=+eMNrOgb4zCHePdsQAm82BpowRBut9vXgtMkwMYkAwA=;
	h=To:Subject:From:Message-Id:Date; b=tMAHFoDiNV07yq/e5N8XM5EK6+ipR+5Lw7wdI3w0vzOiZ5yT6W+pNWvXJwcgq4l+WZyfhl4tZBR412jlfz0EI/MTLdjsBNFueKRbgWuXBkrIOq7tc1w7ML9zUlA9X1DU0j0QeS0Sx/K9xThNA8XJaEa42MqqAxOFoaqXj/gSkVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XJezAABw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XJezAABw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 035C3C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716720863;
	bh=+eMNrOgb4zCHePdsQAm82BpowRBut9vXgtMkwMYkAwA=;
	h=To:Subject:From:Date:From;
	b=XJezAABwdiiCCdc+rGDdINsP24lCerhMHmjp2bpBUgvWDNf7AYFxxyKlAujbNm+AK
	 zC5Ix+zao18jK90bIZjCvpXSQNfC+dTAr46TRVCOJu6blwHQwxvhpUvz+JK2qpWS1W
	 n9jOItAbJ6eoxQqE5ql4AqLjrlBPE1ihcZk17R3Zj4/6MoowchiFLAGJX7RCnR0pvr
	 FzmDHjhP34arvR4GFp3LmMWtBKkxs25Xrt9/HTLPgqNAIUxEnl0i/HtbOARfE7Emr/
	 ztqfd7HIJZoEhQG9aquGM/r9V3LbjKEjm5kdvTXMDLUSm6MU+RWCdbIGwvAT2WcKrV
	 0DNSJwn4iF+uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E0AC25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 10:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171672086276.5180.16880690667862082724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b692a30d19498171eb9c314e6309c9d3e761a4be247181d6e9a08763334d85ca
Date: Sun, 26 May 2024 10:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716720862
