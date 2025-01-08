Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0982F15853B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736360754; cv=none; b=Cn9baCK9vrr/8eoc+UK7fwepJjUUoSOSy/PbCveKYfbwWp6RntYHJ+kGYfyUpC4CytxmmpB7wwjndRa1pb+eeRuKZg2x5Ynkil/0EWKrpSi8QoDLsb/TtYABgtcnNiwsizdUswEJ1+QkEkhvUWHR2gI2oQnlFE2zemkHyBPV7nA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736360754; c=relaxed/simple;
	bh=sxzzpVFKoh13pAREr/ghvh5HP+CzrKfIaH6C0cxa2Jc=;
	h=To:Subject:From:Message-Id:Date; b=W+l8z0S5qZCMqkKye2q1fnvKzUTjq8wM4xeNuVTmMJXUK9W2KVVRUIIrAE/+Kb9TrLFHAwSYCvCRco6LItMANnJ5Noytlyqo/NthWNh4DDo83V8KtdeUkcS1KEVNBWWuZ1buNgCqDcc261nSWijGMazDtOtZitIxVysoxQsB69U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwkB8Zrp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwkB8Zrp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DADC4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736360753;
	bh=sxzzpVFKoh13pAREr/ghvh5HP+CzrKfIaH6C0cxa2Jc=;
	h=To:Subject:From:Date:From;
	b=FwkB8ZrpleYqNJ3MBThh+FVKE/wzq+G1ZiV1joEbAGrLLoo0Dw2/rY1DLhk7UhvY9
	 M15uXoEl+DsbR/13Nn0uiw5iprEcVvZVAk7aiyjBtlHg7cDAHXXb+X/fbn/6hCMCMz
	 hOTwCNRRL2IjMn/Uaoed+8Ro25ykdK4lRZbm6vzjYE5PsQlhkTaxqb0LGAnuZyaurl
	 xBFAtwP9niHatVx/UNAsKLywXTx3vw4JKjlY6qDxdn/5jP+2T3uBBiCVlj8O6ofz9F
	 nH3hd/1Sbam6FqfB9/uQOM2k4K0SCmA5JMDmEprTM24yugdeLNBfA+6TqpL0kYwySo
	 1WMWbpMcT4CnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9394DE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173636075359.15975.9650324592726414443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 234ebf92b769e0a3c199039081d064d8f459aad49b89cb5d74a779a0c17e9240
Date: Wed, 08 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736360753
