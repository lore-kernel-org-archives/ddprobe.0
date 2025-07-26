Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2428C259C
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753523394; cv=none; b=f2oLG0GMx5NWhsTzglNwjhavnhdkbEpAUgu1hN5C5/8lCdi2HKzeWuSr2VR4q13aer7L1VOLj7H9eprHxJRf/rjjI2Im7iL6HX1Q48d4KPGzNZN+uqGFu8vGL8x0CN9IKwScGqdU+DO8qzDlmbXOlBCZZFatrHd9Z08oMUMIGLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753523394; c=relaxed/simple;
	bh=4QifVESWN2cbNY/o97diggjhbzdRkErJjSkA2RcEAP8=;
	h=To:Subject:From:Message-Id:Date; b=SHu1hF7y9FRQEMQh+bWTwXRIPDmMaMm6plathOQMAzwK4mvQkd34vdZ4YgIjtR/1Tgh/QOmJAEvrFyynt25pJF6sF3TfPGdfcnq7Ob6iIW2D4w4KyV1r94mJJtx5Eel1jQ44JoNWGJsG6Y12hSQDLb13DoI4gGelsAF/W91ZN/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dxq6ihj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dxq6ihj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EBBC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753523393;
	bh=4QifVESWN2cbNY/o97diggjhbzdRkErJjSkA2RcEAP8=;
	h=To:Subject:From:Date:From;
	b=Dxq6ihj1LuSmxWbEFstCZJw2PLB0wCjb6m1JO77C7TsoYp03/6Vbymjuf9ineWPf1
	 MiIdQsyE88S9cnHUlYlSIqeu1qfafMV2fMF4q9U8Tb9mro5PoeaRh0E+uDBLPiDaxC
	 lnyhlaLK4uLU8qLLrKqdO1Lx+Y6GNrHCkW2jJjiXqzp38mgCUv3HBzIXR2LHQmNex9
	 iT6b+/Uf3BYg+1PCxHbORbA5n4VuxIrATj2UAyUa73b+e1bgHeSizYl14FTgpWrO6F
	 0/JupxD70osflONDw55Ej+B0sKzG2Sl4cNX92Hdusqk1k6u/IUtuKQ4kKeJvTeQs7E
	 eBJ0VD2Y6muqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A2EC83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175352339358.1038.7039610320633426635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68878933bf8cf10840c93c28dd088a6412b65abee52be0c46896fe45d37efd3
Date: Sat, 26 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753523393
