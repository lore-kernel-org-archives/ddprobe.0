Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8673E48F828
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790587834; cv=none; b=Yls/T7h0Yx9xua91Kb6tZ/UgzaoU4qOXZ5RzrJ5JW2ycp0fNTrfhQnMg0d2vA0NDPNCen/9QUvOxhmwhIB2PP6GJXt2fIHkr6eUz9xDUlKMCKQjy1h9VkS06xeBjsJM6Bk8TGL98oj9Lh52zn3BdpJCA3oJWHqTI7IEi7K37MUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790587834; c=relaxed/simple;
	bh=LPmC65AC4hjEmIM6nVzeVZJPJAXe0evW2Cw5T5IUHWk=;
	h=To:Subject:From:Message-Id:Date; b=VNDXpHCYNL7Oz6H8bFopY1I8hoM2HTTn9tQWezgb5OQIT5QIcIykixBUaI03krxlQBCftvT99Dmah4G/XpnGi4qazOfacPqAmLFWGasBy1JjMNak9NEX4jAsCE/Fj00zUSi4t3H1aLLABAQP9nMRguyoA/xLgEHZdZjcI+kkatM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I992/pCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I992/pCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DCAC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790587833;
	bh=LPmC65AC4hjEmIM6nVzeVZJPJAXe0evW2Cw5T5IUHWk=;
	h=To:Subject:From:Date:From;
	b=I992/pCv9ay4Sy3xejjEMtJaX+XRjTblOtcNgIkTRh2/C7E5VCpv57ttGUsB/fkeC
	 ayPVgH7oahgWENFgHt521vNVA710SEMGT4vRpuibe4RawSawbW6l1Xlf9MC8vjJlhZ
	 ++bvms7EuhlX+yIS/JDlsUkdWpMXbq2XkoG0jLM7Xx5PE09M34LIamTUzQ0e4U4o/e
	 EIlLGnYT9DgmFWxTUjk2TPoLM0KSy3PezzYNQ6okk/yFUc59kWS8HZfSEZooraynFQ
	 M9hX+FpivK3NHj4xKZ8OirZZbMOccE07EnvghpGEtFHifDUqKe4u/6k8+DUm0kBe6u
	 osvpYDhe39Ong==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF68DC9833E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179058783370.11233.11625837596854256957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3258836b96dc79ec55f3404d044ee9f2451f4e4a579e24c00e8b296f2111bc77
Date: Mon, 28 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790587833
