Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB5A35C6A0
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788982234; cv=none; b=LYfYLa1LwYZY5aZ09jQHbR6HR1casa8JHoTUnNOS678GShsX5IO6zGiLn0js1LIm7SQhYAXKExucwWTPKp8KNg+oXSJFrC1tPn/68a0P2+JAB487F16X+5zOb+qH5TaGt1JS+fu5VIL8wmBrBDVm6/78iMTqwVxdCoofuZ6jR3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788982234; c=relaxed/simple;
	bh=KAQqGpG1EZATF21K68jJwGIrs5CtQXd+OyZUv3uvDzM=;
	h=To:Subject:From:Message-Id:Date; b=ICDTdG0HMPf5xRN1vOWBDafEb9HL1Zt22ZEaYB+uLjLSrnAO8eFE1vy12eeHmxdUWv8onCtUwc41c3DtqpXKGOee5h2j1lG/BeQCk60HqtbGPEMlTqbd9jvJuzbZYOmhcN0xbz5ZJZnWlWvl+Js0ujMjmdzt4Rs2Ob7V33MefP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VygsZhoz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VygsZhoz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5DF0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788982233;
	bh=KAQqGpG1EZATF21K68jJwGIrs5CtQXd+OyZUv3uvDzM=;
	h=To:Subject:From:Date:From;
	b=VygsZhozZzVGQe5+0mC9vX3L9Z5NBpb5EWPQTUtiYSiALLtd/ZpswtJKom/wTYzsL
	 yCGWCfv0MJ0UNBdLjveNEfSw/Jdf2ohBgLkqqOXyHefLpm5M/Qswvi2ExQDE5o58WE
	 llWS0Fmk/ecMh/joZfJ28BAxS51xrZn4OlOb7331+007k5S7y+1SATNocNAoln7lbV
	 MzM2dhmjITX1CS3gMmL45arezdZ5nTfzYhUJ/UXU8RUFyM8rkxV6eEMICe1uXh6/HX
	 rY1LO60af61SFXG9hSS7vD7xqVVWddJlxsXV6VX00+DjxPAm/m7CwrF0Q13nt/DKnr
	 TyHwoecSBZdww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACDB6C79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898223369.9258.12389786213759258222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6fd41ece272a1d542cca9210911aa7e22c6d6e692ec4507c8829c1cddd22f31
Date: Wed, 09 Sep 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788982233
