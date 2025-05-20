Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42F44253F1B
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747775994; cv=none; b=dK2UufWsB0ur545DZSCKiD1rt3xWfizQ1FS6EWParGHKi7dqn07RmE9LGGD3JQj5yfnUhDPLVBlZhQEzlkeQUFajQ+cI8JE5lkbCSZJ+tpVq2IWKhjTf5R1Jlw6ZGalE+MWG/UMDbQ0lOQY6L3R5oVuqau+ewGEYGjRG2pZoEHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747775994; c=relaxed/simple;
	bh=Fheu6JECRj5fuA53Z4ga2bFoV6LTdIOPurqH4X70ESo=;
	h=To:Subject:From:Message-Id:Date; b=fpWf21eD8ppNwibs/UF/ac64IkaoXQjwEWDAQEs96pQUZ6SSNCfkW77S9UfJRlN9vJmvNrubQm50AP3ZwX0ucrUh8titoOXrP3kOV8VkgzNY8rj4hX9jEh2zIIyRN8JEZ2a/Vb15ZRd+Nk8iJ3F20tgBVSi6MYq22Tc5BkMhywg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DLr1OZCs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DLr1OZCs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D403C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747775993;
	bh=Fheu6JECRj5fuA53Z4ga2bFoV6LTdIOPurqH4X70ESo=;
	h=To:Subject:From:Date:From;
	b=DLr1OZCs/Tm8dFRFJ3CoxOKkjgNGXk8TYmC04KSobsvhmdZgqoqV0iOz1iML6pIzX
	 CpSWzOXshm/kg6UBrBChX0MxmnhY2Tsugy3DeJoQ0DC3LTpSIc1GFep4XRe+mO7qkt
	 Ao4fyEtZUT13KSTuLhEe7OxfMTU/QpcUdaBi9+G88zQSuBeGphT5j6kvhQoU/YCTf5
	 OgpKM5Ed5Q6Pen7JcXHzT9/xDbXkeLbh+YkBSiGS9nwbTPqa+VnQNia1FhJGSCzStW
	 r5qMvtDYPy8gqM7M4D1fDJgpl8GNj216dhsQh+2onxQ/JWWbb3ABScCrqbYa9LwASa
	 Q8brIPjCMxC7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E85AC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174777599357.14398.8596718617314047368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3417b139d308cf22634427f530733e30e10e62a2ad96b5ae8e94bf0244b992f0
Date: Tue, 20 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747775993
