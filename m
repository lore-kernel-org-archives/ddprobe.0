Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7B625E828
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747754395; cv=none; b=FId4ii2XpLED0y7YQtbJ5Py5BNjt/RKneSEcc3B+Zd34o/RcZxneDQgQ86ZtJxz5lwy74H988xAErNXU/mfgUKqpEQSLCO9g9MR6TifUuwiBEx5iq+3aezKsRueuRqOgx2bL3KZeM4qEIMdbTlt5rXSH+hN3z06dyTrbgWLxGkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747754395; c=relaxed/simple;
	bh=twmsr/FQH4uMk6d2ULf9wFHB0JT2AT4G5vWsejVoIg4=;
	h=To:Subject:From:Message-Id:Date; b=EGVKsBOprb/StBKmAcruHxQITLDvewfdDhUC6vE5hA+CaOeKkXAdv77CNYmnYdr+d9uSx3P2npzL+j2MLL6WYmk7qLRMmH1EWvK9kk6bDInFnG3AHGRJxtrY8pQpcbVqOos5dnf1z6zrA1yqKB5tPIzMEpr1GX6+rO/qd1z8HDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=urUjX6Gt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="urUjX6Gt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E539C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747754393;
	bh=twmsr/FQH4uMk6d2ULf9wFHB0JT2AT4G5vWsejVoIg4=;
	h=To:Subject:From:Date:From;
	b=urUjX6Gt6QwpPJfnukvdLAq3hs6fCsBdYKwPtb7mJkiLeu4TRC4Rfgvw02eJJCvDd
	 6NxvI2uPq4htDwQdi96DtUMplblIYA3axi0KEh4FhYULj3kXxRAmXuAnwv1/FvW59U
	 vQIy0zBQnUqCEDMtcd9hiE0+j5Z2GM2SVqYOPsYF16OxYWTkJCCmhpR0AJ7Tl0g+r7
	 eQGLg4Hcy27NFWFfEV4XwQFhWfPDrqOIe6m69oMQpZcMtQLb+3daIYV12/E/leAGc2
	 E22CZ6/DrEPR6DE/OA3fVAKizYPLDrR8EaTjapZdqZI3hxhPJgLsNw/7z+0eUHZ8q5
	 9IaD11AutZywA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F88DC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775439358.27629.6125009088588446211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e9f08babc1ec7cc900c1e5c641fb08a3853a30c024e7b237155053974590b03
Date: Tue, 20 May 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747754393
