Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B0A13A3F7
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763859114; cv=none; b=n1NC3qj1xibjKxPjW9DxKSEcXS/BecfSr2VR6IvjbTXWh/9TtrOmeWQVsR5wUaRobcMPoHXgTClLyyVWOfQIfWMH7qFG7xn2cMdznT0lmFEc2+tlRcjBj6sdi8GnRjeuENzePLLqylLkKnk1BukAlrSoKu6+38O+zrs3WeWC+98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763859114; c=relaxed/simple;
	bh=k05pAtdtP6Sy17ANDuqtSCFfygj7LDAYJeIJM2WULh4=;
	h=To:Subject:From:Message-Id:Date; b=OV9O+0rQCdsqV2Z6QcnaITJup+RdPV1RaXemOtVxNyfjPp6ljaCJeaRy05OXwi9L/nZtIX61qNrKv9zKjiVLtHFh3JpcHFvYfKLFg/zKrNV/4HqlgrYwjgfQxoA2bhwz8d54YB073KsdFdu9O0PEgf6Uvcymxm8Y8GeUW7D9vVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tI6nhadl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tI6nhadl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B090DC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763859113;
	bh=k05pAtdtP6Sy17ANDuqtSCFfygj7LDAYJeIJM2WULh4=;
	h=To:Subject:From:Date:From;
	b=tI6nhadlScysZ1/EX6QjHwroiQdAqXBqdA4HvmPyZoGCCOsrHzW1TEowUAwgSmiEq
	 gIlmiKqqHc20W3jkVhRHaqOS344gpsULpR/cv+GaoY6RhppC0ZjJoKjWHFv6QvYL2L
	 Mwk1/tMAwSbsrkyPEYE2OuSmpwq0V6Qpp+eLK8zLMChmOWoVvlwc6d4ekydceHu187
	 K0icLnAn9dJJgPKHKP7ZAIuJyA4YCyC+fur0iW+aMmDmGvOSQR2UOE0c6Z7FFdpAmO
	 Jsc+F19h/1ieGqhbwpJ0H3mtsphJViuyKePgbGrofvtQBH14t3a+UyeoZc57dUWhXC
	 hJH/5G+1IalaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C638CFD315
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 00:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176385911358.2811.14418040250365890588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cdafc163d84a236fb02bc82cfa8df1f821d3d3c16d1140fa248d63363d28494
Date: Sun, 23 Nov 2025 00:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763859113
