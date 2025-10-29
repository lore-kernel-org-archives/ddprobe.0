Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832453546EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761748794; cv=none; b=HzgbnVjfEfGbkLAa9b+cz5ypJaZfjiEPMHvFFVdSOtMiW6HhfytaF31+BaDVEvciDx2HRRo8nEQ96Eyp5psBVUj1hVru4g+3VCxFampiYHQfxhz+T4ceA68xCP+kfZ7SZFd0Wl2a4h/sWBwWrJxgBJOMIQ0DM3qJ5YmYJJZKINA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761748794; c=relaxed/simple;
	bh=VCbEgwML4lpZkQX77FK94Ty3rERxO6rQ8SZ5R+ExQts=;
	h=To:Subject:From:Message-Id:Date; b=eoXzbrhIGT/j3vttLOqAyvb5uAoft0dYoYcn4EdIckIMMUYXCJ1wWEOzOuiwO+fEixaB/bQH0ELCxKRqxdEqnNazYL4q1lO7GqdBTqeXetXNIWxKEjuoci7krfxtnINOah4/YftVkqEOkVBHqfIiBVYN24RJufcSvN6aliYzm+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQm0cTyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQm0cTyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6FDC2BD00
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761748793;
	bh=VCbEgwML4lpZkQX77FK94Ty3rERxO6rQ8SZ5R+ExQts=;
	h=To:Subject:From:Date:From;
	b=tQm0cTyTuVbURl5SUTxRYiFc6NP5nJKHfOMT/zwFefFMqZc+F5Az0gGVn5//uTLoV
	 hw37eU+O9WUNVpKEQPVfAUij/a7nH0nIE8xrpZBNed+X67eRBznnK9zMgmbT+RFmIC
	 Q98XxqG/vJHPrDkVrhM7DzcbdtkZjbfumJml65kb2vZlceLGg4dHu6ajiXyirGRLaM
	 Lr3SgVVwGqt8rvrXADGR4QAzp+nqv4OmvVoftlhkCiwcMfAg7CMqK/TRB/IAYF6hqY
	 d2SFGhQIAjaBGW5zTs82i6hWCKY1WbgQ6KAcALThAnVAKwHiVOZqDx057Zae0Ghg/L
	 7507yhRBbw74A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EAECCF9F0
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174879359.16651.6494926346663839407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf6c3d16888b5a9e4ca86362479c643bff2abd2a545677c0b5155e8d2501b558
Date: Wed, 29 Oct 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761748793
