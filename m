Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8AA1F4CAA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754822394; cv=none; b=cumWVMESpK/vzfOVdf8uaFZ7FujucZHhFSUSpSP8R9IPFLZqSQF9nSFOkQ5x0fuCJuC+friVRvJuHlGl7zW9JmdrjxxJcs7i/L76k62sfRJrfNq/TkIfRhadGf9+qJnI8zNRgWGuT4mPhubRQWwUFANrwgd/zdLsoFJWuxGFMG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754822394; c=relaxed/simple;
	bh=yvwMDLlvFghmw/YWNqMuMhpAkNQ892/3csVnXtrXuGo=;
	h=To:Subject:From:Message-Id:Date; b=krUKMUWlStyTO8wC5XXSJncX4NHNnKgooPNGCVy5zQ0N+58e3/XDe/PxdrQECxLASWLeofcet4yNjI06qN4PKB/VrrINgiqc8OyuyMsCRu+niI4OD1ze8mCU7fYbuwjVQstjQf8kjryh5MDNcyG7z86vaGC0X1eKMtOOHWFsHXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nK4C8V/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nK4C8V/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B83C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754822393;
	bh=yvwMDLlvFghmw/YWNqMuMhpAkNQ892/3csVnXtrXuGo=;
	h=To:Subject:From:Date:From;
	b=nK4C8V/0hedjydAMqOt8k2m7Vd0yPSmVWegPNXvOPRAThlfx+KhoRAWHaTGYetT9m
	 X4kAPIw6ulaO999dEKW3Efobg1u/HhF7n5SLPMTTekv1R73aOGBrIjOTF/iWi39A6C
	 HJPB82lisbx0rQRyTfER0tr1+89YegOBOubmJrKOBerWScTiP/ccDm72dLgGeYX055
	 xA7caFq4rNEMORvA3vva8eWFCu+TEfxGaISe7V7Qo61FHMlk99z5pWHhnZbuuMUual
	 Z5d9OVCGPmbAJ/AiEEkHHwcjxgBOC04LVYCHkOTdU2qbknFqw220EOJLh8hNDRq4f4
	 R1Kyqaa84u4GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94578C87FCA
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175482239357.11385.4653880583783212874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986903e5ee5004eff123135180a9d64a4e51d6a21abd942e1aa3648b7806e4cd
Date: Sun, 10 Aug 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754822393
