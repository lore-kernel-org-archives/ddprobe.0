Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0FB332549B
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760565593; cv=none; b=Fc7y9elJz1CBQ2dn7KoSZiH7AikWGFxr11Q3wQzii0BtBiv6QwP2RM7FtxMmJLfFoiDeoNhBr8dtD3aupAbP18pwDpsAxiWtwSgq37Y62xSh6f3tgqFqAFYeFGf64Ai46shdZ1YkNtGHB2f0MOEgTe0PCXBejdKxF8RvUQGJgu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760565593; c=relaxed/simple;
	bh=3/vnigz9XtoxDnFJAvd/A+1werBXnzVqJrGO2dnLVXo=;
	h=To:Subject:From:Message-Id:Date; b=KZ4lCKj0FIqSW1mSRKyHZiJ6AkakmJQZ6OodL+HGIva/VivwO3InXYaWVPoslRtmgjLAc7yTjQd+mw+ApjuyP3Ttb3S5Dxic+cliFHQg4GrvkWoQ2etmv8e4ufgwnYJBYzPDlrTQUoe4Z9Qiaxp2780/jEDg8CcMXpBa+PdpnTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc4dl7BY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc4dl7BY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D432C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760565593;
	bh=3/vnigz9XtoxDnFJAvd/A+1werBXnzVqJrGO2dnLVXo=;
	h=To:Subject:From:Date:From;
	b=Dc4dl7BYrQtHzqt4h5kGYv7+osDRfD1JXPc9ymgOhV82flskQ8eTYanky8bnw/2Va
	 g+SXbUjMwk65TvV2ypAJaP0iGhPkMih5J3yrzlKPBciWRdfuNTXUqKanAQjcleu1HE
	 ABNfYRA1mK/NogxEBt2qyTszcfEM6tgfTvrBluY3hKI/8l4hQL8E7ODU7qnSv8aoqD
	 ISa7SJsqFYgrEFFhgcgf+jdMJ4ZNk6MYKi97PSfUkUMSgPuzaMZ5UNntUaXnx3zBI8
	 63UzEB7/JDnHZMl53To7iqZYu46ReKdE8uyS/RRsBCxUQ3H05YPG3N6ohWSA7Y1f+s
	 iwAiMup4LNJ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E825CCD185
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176056559357.25716.2243768430256021059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 673aaed5953e7586adef352e81885c75649a3b76e9664434dbdec2815046dbdd
Date: Wed, 15 Oct 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760565593
