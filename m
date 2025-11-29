Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443641D6194
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764432174; cv=none; b=pU+SSn9b0hc8JB0gCNcgtzoGlQNr51cvrCfwV3mmTWh0GPt+/h/5qCLWYW2cfxZVqW9GoZhd6yJBqbqNF2OZSiNZGx1MVgrJ6vrUsDrIVQG+pMzyBJdRv8CmJ8hYsIacxlljIDnGnbJUltXs/FIeY4I1dTMCsVbjI4VJOmx8rSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764432174; c=relaxed/simple;
	bh=VmbgiekAizk8g8HEBaYx7OepIAmj+8WmDs+sGPkdbg0=;
	h=To:Subject:From:Message-Id:Date; b=SH5XpyEWSaADWtAtuGf6anaYWAERuZo1bYL7bONCHed+d70Wt39sQXgC/VHgbfflnJYhw1H9MJ3Hrhr88kDiFe37PeRyKqVftshVx2q/sTpS9hXywBHjWdRrY4Q1vk5fn4SjUHVoqHydmeEMq7WIT7SItlweVYJvoFXNFFZB4SM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IT/0hpin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IT/0hpin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3B4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764432173;
	bh=VmbgiekAizk8g8HEBaYx7OepIAmj+8WmDs+sGPkdbg0=;
	h=To:Subject:From:Date:From;
	b=IT/0hpinnb7HmSxNdAnRNkaP+lomoG/dhvEAbCyly5mjJxv/wgBtFBia+jXV5HX9f
	 A430LSZ/3kVvb+huA1nNw+U7mvO/37QKJjZYX79aGLbPfuznj9E5Egp5iRWA/q0t2/
	 zW752XIBvao+F1QCXt67rjke8NdmSCRPsJ+7CZTNAZyIv2iCUUbcgTkiPGkj38KtKa
	 fs7G/INFIx6l76d20Mqbn/koVETFqdE9jdQ5e3NMv4xMRVMBwirbxeV5kLhHxuVGzJ
	 D6yWXHARdJXGA1nq+PShkD3IzLFef3QElSKdt3hO1BryJiH9Jn1FDMUoWfulEfBBXX
	 rN3JL2YMS9qEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938B2D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 16:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176443217358.30394.1812398131752814061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf8f41dcad976331042a8d8c758e61ae774a089978617856b8d370f9f52f087b
Date: Sat, 29 Nov 2025 16:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764432173
