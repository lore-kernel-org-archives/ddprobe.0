Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A562E62B7
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780262074; cv=none; b=lPLj30No4N4G9fWQQkFVVFC1oSGwjX03rNEtMO3jLKavOLFyo/VK7VjRjy/+x9JuDBPNHFJbq9XRmLh4r737XOZ51c7twAKfLZpL1Bc0usHAKkVPGuP/hIHcMKKVcO/2mTZDwmlADLsm00DJBBRG/Z6u2gJe4wS/7bkBkv6NRFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780262074; c=relaxed/simple;
	bh=k64QnsRiLauW8+a4cIJWnfMrmMMHMU5GfEE8fRsQgNU=;
	h=To:Subject:From:Message-Id:Date; b=ctYOl9q3UlKl/569hGxKYg8NEt8+JuSjwD3d8gM5UX0s7oJchcvFTWm8TX4GTeWw7HJouJwm/alhMqXPS1JVq+8aOqAZ6BSQ3OOxUChb1uburtkTS8fL2QyuR+yFA4hcWKpjsgfhFmhSeh9qw+ReRwm1PxaMjoxzWqSksk6rxQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZGG6VkUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZGG6VkUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE17C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780262073;
	bh=k64QnsRiLauW8+a4cIJWnfMrmMMHMU5GfEE8fRsQgNU=;
	h=To:Subject:From:Date:From;
	b=ZGG6VkUOxm7gyBNbefO3LR1R9xXoTm0yWV3SHBurXAgNLbd2gYPDXnerqqdqeY23R
	 +RrCNg4hzQHCPNjUiJWQaCrq8FC7Bgi5WUt4LNLeSbbOeWOJnx7sbWt9dvkrT1khiu
	 9EaP2pa8rswqcBVZNTMZE2sdy39UbDOmibzOGFQurNTI50hDPZeYHe0NrSlLA7Bwhx
	 iWWbE17ao+IpLnQifF+SN54SQTrkofzJBYsgQAU79wzUhRXSnFGe/6dyHtCGz2eq2I
	 LX0Fzn3kH95Ab7pXMPCXamV25HHZfD/a1WfTNpGGNFG9oM/QcRBPSF85B6FK7WDJ43
	 caY/Js0APdYNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDCCCD6E56
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 21:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178026207369.30172.17242784248934931335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7a7d6793d382a3c1fbd350b0bd533fc2fb9952736168f3bd309148f0046196
Date: Sun, 31 May 2026 21:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780262073
