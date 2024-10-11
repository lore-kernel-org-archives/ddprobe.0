Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC550624
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 01:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728609353; cv=none; b=qS57vV19eyWArKKh50MRi2LtzVZelbJlxFZUzVef17PmmMrgwuro3yvTBLfkqdga49gGT54NPJwKvcL+xGET5yVyuOdgc5RYsWHPfo8T1NcLb22jXcByHm6+MVlo/aBISdZa72KlKZJObV9itdPRskIuxSpsrNcMlD2oqTfHiaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728609353; c=relaxed/simple;
	bh=E+UhEMM77yOFbJQVUw3gS1w6EDnSTwHnv+zyNVl+OvY=;
	h=To:Subject:From:Message-Id:Date; b=H8++5vectTuHCt7sTsizau25vFMnWwYdK1vx2eDR4qInubqvXoCSDTn6GVGbFnxGgjpkxRojB+3aFwXO41//EFfTRtsBkxxthbnxwd2sTkRL2t1445GLHHlSC73b8na/Sccq/ASexYRxskAefFbvwk5fEYoHcGrh6CZ4tHCPsOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gfa/z4SM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gfa/z4SM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D11C4CEC5
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 01:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728609353;
	bh=E+UhEMM77yOFbJQVUw3gS1w6EDnSTwHnv+zyNVl+OvY=;
	h=To:Subject:From:Date:From;
	b=Gfa/z4SMQakI3nvle12buOWIV5VjylGUQi0Qg8vmfJsDWOtvxhN6JJazEtykPMbrW
	 PLTesGIYs3iTi230RquHRr2mDNj5YTYvWjRXQayRhejiuUJl2XVW2f6fPLm24EQE7P
	 vvJWMWGUbHdp9H71foSKcJ8Yp1o2govuIKds/SCvmciLtQgFZ/epR5DLraAnL2ugvy
	 OrJ3dq7ryZYG5FMbfDGhcGs+FLH0z3a7qpmdAEpGuGMqY4G0ZQ0U7fhXZOqEWGD6Us
	 Us79UfTjTH5VLXuG3lwD0khNaXmZ5u8VLQI6PjCr5g9jbxhG4DYbHl1am49XyME67y
	 MABxNCaeMtlzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1690D24462
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 01:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172860935364.2628.3526707160666845241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b500299464c086f384bcf5d0b59268fa25e5836448f221376e4c5463cd573b9d
Date: Fri, 11 Oct 2024 01:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728609353
