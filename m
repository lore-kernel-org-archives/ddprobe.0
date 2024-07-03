Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA2A1EA90
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720016723; cv=none; b=FicP7vKw9ZoQk874T5GG2SxY1L8my+Y7SsB1NGez/GwlqmAJkyNt+ExREVP5pFpwd019fI4fNdkna0Xxt+EDAk+1ByRFVB3qfsBb2OiIwIYlIqycnhzBonCk8pPT7PYGIzNsQC6PPU81tIRzY5OSTWKVJymgUXq9Ov5ws7nrCxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720016723; c=relaxed/simple;
	bh=7MFLrnj/idGv10E+UXiaomLWJJH36Fbv7EGgNiCUDcA=;
	h=To:Subject:From:Message-Id:Date; b=Ug+1YCetp6XUu/xMQ3qBZGGkSjpSw+bGBxVBslRF5dCZVMZa0+T3OCCAv7x+HHbVt8Ysk7jFCqrANsnmoSKs4Mz2d9nKfAa7ap+NFVpB9rrSYG5HmVRsB/31zBpUcWZ0MnYyGxu2wznaK8X2M+R9C30UJrAmOvvOE7GCshE+xfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RfTIFuOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RfTIFuOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE1CCC2BD10
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720016722;
	bh=7MFLrnj/idGv10E+UXiaomLWJJH36Fbv7EGgNiCUDcA=;
	h=To:Subject:From:Date:From;
	b=RfTIFuODq8rE0YmwKICUEUZySv5EtlvaDW66SNDVE6FK66dBiDRz3a7XAGmzdStQQ
	 QfqyZMB+OwYlJwbONw1Rpd/rvWmG82bozDkJk7xPwGRhPB7u7+tlq6bFHl8BfZodfC
	 eMN0eIaLB0ZqLpCurKZfflSRK/3a+KJpUbhX0UVkITph2CgycnN0LaMuSm7ReCo3FV
	 ps8uk6594upj19AUtKwFlul+tjgF+XUDV8aWdhGydrWItuor5Th58VxB/lezd6HBN+
	 8NqMgaqAoconPZZMi558aXnQKkyY7iIRsPzkFOPDP7a6EwpPSDIk1SmVnbNpGlraQb
	 FPC8tL91AS4Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE77AC2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 14:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172001672277.18753.2437317169230838819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813b40a4ff9a4b92a0906a7395f0dd6b2fb851ec7baf647dde33e156c6530091
Date: Wed, 03 Jul 2024 14:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720016722
