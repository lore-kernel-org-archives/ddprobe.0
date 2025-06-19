Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321701D555
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750292394; cv=none; b=bYHKNaJlj46J50uvWttgaWhv6eD8E6muKNeqjlFGD89KPKB2W+Oh0/9V0Ew/OiwGqfi0ZZVvpQ45rEyLh7wej0G+tWKMFUIJPSBHK0rojEV480PsUSggFn12zOAWF9e93RVe/V2iVIcGRC+jKue5L0wN6ITT0+T+iEeNrVAHJ/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750292394; c=relaxed/simple;
	bh=9M2IApj6sbkjFq1j8Tb0zWkwDSk5TdzRHg4s3nfIx7Y=;
	h=To:Subject:From:Message-Id:Date; b=jmue+pWMmol0LKcXTa0UYZFGrP9kaYlN7wEhmMn7lzXgFDcR2SXVYFHc5yuX/FoZ3OKL7Jn2/bWMHqfyrN1WVgbTXs/SXG1Qib63PLdmBJ91SJcd5svxyHNlwyIefuzyzled+c+SOnVIA2HD99tJ7HLMpGYqCf0hHgvcgLTcUJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTI7EDFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTI7EDFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2D4C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750292393;
	bh=9M2IApj6sbkjFq1j8Tb0zWkwDSk5TdzRHg4s3nfIx7Y=;
	h=To:Subject:From:Date:From;
	b=lTI7EDFHIbDBs6uW6PEiFcgFQR5A5SiVfJqI/TiB38FtxoEy1Yz25TeswCqz/Fm9M
	 FGTQJCFIB2r+Gl49JL1SyJx3QlsiePF3V+VhV6RoVt8cZs8tnYiCpRvNKirIVV4ud0
	 wexbbj6Hggo17HvPIH0YaOrKtHBCan7RCuQXiOOuUb11rBKAqXG+5choGNBdkUS/Iz
	 KMljdePqFjR4GfD4EJUcrZL9VYxDQ9VjQ7tNfHGAUFlWE8hauBQ+++scYfT7YwsFJQ
	 VbYT+Zqm79tGN1gRzhgZx3FeZ/N7+YWVkwkzYJSxl6oGuJspCDOAQw2QTnOmSfLT4+
	 +PAS4cjItYA9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A95C71157
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175029239358.27388.15969768668891330631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3e44cc87057613c57acbc768f8f9f04d84458e3060a39e9b350652d6712524f
Date: Thu, 19 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750292393
