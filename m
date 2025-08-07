Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFFB20468E
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754589594; cv=none; b=YxYWPBIH0bgIzsxmHkgpPoNijIjCumciXIuaMVYK2Icqkl9hVcAVvZlwkix+G73XuRwt0/uxc8abz+9xUNd5/tVaPN7XC72QxUfkDQl3HUmRheCa5hcPv0UUVWNlZqjZbzejOE3anrx/2k2AkolG2FGEgANLrEcmnvDp28IJU+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754589594; c=relaxed/simple;
	bh=DVsexMEwyIpRb67CLs8A0KqDYPBPRFwMqvhjdgbfk5s=;
	h=To:Subject:From:Message-Id:Date; b=aVV7oyMMNUZXSX6/7FL+7KqfAHbjqIZgksSUUeWQMpCdS+Jcx4+v18PteYonvbZIWeyKKIfsRRnNkb4gHCfvmVCCosQZv2H/K3AZztRyIdprOr+TvKujQZMFS5pHCelaVAkbqaWR92I0jyBUczvjnIbuQSDz479mTKnGCTui6lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2uRHc+I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2uRHc+I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2710C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754589593;
	bh=DVsexMEwyIpRb67CLs8A0KqDYPBPRFwMqvhjdgbfk5s=;
	h=To:Subject:From:Date:From;
	b=p2uRHc+IOa0Ja3FOAe7kcTUKrBvJLURg+HeEPz7j++Pt6Y9W16hIMvV8i68eE0CPR
	 ciPWqPPshH6kst3WO3YiVY+M4fzGJPENesPw+kK9WBGCCO55dDFJCW2P92sseD3RUx
	 4F0inNdlKeODbbo38iIkTaE/OAvfF3FU3HqPE9V+W6YvfKhxobATpMdGfR/+Z/i/X7
	 sP+Z7q4lxSik+BzoDVYVMnLSRaUW10ziDZwEvs/zdDHm+2XBRW8w1QlrxtQ9tFNvc6
	 aHtV5l41v+/hvg2BUWYo0aqyJtyiUsBKecE4VL3mKZ+lIygDOP2j7oiArSD8OlVU7t
	 ME/kI1xAwxQFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92089C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458959358.16727.5581123201545866067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06ee918a75f7e03a46cee53de0d93591599979ed6116ec9e5b17da45c0bc5613
Date: Thu, 07 Aug 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754589593
