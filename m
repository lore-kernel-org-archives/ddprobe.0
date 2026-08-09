Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46BC54B04BD
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786251034; cv=none; b=c214kg7m3IKVvZfcH/G7lPsGSrmN0IjOXPYthrbMqaQi6iSGspEdBQno6XRe9TBSsCiUtOsusM3IuoTg9QnFhh4vw3WhS5wKqkC8TFDP8YX19C6X0bLKsBND5dWp5WinaG7Iw7j6SeIuCsjDGefgXAAMBTauuTMH+b2EqfZpIpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786251034; c=relaxed/simple;
	bh=L+1LTOPswILdoJnFT8RmPodDJgrENVlJ4wDQI3zlhXk=;
	h=To:Subject:From:Message-Id:Date; b=hvy7ybWLQguuA1cX2qzYjzrkbNSi0w1vQSjUElznTejmYf/WPqPDMNBO05j84+ynGnX/8R3DR/DQzPEJSb60IRp95G6QO1It1aCetX/2DY/n/9THhRMYEqwVmUuw8YiJlBsjX5bFRbwqLPuFwrEvZGFoB3KGdtF+P4hw2WtE5zQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/yG2WhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/yG2WhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7DD5C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786251033;
	bh=L+1LTOPswILdoJnFT8RmPodDJgrENVlJ4wDQI3zlhXk=;
	h=To:Subject:From:Date:From;
	b=g/yG2WhYIwSq9+IvKKEzjqkvEGDrCaag8n6jYPTIeAtEkvvPU3FT4mvcAsCLmurqK
	 VjPQSMACEQJGkm7EebNunpiLb+5b4xNYFWHDnLD5R5q2Isf0KTgHzeRUkhHk5zTEYh
	 /JUQ46Z52vB5f96lSufskNa5o3JE5m6HcFkVfGM/j9hW3r0j2gNNA6iDYIwY7SVqw4
	 DUZ7rG5rmMZN/ib/BPjMRLsXsXQCqnUDUZ+EFK1yzWTORm/65IHbR3XsNlOztiDPrt
	 TR6U6dKWL7tisPEiQjqeEUseBnseQUcXxHBY2oZ1pl9E0klTDutHp7EL9O8GBCacgt
	 DlH8XoVoS6BFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0601C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625103368.30764.10999058030586676305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e34028a75b68088b07e5c2109c9ff9559badff82efef1f2ee0afbc5c0a15cae
Date: Sun, 09 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786251033
