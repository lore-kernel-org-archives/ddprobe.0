Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392C3136E
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737185754; cv=none; b=G2G70KhoF9BMJltyOiQxeTNKUHyj7zkpG4t0IldxlPqYdlJObRYNbuuxnS+9PCmSfXf8E6d+I1wVOn9FsVo+Jmtv68ko4PPgz630ePn84slUefWLUKzKGOpovzjit0yuk4U6UUYqIjIL7XwvhSmhabyzz1ZutM1+HCRF19+i9jM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737185754; c=relaxed/simple;
	bh=7fWpAguYM3iQDavm1uMjI3mxev7SH7SyUM/TUzHOGMU=;
	h=To:Subject:From:Message-Id:Date; b=attqbxEFPw1AzOzsuRb8WBu/e7aY+yZv2gfwzWYDmmCL3j63U60FCovEE0LgI7wJFo3L5xUpuIci1m6+CXGAnbXlbuAeaVw/DTtBkq4LD1JsTC7L17aNTCrszvO8YaSPWg8O0DDi53+HGRAw2MS62Dm0WAMolAlOmTF7bcn2uFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKjWFa5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKjWFa5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE880C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737185753;
	bh=7fWpAguYM3iQDavm1uMjI3mxev7SH7SyUM/TUzHOGMU=;
	h=To:Subject:From:Date:From;
	b=tKjWFa5XJjK0hMxv94Y42FC2mS1C56McPTRrayEEYoNcRZqmUcaayAUTB7HJOKVP8
	 qMLkP/udAnI8McxLFRnsb4fcFbHubzo0mhQYRgflIrUeyjyjJKVNU0ckmI8gMxSX/K
	 s86zxSAkX3GIBANGYyHvuarKgpN9EuS9jIKHsBhc5E5e/iEXT+n/q7b7KTXE3iSxy9
	 WkUoNuKYGxNHtGk4h1QOrllzHu2sgs8fq1mT3DcfSA9ap6p/z4Cm531pUK2+oUTuPs
	 2Bd2eil2PD2qi06Esu5AJxECz1z+UlVfHryefJwCxm8Mckz2I/Bgra44JRLtcAbteN
	 7HBEzcAR3CqmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9559FC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173718575358.25390.6405596646445168098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05db9d4410908eb25aad6c5bd23fc8c70f3a7663a7f32bfd527c15de7a2ec5d4
Date: Sat, 18 Jan 2025 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737185753
