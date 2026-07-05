Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C8237DAA9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783264114; cv=none; b=rVDULYCLXzuA9q65b6EvpUW6zFD6PLbb1KTjto19N3erPE7vNzcn5Uz85eHy67n2ABhhGghf6FZgjgHTqeRaqkHBv/xEJtKrILBSrdax+pFCHvtYaJj7tXwTaURGl0Kg0bnqJK5Pj8ymXQkvp3J7zHtUDl3gYVzixB8DEdwp6BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783264114; c=relaxed/simple;
	bh=hcH2SErGXFSbDMRDHCuBact906Q6j2DGmRVYiXcb++U=;
	h=To:Subject:From:Message-Id:Date; b=Xp0x3eUiEhERMfB9Kpoi1jfl450ThvFboZs76ZvqzUuW3dYwHHqeDNrU+Ti1OMMte7pfn7lfgsfihtlvvKFYDjUz0mRkUIXqkf+jB0vVFrLPdhNxmHodpBNSDKCc5VQSG9im476bzthdSV53u2Ae2k6Dsaxmuv+YsqnpFWtGZpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDvGY/t4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDvGY/t4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D676BC2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783264113;
	bh=hcH2SErGXFSbDMRDHCuBact906Q6j2DGmRVYiXcb++U=;
	h=To:Subject:From:Date:From;
	b=HDvGY/t4iLZ1nbVN0a3sPYtvs3S5Wny+9nM6sB6Pdl5mpgD36+SS4IwppXSqhfo22
	 czwuP0jqMofjCo+RWD80R0S6a6qqQ2GHK8vtLcqbspbjDezUHckgmfWfLTY9OwgkmG
	 vaXv3ElWRFczodQf9iXjij/RRwMSs8JyC4a31cauaB6plsEcAXMyyfKUUtfotR2P1r
	 NbpRHzCGGuuIKvXR+GYYCNKD9DEpSY5HggL8XQ5r340XouGLmSG0JZA0XF2oUvK4ng
	 xipGlwfwBWIbmCyjJwqrBcdAuDgCa3iyfmKvUpf/OVlKSwIVAvxrUZsRPYfizLB/bu
	 sfHt693af7KnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC77BC43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178326411368.28870.6284350647005033913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3eafda6a881e7c091cd97b2219f63763a29c165773abd4d1842ab1fd5bc5e42
Date: Sun, 05 Jul 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783264113
