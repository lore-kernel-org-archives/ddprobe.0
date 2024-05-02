Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420691CABF
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714636343; cv=none; b=YhdzQ9NwSwk3YHswI3159ObeunivJJrSzSaXkj73NyhkU2SCBN/7lPETG6nXrRJ8LhUctlFq2SjZCCy2+VG5muAXL6yspX7biWM+VBxvegduNvcDqLGEXS0P72cHtOi6bYvEtANMuZXHdUYP0nGuyU+8D3anZeF0kwpPRF2tOyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714636343; c=relaxed/simple;
	bh=XT+zBG0qyyJNa2hYqTBR2M/WGEy8Oi3pwEqoqWeaiNM=;
	h=To:Subject:From:Message-Id:Date; b=PUV87erIvdGlarHJweGJ648jKwNJWLelLM4edNOC6cSR3hZH3om94EH636v1io3w6Gf/3PcRTIDczGkGtlz7u7AmbuouR2nGAVo114pxE6kAS/D56mAgmGGwypkcxaMhj7GG8qd8ZULuNGYrWRP8R4GunzE6hWKKi4LmKj3rSPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MzLadkcZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MzLadkcZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B60C4AF19
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714636342;
	bh=XT+zBG0qyyJNa2hYqTBR2M/WGEy8Oi3pwEqoqWeaiNM=;
	h=To:Subject:From:Date:From;
	b=MzLadkcZTUB6N5ENig1qDjgdD1S2oVMOm5CS5QmkAF3JeGX7Tx0UPBiCmIZN8fQwE
	 lzCT4oib6wHxS4os8CmoQ/SNZEY6n3Vk0oBYOcsU2CpRcZo+WrF/q8+ew2oZ9KWATO
	 1s1aMV/jQQibXQ202TbMloXwplAW3Fb6h/rvJe+3z1G+E51yGp+47V9DBvQryfv3k/
	 gLe/s8Is0GiI7HdZPTqhuLUhB3a6cIU1SrVWqq7fhtpW/DOw22aHaIVP8pQjl23HVy
	 1lFnkykzJ1l5NAtg1pGP6vUpiwxT2DrAzQtHAIWZVC9BIOS1JpJyyCyJaCJ1dVMElx
	 UjugW5Agl8nHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB73C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171463634277.31921.7257863447682923973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eeab07a92acf8d207dcd5541fe55ac7a61e1225919011b44b24cb18c29b9812
Date: Thu, 02 May 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714636342
