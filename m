Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB8E14A8B
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749709194; cv=none; b=VSGnGEc41M/2Kts2vqWUDSV01L00iyqbeGZvKaQoibaYEfV573qF4R+DoHAvwxcJVAlfTIV3ffMSLqQ5n/3fteCD2CSF9PazAh9o3k5pL+SMqqLpPQLKI19ANlUunkg0DoT+6qzN6l15r7oi82B469aHTSCAQPRTnm7IVPQqkQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749709194; c=relaxed/simple;
	bh=6y2w/8Gigluct/uZJ3CB5s/mnQZiCyzWAiJSsxEj0uY=;
	h=To:Subject:From:Message-Id:Date; b=iob14KJpT1Po5+OC1s0Y9yXNReXOtY30qCuylYxtWe9KzrD7AOEq/gY/8sy4SUYcypDUCCt6OsXTHuHkNQl6kvSX2QVueGYgp82mqTOX62DoPxhrVd9shjnghhodB4vQ3/y3uQtfdq2SVZEEVVW9wmZFBAgC47EeU33p7kUY5pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edbpBKlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edbpBKlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AB0C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749709193;
	bh=6y2w/8Gigluct/uZJ3CB5s/mnQZiCyzWAiJSsxEj0uY=;
	h=To:Subject:From:Date:From;
	b=edbpBKlox5rHarZ/A6OAKES9jeCNBFnUjidUfJg0j/heLNWuFk7SglPiIe7TcyDuc
	 Bk8oHFQqjPC77c3orMxQXhtQeTgXhtU7XD4N3ZFUPnQUla9vIwbhViTZBmIEhD+ciZ
	 5cpoFhaIZmghAPm+R8QXaEDjsvma1pAFhekXDH633VwYBSCBr5aXaN1D3ZMHdVX0Ru
	 hNx8MtxD6mKDPk7mz5BrFu2gs6E53gdIAp5TRBacnwQaLbZFL6iSbCEUPnRabdlOgu
	 lKnSNdSWYEJdJR2RjfTMtJ7x23gKgVD7W9u3UcwQVbix8QHAIDMHrvTxp1pFv2eNl4
	 s7t0IZNiW34AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FCDC7113E
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174970919359.4964.509345836823445656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f04dba28376d6eecb030cdc95067eea97ce4309d5a31e38e948b6546a653171
Date: Thu, 12 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749709193
