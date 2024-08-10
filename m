Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E0628DCB
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723328754; cv=none; b=FJJX1BOPdovFleqEiQN/kVaKSR3TRN8nCEwVRD83vaeFtQpb/i9op5AFw3eaO6MjJfy9ThWTs2tqxa0VMEYkgzlOlFS3xApepCJOFiWrEYWqmhaSc59i3/HuEqDLDYtZivly9JdaAWofN/KYMKVc0AGNqNjcc7V4NJTsPbcbdwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723328754; c=relaxed/simple;
	bh=oqzi81V0UH2ReY5IQIb6ZrexE1cZxouMXDER7M4/Hao=;
	h=To:Subject:From:Message-Id:Date; b=hbIiLvw/GuQ0Fk/AlK/I3VIFXdx9rfNXrM4m1XDRJqDJFW3Wma39ZYuJEPy0j0B8pnSEH28ZhI2qBXEpL9E2NxJEh2zVLVKlpFK0w4FjWMY1yWxAGdwZ0m8PehDBb0na/6GIfe617CYP1dIIcAa5ph7S24RSQMTilvrNLrGn1jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdJT2nSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdJT2nSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D0EC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723328753;
	bh=oqzi81V0UH2ReY5IQIb6ZrexE1cZxouMXDER7M4/Hao=;
	h=To:Subject:From:Date:From;
	b=EdJT2nSgU8sqLNZWfgjSD953HPd1gk0VnTwY+2hfRjCTB+XIy1qLanMacAtfEMRCB
	 1pAW8W6fdUpYZXIBoq4im3jPUADx8x9+stU7lz+f2pehh26BaUqOutlfUBq2LmA9DA
	 rUPQOKwNxI7JGWJjOMdK5ugcJJPM4duimmRpxZQrcmkbINqjTexD+P3ZbIYlwyaKsC
	 moKAN+ZXT483/WYrIbJAP/uZc0SYcHtQWmRl4k8LdY9CMSLUZn3QkaEiYqoUTNiIdF
	 G+0u8vjzRZFq3Oog6yC+xAZLPSXm/j8u04YDBhhjHk274ZtOmv8C55GGEe5koJMMFi
	 sLgXRYVeVdaOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6E8C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172332875361.13518.14349179974260236169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95a19170e73e59e48cf2e347da563ef5b1108902202c0b1c4c02791d7d0169b
Date: Sat, 10 Aug 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723328753
