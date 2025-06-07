Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10EB98634A
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749277194; cv=none; b=lNlQXcz5LSRGuHBYke22SczqVgzJ+PV7Pia7OQpiW8MzGg54YkFzfZ2i9QEt1qgR5LB8SGVwV8h9sYeK/44iHfpBSjsGDmsdVaeBIzEzE8tU2GsKMh21pHjg+FU4oMCMFWuhdrVECUo9iSuB2cihW9bMRaTYGtJtwCFqoTWbN74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749277194; c=relaxed/simple;
	bh=7wzF6GzUGS8kdpVopA+BPgRwyAv2EhOlMrljK5AAjQk=;
	h=To:Subject:From:Message-Id:Date; b=gpnGxNtRXONL+gBz7C2ilg4zNT0Z+bvDFXs18GLCe3abk5PTyOxeQ+6rdfI1CxbAo/zntnjh+83P5e0iZT8xLZnCykC3ZHvfjnZ7uTna2EkR6jLyvlDj2ydSbjNkBxFN67VK6TqCJ6seIor9hgxfPYRpXwaopyKRGA0MK5DIjiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFnzXAiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFnzXAiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C25C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749277193;
	bh=7wzF6GzUGS8kdpVopA+BPgRwyAv2EhOlMrljK5AAjQk=;
	h=To:Subject:From:Date:From;
	b=BFnzXAiNChvok9xeLceOYv+/Vnq/GG4kmFpPzjvpfpKh1Liv5hGVmfLjK5oQlsDJe
	 0pMeKz/Mr7Fz3wJw6uO2YHNyrr9UHl4cIyzsZjiZNyHvTGsHxGiFFyfOLvidnVZbLK
	 vw9NrsxwF2ICqSPp3VdpttJ6bLmjWCxZykTpFeC540EEJ6dF3qP5lkyMJ0rTjU06Lg
	 vP5D83gpUcTh5oF5w37fiBPIIR6tJZ86n6A7vVV9GY+zTOvEGqFd++l1CEKjTpGA8U
	 yUrxHVTHYr2XQtx7V1P0Iygq6MQPt+Es0xfgMYCB3K57wB3fevzNxMLyKbCPXZsUgV
	 lB341Ai3W177A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BD0C5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174927719357.31208.14989604269507372676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5b198e31e37240bc76a6a21eb896aa3d41fc5dda126ff9332c740a0c7d26ed1
Date: Sat, 07 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749277193
