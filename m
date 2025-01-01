Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2875D184E
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735765554; cv=none; b=VdVvtCCEBvYXLvOMAdDEjR0a5MiWuUakydKK8eQSRwvSkQXJ9KaA8yA/VhHcL0zAWkaaB2ZQCI+bXEIYfrMaOw6vdu1ofOcZ/ooOiiFIxIArCNu/gMAJpuC66BLUm0BL2kD83+TbQLyHqR87fgxPF8ktRA5wUFtns9EHnjymnZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735765554; c=relaxed/simple;
	bh=wpaIxfaHTaUlXtyqqND61060fStcvXBpFKsv3PaSaFo=;
	h=To:Subject:From:Message-Id:Date; b=EyPkQkslRGkp/TUjDBoHel0auUdIR9EPhE368wAFwHbNrnNt6ZlHwrtRQ6kATmPYzxMmhCpcr1C4WFi4CXa8SoA+kTH/0siOlL3jRPTLI9N2BANpqV2hr3iquU6DLd5lR3QOX3L9gB4R0K4P7Y/1uYOsbetLLSwaQqS5x3aLcIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hSNZErlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hSNZErlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3517C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735765553;
	bh=wpaIxfaHTaUlXtyqqND61060fStcvXBpFKsv3PaSaFo=;
	h=To:Subject:From:Date:From;
	b=hSNZErlLPONcV3n0TGV0IIcVWH6Nh6Pg8fNpCbTYyMsNsd0qaeza9td4CnWxAhyfI
	 9F2pq7ndUZtUiv27reN11QZkL+YTS2TX0aM188iib/dCj7EYcgRnmXIzlhf0TgQxuz
	 pygR3ZQDwjnw84MtxukfDVxMp43RdP+qO9EV9roex+nsrvvGN29cuRrRygl9nBWSQA
	 FHBedxLhz5fTf6lPFC4LR+S/Man55/K0QEPNzjMCpGMfxM91V36vVOyyYHzb0fVmg5
	 TSlPNQET77ivTDlGxd3SF+8O6VyIs3BpJ8vRZdzwiY8dEHfE60BdxmHXT95pqvYCvW
	 Qs1e2U0j+hWNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91477E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576555357.10694.17227613161170218626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 267d0ad0ed7926afdd9e5735516d50e3684881f345962f2c73d4daa5520031cc
Date: Wed, 01 Jan 2025 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735765553
