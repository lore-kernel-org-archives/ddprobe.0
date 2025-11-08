Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0944926299
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762599594; cv=none; b=gxPgkxGPYsIFNeYRtlfAdJ5djpaTJ1Nd8mx5NPGjSuyxNNV2N57qAye8KOrslJZaRzmWX/mB5pbZH4mbuyzHuqD7R2PD0Up0mceGdCYr05SSyGVvkeEBNr9qbV7sSVpX0Muc9H72vBR2ErwI22zgGOAcWqch8qen9NF4kafc1yY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762599594; c=relaxed/simple;
	bh=vW4i9Sm1Rv2w3KG5mrJG/W4adcKbBdBzuxC4rVwhtbE=;
	h=To:Subject:From:Message-Id:Date; b=VSnbTr2Jm1lF37Ks9Xl14j9Huuenbiwlv/nYj4ByP4nnkdKp5ZAmlCfjdgw//QhuFO2YNwO8IYUwjb0j3/x1QpnM2FTHaIUNoxLv3rnyDVHBpMpHZgp+12QHZEra+3CdXZrNzs1SyAXBBGRBwxC43hfxz2rw/dkeo3eAXpIyriw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usswYmO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usswYmO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762599593;
	bh=vW4i9Sm1Rv2w3KG5mrJG/W4adcKbBdBzuxC4rVwhtbE=;
	h=To:Subject:From:Date:From;
	b=usswYmO7YVGkYpvsliyDENL7qMx2Ex871otqfP6gwuFVhUO7oSgX3X7jiMysiXBYh
	 noerbwAa5L6FixKVGro8pA0pWw5fZo76sdXIuccd9mbwtsSm2uQfhMbXvbrYeBUpb/
	 wG82bPEOfU+5nLvEiqiyb1mDxm7fxT7q4hG/4RlDhJM7cF3XlRAT9mb3JHxFrQYLiG
	 83EmOUmhNKdGLP3Bsl+yj+Z3lB2ydjyMFtDRyCqz0R1zBOonmGkcOjwRYRl3J0zVaf
	 RXz3n+qtOaeqkmHmMuDjyhNYxXhpqLlGsWf5Aqa2uxeF9yDgr9Brxz1AfLc8MY+WzX
	 PMXE+51VvLH4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C53CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176259959359.16118.7251776127374873147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f147d23a839a45b04eff1815613e59a7184e4afa7e89d5b0ddc554850005e20a
Date: Sat, 08 Nov 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762599593
