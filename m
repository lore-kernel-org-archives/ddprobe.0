Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC9236C
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716770063; cv=none; b=ACSRPPcthjCbAqRMz/+hg6dual8ZDMxj1qHdMJSLM78nf4E5+tv28C0r9Mtjdxnc+bQmngnFFtJpFrwSQPqbzOSO3cU7C/EGk0pZsVngChNSPmZfO1yIYcg7et8acv/5gsBxt+bsOAAxXP6wfTjFE+mxCJrDCQ4Djgau5CaO47Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716770063; c=relaxed/simple;
	bh=7MtcAQKQGv9Nk7bA+hoZcxm4MctpdrNbHxG1w+Puuzw=;
	h=To:Subject:From:Message-Id:Date; b=XHhieglEHLv4jQQlLjzg/MDxLeMO88vbWAHiupfcFs2AQrl8KAis6HKncvBSMc04HapCziGoktxlhVeoK+JY5PVoWPMf3nf2MGx1K1cjpKHsgXRGaUoZdAfDpVDzRVnjBD7CheRrmRX+gJ00/it3RJCu+4Xpmm7nCQDFkiazYvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HLRHGNYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HLRHGNYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25E4C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716770062;
	bh=7MtcAQKQGv9Nk7bA+hoZcxm4MctpdrNbHxG1w+Puuzw=;
	h=To:Subject:From:Date:From;
	b=HLRHGNYPlNLOfVEViBsQ0xksuGUjXWI8PUgqgcewNFo1YtwZcKJ4PLT1A2M+zr2HS
	 sY4r8Vd/rNCAD139hrMSGP4pAz77eFAoC67RqgYIgMkVMHQjZrLX8XSB0PW8fFqfU3
	 +xUhfCKSM0Mj/Add9g28wJBR7mp/4WL2Y/PcygiPy8LAV1LG4WDAL5N3zr5uOeZfYH
	 L7IkOZvRl/XjqlII1iQ6hQ3ThcwNyM0608zVY6sUmz7j3RqgfBpPEqVBmb8bVWqt6X
	 15Dk7nJOeQO8U8ubA6S9QWKt/QClxfGgy4Cs3E+N02ZRNvC7D503PGhNtH9w32pqMi
	 pmLDFZ2dZ6T+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAA91C25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171677006275.17557.8486999677918142729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0218441e1ccce7af8f2752110aa1c0d2bbdc9c5bb3f4982f9a4e6e726af5f4ae
Date: Mon, 27 May 2024 00:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716770062
