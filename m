Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5043A1CD
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718912423; cv=none; b=Fl9eq3e4t0CB4LOrKIeY5T+M1CAAWA7QCFm5kWvWIWEKC2zPMWTOMTgtgsGH1NEfGTnWh3O8HkuN4p6ovKOTysdjbqkNwhSFWXfFtmAixhNPWx+rkKIov/Cf3ZGPrJ6QCuKPlecPdhjNz/oDHl3gfkIdwj9Zoaav4lTNl8i9vqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718912423; c=relaxed/simple;
	bh=aEBKrHML990zQ7rMqx3ZyuzL4+3f+ZwaEXPdt+Sz99E=;
	h=To:Subject:From:Message-Id:Date; b=vEpAp1OA8IP6TVCDeU0ohi5sUfLSF5l3hDt5xsv9sUyUPKpLjmvpo1Xk2vy8Q7CSJfWAazqv5Gi5D9M7cDSOxwxvrOAApqVsZFDYRM6P+AfV3DApJn2K8FZNOKCXr2PtrcxasK7I71jmd4ZNsbpmGwRi8DmnhmWWLl1n+N4bQhE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XOqPpOxf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XOqPpOxf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45A8C4AF07
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718912422;
	bh=aEBKrHML990zQ7rMqx3ZyuzL4+3f+ZwaEXPdt+Sz99E=;
	h=To:Subject:From:Date:From;
	b=XOqPpOxfXVTzty+uQYaBAktik/2VyrAi9obj4oG+yhImi25yK6/4Vq+q7/RI+z0QG
	 O8ymPK7XumDWJZg5f4b55Enrk8IoQj2KJ71TS8D9L0tiYTHVTNJUnqg6Hocp1BMpYR
	 AX+mIzR0bIgRGApQnr6x4EGuO+gMfxhTLctS+wp8EExrUjRiOaBO0o2WfVN75jU1rI
	 Kuab+wKhSH+487bDGGNls7p2cFlVHyp+r+xf7Xl+Ze11xx2mW4yu1ZMBexueq0qSwX
	 9tT++a9dKRrCLNBeguF22IGmfEo3eL9vg+aFiFEpZbinpNNlquqNdjVwZdZdRUf89B
	 Y2VJHo579sckg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE97EC27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 19:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171891242276.16794.3247983865343517311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01b015aa310cc668a824dbe04be62a285a46e574c7e0b3a22dd7e2a0debfc17f
Date: Thu, 20 Jun 2024 19:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718912422
