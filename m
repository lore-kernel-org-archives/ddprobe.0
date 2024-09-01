Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4065526AF6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725160554; cv=none; b=d5fqC+cPQDoA9Ae/f/ktr4D56nWeEBRavqmN/IyKVKznv1ei4mHLLJx29ueuIP7lLtWXMZ6AgrzVM90+9dJUB37Vh6F0V89NmzxP22705FFz/7wqcATRDM9w9rgyBgH1YWEMIlC67y6K2rDMPMql/gyv6nyEBdTTbA+0QQoY13s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725160554; c=relaxed/simple;
	bh=WiE2rNqzRcwBYCvyaxvnkVzK3BVU0/5aMyq2OhT5Omo=;
	h=To:Subject:From:Message-Id:Date; b=tapxxETimF4Li8ilx9aGyWBZG/R8UTjR0us9BbyOUc42e/1Xkdx2YFGjUgZVgkm0VIokGOSjae4rs/HOcjUlAYDwaq6avxE0qBWHgvicJxW8ZF5MJR8VkcEr93NKgrt/oirqDlfUIlSFVT9D2e54pG18yxyGcrvDwDa1JxfEbvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OWCCaU/2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OWCCaU/2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22E8C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725160553;
	bh=WiE2rNqzRcwBYCvyaxvnkVzK3BVU0/5aMyq2OhT5Omo=;
	h=To:Subject:From:Date:From;
	b=OWCCaU/2gdI3/l8j26OtHLDSybFxuja4NdH+mwOh1+UTnSzpzhLRv/TQOvkQJJbce
	 P5NzTs4vbiPxCmacX0S9rgErpkA9vF1aA3D3HC1tYzxtest4LDpk1chh0BJAO/AjJ0
	 rupzZ98GQ4c+SJodU+XUfyQplXsg1ABHfeERfI76iN4yFABEEAIW/WcBiUCNYtrCLH
	 MxDb2zgW7NIm9s9R4xsV7AX2WyU9N1BPU0/JXEcC+gOxd9tC3EdJLq8QgjQcCefdja
	 2jbdpoFuixJMBGt+QdpKqlv3qf/nwh54S2kCR+tHe39RBsyIHzJWztMeezVQvyqqT+
	 4WJadzPqGcW6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E7ACD3424
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172516055359.22176.1396413947604181302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65179cfac879e644d7b906ecc41103d3547a478bd41bd7a875af156cadc76395
Date: Sun, 01 Sep 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725160553
