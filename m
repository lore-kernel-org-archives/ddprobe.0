Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548F0E54B
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784251114; cv=none; b=Vj8bz5i/GeS+TYNMPNaJD90hjqKadL1okvTaaUYVY9Bt5K0Sto1vZ1RiKiniSaCU5JcEsL3DRfzcQiOOqpEKRO/IW3Abz83XbaR9WHECSzDIr3aWlQMpcFEBI4T4yJnN1yea/b8jY7WB2/25y60KRdMUrZgkn+2dAZCdVp7RNGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784251114; c=relaxed/simple;
	bh=pTGz79Ax42Pz4eyvBusbPfi+ODxsbq7gXEAJ48HjtAs=;
	h=To:Subject:From:Message-Id:Date; b=W9YpeNL5xnqOhCL7EfzhKVojHyWJlJ+bb71fyuBcDFhlW8xBRjgok9u6namvRQPL3c/ZwXgOy5a5liSqkZ/OwrSYG0ANw6kzgNEVsv9G0itOdH1bqeW06DxPfZqg8NE8vM4qtpcOQxFqnmP9eG18Uorfja/J2VTRVI+MAok5Q8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAm5zyD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAm5zyD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA33AC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784251113;
	bh=pTGz79Ax42Pz4eyvBusbPfi+ODxsbq7gXEAJ48HjtAs=;
	h=To:Subject:From:Date:From;
	b=qAm5zyD0sP7eWYY3lhEoqc74Ecy81HqV/GFMeWWxqpmJm2qPNYSGz9rO8EX70GqtR
	 2qy6Qp3ZGANUfThH1nxcY70HnfeiVCt5IwNQDMyqoKVv2mdTD7UoRvNm7qQfEy/dOC
	 t9So11SRbjy/4OfwjPfczmogIBmx9axAN3ZYbaY3+JTIyMIwDsTiVJUsvcQosCgSL1
	 TYaK2uCiKFaQIFLLJxj75kcueunBuRiqJVscCbxkabv8tL29i5Q3h9ptlx5Bw+s1vE
	 9bYlaV9I3gQBBbq8LwHIjoznuQ64nAcIBvwwUvNvPgipoX9eo5LO2Ng7LAZE9OAXIc
	 bVKS+Loi/H36A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82E5C4450A
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178425111368.31892.15299740441602592679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f1e829f62a0de8e6a61005f6ffdd80396b648047db9b03eacbe245acaa84e7
Date: Fri, 17 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784251113
