Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8BED531
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767099234; cv=none; b=nt0MtQ5a7RckEv+EugqZJIOlJw87rPHuEfk2wNPNpYEgxpZ3sf5k5QmLyyvOJ59O9YooXLGTNzSJ9iB763wGtXCumvrBZkxDeFCgt5ts3AodOZzxT5+7Jw9b2qfPU1qK2es8LVPwvBfsR4AUmqHpr7AjLJPYPKIcQqK3862qXk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767099234; c=relaxed/simple;
	bh=1VQSuupsxe5059uxHQlTfuGfGdu3dr2Gpd5bPSFv4yU=;
	h=To:Subject:From:Message-Id:Date; b=m9iGeI52BQgHbMuZpn2wTLlz7Z+1Oo6iLnQMazcjAKte0GxInHO9bLB3ZwJBdsmgsvZamOSze28zcLO3AezaPjhsGn5gHGYy0DiKPwt2nCEjWqLjyMpB6AgoplFpWw8RY12Nng8V0ipMpJ/MSGhuBvxiqJ6wjtx1jASiSdJ4lgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXs9C5+a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXs9C5+a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03AEC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767099233;
	bh=1VQSuupsxe5059uxHQlTfuGfGdu3dr2Gpd5bPSFv4yU=;
	h=To:Subject:From:Date:From;
	b=KXs9C5+akHcqD4sJ6a3JbOTVtEB8j4IxRWo310wWtk27e86K5PGUHlzySP4RbHhjP
	 y/N76bRLtgS2aDjtq+Dz39bUWNGXJpPeb/6CTk1hSKTOYPzisXb/Ul/iSBewPZbm+I
	 SkFfgadNWrdDFBebRlDk0rQJd3dUsHe5vPgy96CgqMkG+dyVyuvqmT2ZhSMmHIK8md
	 eMDsfmA0FkGHdhDB3ofijWx76agv1k2oovjs4L8+if6vCGY6Kt3xykJopuouCG6ZRd
	 VByWeMpfMRuUMvEOp/UBFlIf8g7UKcMrgmGLVwT5cHGRn7OQeOq+P3tDZB8vVWp6Bi
	 ligY/bAG6PiOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F270E95A8C
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 12:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709923357.8827.10195452418563049915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f27643e14af35ec8ef7187f94bfedaa15316a7069cc4959ef0fc1409de262a2
Date: Tue, 30 Dec 2025 12:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767099233
