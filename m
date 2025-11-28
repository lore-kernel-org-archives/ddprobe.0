Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6E1212FB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764340373; cv=none; b=r5hFoJkxa8BQidTN2Js/9XBX4X7/7oBjxwsZOSV6jYUT+1jpQqYnA/AVIdBVSesjgDbEJ93ZHzdxdkjcbbjK4obG/DikqdXtGq28PUlkDeldMOcv0r0RvLVphCDqs3HlzLwqw9TB4IjckoBuYwiuFB47EyaIzcEGCCqXnmDLgSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764340373; c=relaxed/simple;
	bh=su2wq13E+Aj3YBzxVS1SAOV60zZv6RHXUUf5Cbh7Up4=;
	h=To:Subject:From:Message-Id:Date; b=R0DlxSRyVb19IrSaGKipo57zZF6yA2f1Cbs369czb3nU/xPqvqmw+5u9ldWK5LO6m2SqekHoEh9HBYZ6l7rY11+90kmuw1ob6W7+heQ5wwyiXyzIksK/d2ztkXk6nUYQjjM+1Ms42m6JvRkM8Duq9KS9tyjsYmOtiPku7LejhzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgyRwsgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgyRwsgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ADDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764340373;
	bh=su2wq13E+Aj3YBzxVS1SAOV60zZv6RHXUUf5Cbh7Up4=;
	h=To:Subject:From:Date:From;
	b=TgyRwsgHjx61DDWSrJ2aU/fSA5BK8dXF+IyDFMl6GkCTgks7/LFTKxQ3Qp/V83FT4
	 rLERLYFoMT8gGJXHsyQcUqjy+MwGOiOUo+jYJtQv58hogK3ns5CgEYA7h0cKgg564j
	 k5U18IjJr6/1T++b4BCG1h6Ta/qISjT0MvFiw1HfH/7rGccbrUQikYx7SxYsp4dutd
	 GCzVS/fg6i8buKwborf4aKqpMjJGHF18hCUz8ADhRqrA9qoQKTGvh5tEuOjG6SKgU5
	 AEsZiZDiO/QYDdfFG1sbqBxObOmAMn7hKUhlaVvmRMuxu14d/Zj2tNbDQVEfGfz9Vb
	 JJfGETUYtkgtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90971CFD376
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 14:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176434037358.7924.497451655865947339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7724cd687fdfaff22556a627a1bff6a18ecdab713f2a19e335f538a01672bf
Date: Fri, 28 Nov 2025 14:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764340373
