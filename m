Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2267A230D14
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746802795; cv=none; b=H1PiOtkoCQDoAKc61HQj56lseOoe2z/7jTPq7s4nqTsRIPLLwCSmlrzdRyiqhmptAI1mTNVjqF0PuaPSYV6a8ONNnSQbGMxlAlSpUYNLmPLaszvNZV8BDJVwo31PyeHe4MqcG/szOmNZvPnDvmnBcw4os147PbaqO28K8ZRkwGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746802795; c=relaxed/simple;
	bh=rnuIcwBQjbBb/CpkbBIGjZL1EczBAxuRMPbBaLcZQpI=;
	h=To:Subject:From:Message-Id:Date; b=tglUMON79mOpuGvB2Ht85X9J+UGIg4dcX/AbEJbgIpyNV1BbN+JzK3/KmLJnUqi/rW897gDj0lQimHi5UHyCNskHBDev9A75xjO+uujxiy5BLtidOzA7msiIdlIyaMjS1tr8lXun3+0xt/qqj1hp/nMTEZt6O22La3pNYUuN7PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfFXJVxv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfFXJVxv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C1ECC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746802793;
	bh=rnuIcwBQjbBb/CpkbBIGjZL1EczBAxuRMPbBaLcZQpI=;
	h=To:Subject:From:Date:From;
	b=AfFXJVxvOf7hsdVcf7PK0sjgGpCcX4RuETdRJ9XWrUf9vtfI2q4Nd89trlMIhQKM6
	 HVOHAylQfOFv8qElDscQIKHzPh36JzhrhCWKH1kVPfs+Yitpd96NJAEq2aKbeTZFpJ
	 tDw/3kHrGgF/q9hEGQF4pfHZlx+z+F/gJ+bV8asBM49QkXo8h5ijoP2dRdUlX/ypm+
	 o9JET5ErEYANQbISKRK7pHpz+V35baT5Uqciw6vruYXOnjsDwILFO43zOoY8Fq8rtJ
	 HtU1FX5mOC9ymfM4JIcdocIgCqZltnFaLdLdx2H/pZVessV3OmdaL3LN06Pd0og1pm
	 wOEMW1eh3koHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEEEC3ABC3
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174680279357.5575.2076818800351818062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e52c5f7bb17ec3e0a16c7f5a61e642bb67d087f337f4aae00508455f4f619a8d
Date: Fri, 09 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746802793
