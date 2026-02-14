Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9517404E
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771039494; cv=none; b=TdlLH4URVJMBdi+4UdJuywqXE+3PGstajDpr2vjMCkUi12uPEqexLHtMww+n7P033I5Lx0kh9pGQ2LPtU73yBLWi84FrQEgWlaZ9j4fl/sHei69flkbnRrIHC4Mu8outvRHHOlWcwSKQjn1sVos3Jh5F/1OP2UfhGK8ShMbStEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771039494; c=relaxed/simple;
	bh=nux4MxeGJauHq+M0QjNH0ypL6+qYCQJlL0+4vhyqV/4=;
	h=To:Subject:From:Message-Id:Date; b=NKQhNnamFZrhQS/4GkJUU7wLjCa4MB4BQxf7pt90BGmOjfrhVrA9khiasVDDvIcJoB9rhXFfk4zh6E5UANlPYNqbvPpQ8lWHszYu21EQlmWkT6Vw9sM0TdOIMN7x45SOuufMzhe/AXyjiekE/9vEUhSPm6Wo9W2s6ZO28brMByU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grumIobP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grumIobP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAA99C19423
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771039493;
	bh=nux4MxeGJauHq+M0QjNH0ypL6+qYCQJlL0+4vhyqV/4=;
	h=To:Subject:From:Date:From;
	b=grumIobPjGIrxAqKHCl8Q6JUECZK7mc+Yhoh2C04TVXaD9bHZN6v2vXU6znswYumm
	 ji4OnedhhRNkkPO+iy2jp74/TE+gDXmigfRh0zu4DFtWBI+6GN5N5paDG+hav8yfBL
	 VmlVM5ZGLwpI3hzpNJ+YLLev0tz8K15SxMNmUo75dGBJp6JgSvt6HZjQPkmoHmR0T3
	 ERU+H/Y5QRVfw2gCg7sSPA6UqJXegEpCclLV9Z6dqaANmymctjdKVB3+XckFLp78iI
	 //twIPDSJEoYv8+LnUbn+WNrwV0Ot9l5ysEEUQIl0Ui0c5ER4Hv0oeq61r/liJFcZs
	 4SIsCLdGSVbTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3208EF99FC
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103949362.15601.5156188695131103507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1bfb81bf8c9843b2f7769ede2da73a36a0169daa9352d6574f1c6071943b86c
Date: Sat, 14 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771039493
