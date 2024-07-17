Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571151E4B0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 16:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721232323; cv=none; b=vA/UemEddLsASFhOjO9sRxys8YheepJHCGYNYTdUJDvHhPxKacpor1YJcCQBAWBa7V+dgF1SIRNP5UzYr/cZeU++trOTR2OI5ENWoez3dNOl01SiSwgq+x6JSyAZnF22rjDesooEJ7/pJV9o+KYHwXKNS+F1ied0NO7thEiwltU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721232323; c=relaxed/simple;
	bh=C6z0jplYJaoPaElKBb2cQMlLRII7RERxgqd/c+jOgIY=;
	h=To:Subject:From:Message-Id:Date; b=bCJdkvV6SqbgyMOvKuWK2K3n0AR32pDLhV96cMktwcfDAJ3V0M3SsWTVt1DYv8MNEOGSKMGgthhozQrmJi6XWVEhNR/iE8FEW8raISMjYgxnWgsgodKKlLMprbp6IjIWawlEwT9OjtPMaEM6VC9VqbJb+GGMOtEiq5RPUoEc7/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bd4FHunv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bd4FHunv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D96C5C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 16:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721232322;
	bh=C6z0jplYJaoPaElKBb2cQMlLRII7RERxgqd/c+jOgIY=;
	h=To:Subject:From:Date:From;
	b=Bd4FHunvJ8aMItahYmhPpWZJ7nhOaKZ2e01c6psw50m7lvF1riaGTzAh9snIpMHMB
	 DOdnVIUW30DFl+5fNAKqkb7P/3WW6tOBCe7NqHnHycui6FPDe3YAnih0EggLCIeFdx
	 gy50j29TI2spw+N4jcCteusMrDwzFUbuLxgNqg3LKg9h/SL0+eB8WmTNn/OR7k9iMK
	 DLiKyq8IDMJbTN2D6JGw8uzT+op197WvEsTb8bCwpRbOU2xpGtuVVKKvaVRfQOD5ck
	 PG2k+4OiDgWtiJHDMNZ7b7+AM7xM4wxno4tUiqOc65EN1Xr1JoJ6lM0MJkDZYJrXYx
	 h0qLCmKMtorNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31F8C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 16:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172123232279.26108.8975683891582726196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b866b0dbaa1a3a8ff7f4ad7af082cfb7aa4063e671cedcd90bb09eb2b273f1a9
Date: Wed, 17 Jul 2024 16:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721232322
