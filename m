Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3687B247282
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747418994; cv=none; b=aLTsLRFREQIxN4W7/x4zlaeqZJkGR+fK9OvlBXTunesKXH65+Sk/vr99Xi82PchS3QEBdVjx3IbNbeScBlWiW8h06Z+J/BTQO7wHaLCgojh7J275JADokUAW/xzgsRscDBC3gTdi7dXbB5+WzeS/fdr7X2R6rijpf4zTh/rCxx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747418994; c=relaxed/simple;
	bh=PAojvn26fMVg8ydSAq9LdQuw38aN0n+DDLBHDvnjSTg=;
	h=To:Subject:From:Message-Id:Date; b=eSR/0IvSXIEr0f2lspv49c6o3CjFDTNPMQoJuYdZS0sgujdBcGKbWsYl1Gm7pJa7xUnoxXAuacpGFT5dZCL7aRPXYjAAJJwQoltQDR+nXZLY0v0mVSBR2EI+pPxsYiXe3IkyXFzDTomwvkgUx+nP96pk+6lLyMaMJxJ7guEkbHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCpXyJgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCpXyJgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02CEC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747418993;
	bh=PAojvn26fMVg8ydSAq9LdQuw38aN0n+DDLBHDvnjSTg=;
	h=To:Subject:From:Date:From;
	b=dCpXyJgBWGVb4Cj2NabMF+/2qxIKuZswqiNGtvXeAkUUOLvHT4JA3E7MwwmMZZkhV
	 O8gmWreszVfyW7cTb+BxW4aLEuDuvTpdn6T3HfzEPk25Y70G/5D778V4Get4CT6l4G
	 CFqIKD3OinMndHACA16hJOAw3kQLNYGmycffYnJkdB80qc2Npl/gJyA03V3p384fuE
	 2MlcQu3850tXnNDoEH3ovnmVWdu5jCRmi7lPCClZJ4bZb26V3rt3tWePPs0Cpln9ur
	 wFXvas45IHwV4qdO9tp1HaLIz2OSyI/Ao6qJcHpfhLt0kDZZ0AxxSnEtSB3oR5gmjQ
	 zK7UpRrXqLwYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EAC3ABC9
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174741899357.31858.13791044350343812550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5072685df1e8947d46343cfcc27185fd0af570e10bd235ea176beeca806efb1
Date: Fri, 16 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747418993
