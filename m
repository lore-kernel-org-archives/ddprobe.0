Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45718DDD2
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763015394; cv=none; b=MohOCYaNl467IcvHsLu1jtHvNo0zVvHYBPnisOpIjL+b8VfXonptzh4fzu/hCUSP29dt5GeXh6Gs5G4jT5LtaLG2tvwSUfwoOfFgP0/DQgmQawUHdk9DPlFpH6WS5Sa5/42ETim8fhxOoz4Iqf/GelmrmFPc5/valZLAbGP2BT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763015394; c=relaxed/simple;
	bh=qUTGUWl+wirJIR4ddVJsL72ZMx7yY4m+L0brSoJ2nA0=;
	h=To:Subject:From:Message-Id:Date; b=o+N7Po6o4M1ch+e2AZg3Mz3ACU+kZzC+kDQgVi3nNi7ZQgIjKrVN/i+5rPETG58t59ai3w46bmNBClpQVzu/6kSDt1OZS3izrO2tT2fTDZ2obI/03+0qN9vLV7GKLr9tkHkvSUVZkE1FmtTEGIKh4ZSWmJDRUDdBeMRHDmv9rvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPEFgJ/B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPEFgJ/B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A013AC19421
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763015393;
	bh=qUTGUWl+wirJIR4ddVJsL72ZMx7yY4m+L0brSoJ2nA0=;
	h=To:Subject:From:Date:From;
	b=sPEFgJ/BH1zzleaOI2A4JBEyDDz8gfBhZIeedMNNDD6d4ph8skXAaes1MPovyJYvn
	 OYP4zbl7ApyUw7wen5FmzLqSAmlse3Uzia+cn0bFUvaDNJCntyUIZIVO7kKyla8Z9/
	 lTFgmP6h9XBUtCf5sUttYQORrNp1GaZRdMrNDQBUFsij5L6lE4cxZjG97X046gpdjQ
	 a78w6AaeuCgecOZlh8CBqkQ7qZUusMVyjLtU+thdTb8PIcxYf6VmOwL9iCDLKzF1ra
	 OZHcdwiU2wMX/xCQqxQ7KXHiZ39DziqKaxyGw3uoC/c8+1Zwggj+FehBZG22gsRCo1
	 anB+q531LgFqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F849CCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176301539357.30477.15265272804284755416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43ba8bc6b70eb33343d1277c39fb2e25c44b9c6eef4cc576ff2daa9a3a100438
Date: Thu, 13 Nov 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763015393
