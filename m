Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600E535F180
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782406654; cv=none; b=cE8BPXXlaMNPP1xKnAK1FYlubnj+R/BKNRj34qO07bAfjasEJOPfRNn7dLMSX5jEHsQvMtX8Dfob986L6P6ro8AOnepNfS7B8NBd7c+61PXU8UIq7VjINKZWqB0jZOnhdfaBxllHIb3HI0cfxuCxPKFtqnzdn7Z2G+l0H2M+WQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782406654; c=relaxed/simple;
	bh=dMO+ETiDrPrcMgmseXaHUHSf4WP8LZboOap5T1hM7zE=;
	h=To:Subject:From:Message-Id:Date; b=PAFWfkPytXj8KP6luXisS7o2lunu22X+2xjZ9pqCLpISS3YeIbQHSR2kaDZUat0kKo/GR4ru25zOuW1+Bl0ez6uyfvCOi3z6KlK3f+QahWZ7DOJxuWfJMfiZSMOmr3USvmh8JQfQCZI1mIEpEeZ16Xq4Papk35mSdPJwjSTeuMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPgDxJ6x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPgDxJ6x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC26C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782406653;
	bh=dMO+ETiDrPrcMgmseXaHUHSf4WP8LZboOap5T1hM7zE=;
	h=To:Subject:From:Date:From;
	b=kPgDxJ6xydFe+fL9DOYWJbxrA17SRj1LUZ9a1VrLlCR+jE0PokQ0ii0/SdJcZeHBX
	 21OkDRpTf5p1/JDuKZwSVovoBZ4J4Ye15ZBsmuTMdlS3jCw8dUIgJYEgJNMn5yuZYO
	 e+o6cP7kiInp5ZZPCvjERr9NuAyTuDR1iCTlardvJd0gHJmh+RJbgEKAYLDBU+6vk9
	 mRYVFxw+Vdh5M4augwK7guptXV0ca5+gt5BnlOTrzNfRhQn7JLcwhEiaVq1Ieu8Y+M
	 D1K9J9rCrrjLD4G6ArmTpMjXiiWEenk7qSeE3Wrgm9pJHu9XyIqPQ8nNvtz1JyQNAz
	 axO5fnuCFqyIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B456CCDE000
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 16:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178240665372.23451.14386150033222881681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b0eee76283e84426b4518a9d64686d0a79c7c8e89ddcafc5e177275a4fe53ad
Date: Thu, 25 Jun 2026 16:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782406653
