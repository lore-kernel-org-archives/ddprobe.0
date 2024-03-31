Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33E82E40E
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 14:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711896496; cv=none; b=VzwzqxC7nHXDDoBAcPqagXw9yDiiDX7HlaJb/Azrxf6ofkslAtxbmA3Q1LFldHE5nkCbgR/IWmFRR9ZLLIGEngUt/CM/D/jTHNVaxdKg0QgviVco1oB/PH7wDRcXoAYLEFQdHRwpV9jGtRLjLtQBP01FB8FxgevW/oC//JI8ugA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711896496; c=relaxed/simple;
	bh=YJFL66SUF8Vt0lFvWT0FK7pyUj9qIvKRxS1lo3Vz/UY=;
	h=To:Subject:From:Message-Id:Date; b=S2ReD2I37UcWyZRGKX7+GllO0mP2OmRayrYW8zKba5YdmFaaIaMog7YFt2KeJumQe5vfOnA4CeMqBzIg6XF87yP40dhp15t7Vjo2nE5f8UDSIJVd5bBGy4yW1eR3ULod2Oq3B7bRBl3WlJhHboPC5H8nMTS/DvshVwQ2eP0rOAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6Z/y6mh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6Z/y6mh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74FFFC433F1
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 14:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711896496;
	bh=YJFL66SUF8Vt0lFvWT0FK7pyUj9qIvKRxS1lo3Vz/UY=;
	h=To:Subject:From:Date:From;
	b=S6Z/y6mhYMW7YZkx2USLkFnXzakgw/eaC7HKlAzaJS/M9flLqyuXRaseAl5FofEqI
	 GgPChMrACGWoMuAlSPsCb15Ig9b3llkIaInNnRGzB0FkP4du2H9kdc/ZHNpQBcDGRQ
	 w8Y9xb/bC0yVLKjvDIcHw3AwGxi3ahQ1Y+b0DttVA2AU4DnwHRcYRUq4f49fczaMRm
	 evDKOfknJQa2sQpIiL1IVvLGfSwWfoCULCJNxtPStVOngrrQvSL25jnz6p12uvA7F5
	 szb/k/CyxcIqbZuI6qXqgio7+D6E8e2WJIsVxHcD8xFzha4Bt50I1nl0syBJHiWCeu
	 vaVE3Qz0CApYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62FC6CD128A
	for <ddprobe@lists.linux.dev>; Sun, 31 Mar 2024 14:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171189649637.1707.9785751837806593450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79195b337a57b1aa2607494cb6917b360c28a2779f61a7df4638b04d539e8ea2
Date: Sun, 31 Mar 2024 14:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711896496
