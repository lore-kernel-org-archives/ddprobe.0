Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2BC17C
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736121954; cv=none; b=eoep1UhtwbVMCxmzGmRBsW8xh81CPO0MGPZ3jQYY5i+1/+EyGHNEqp9Y6XouvJ9gWti+p3fBRlakbKO0o0xw6BZ96pw0mYeNFsC3U6duk6/MfcRPBFg7Jq4MsR/egdvTtYg4Xz5gTNQe/6BTvyQPVY/Ve/DOhXDZCCDLDwDzi14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736121954; c=relaxed/simple;
	bh=jnRk/wKJimB5X2iOFXx9c36oDRK0qJDdu1F9xvYXjIY=;
	h=To:Subject:From:Message-Id:Date; b=dXN6iYH1tmorTH3JoHcBS8CCyKB9AnfLgpgKOSIizHp7QUqbEJIsvOS0IFziRdDMS/nR8zA1mIXljFLsy772b9lw9gU1oJnIay7KsRciF1UPC5O3A+q6GjmDpuWGijE9iQCBLDZKDrpmviSTwZQ/vFU1Yjd+1AIXHq86mpxfCAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHwJS9Cp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHwJS9Cp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45C6C4CED0
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736121953;
	bh=jnRk/wKJimB5X2iOFXx9c36oDRK0qJDdu1F9xvYXjIY=;
	h=To:Subject:From:Date:From;
	b=VHwJS9CpyB8wEE3LJXTyZwzFBME6FSH5DdIIv6GW94LgebHV9jO15HYIGcfLn+jbY
	 qoarN9c89bIx0da0fXOK0NtplS1arxDs06QfvZETSxzKzwFfoM0eubJ8fN7gzOZRfU
	 2tEGdFTRyLZViLDrrJJIspMxCJSpXNy6OXjos4Xaw8mXkr2P7ZqcOqXqKaHlM/sU2b
	 G4eGCq0ZqPoGFRYRaJIC27EhdGvnuUzDFECrQNAm3hcibmJeYzpBVpCkbsF/JQU3fN
	 F4YWkpaSNIF9f0fIWQb/3IxKL/g+msj660bPZ9OCctS1tU9iWzdJa/Fm+TDZq7Ly3g
	 fkHDyiPUPGQuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF5CE77197
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173612195357.17719.14773208602941484792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bc37ac2f24498bef14d75f55dd24e556dcc13e63f8eb51bcc2358912058579
Date: Mon, 06 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736121953
