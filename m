Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464F036E497
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783551514; cv=none; b=I/OitQv/HhsJ6pwsxdxe585gI2jRAIsqZIv3w3P+vbqRXMpLn0yyp9P97q1tjdOjuA68R7DWhqNqjBu7eooU6rFlQhd1XDg3ugvn5C3CA6Ism8otLOUPAZbq+7ZhfJD03KZp2qofYc9F7HSPRgK4gpnoqEuYmnsvb9QUDOehv0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783551514; c=relaxed/simple;
	bh=EuC4Iq4NERlk8nicWAScrNfczOlLi624Eun/iG4bLko=;
	h=To:Subject:From:Message-Id:Date; b=hZGTSEXHfvR/3wRPhgmtdc8Q2VderoNlZ/wQyJ6uRupRnF+6v+3tootsIOmGqgMVtuXHdfCUXVhVmj3GHV1+Ek+jrI9arkvWKbWzOAizPWiDFiaIei8xyzFmxDjI1KcOAKzY6DfYuKEtG6Jav5jftnCR8jJE2itwowC14mEPXL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U0V0I+2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U0V0I+2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A14C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783551513;
	bh=EuC4Iq4NERlk8nicWAScrNfczOlLi624Eun/iG4bLko=;
	h=To:Subject:From:Date:From;
	b=U0V0I+2Om99iTqsMZwHITT4hHZ+s3NEYAtGJ7cnkWMDWscevgukquTMCa/rL4ERVF
	 XfYyuy5ooFZ+vOSw4cDnjplwcoeP5Xzl6hfHcJ/u0OQV7UtYth9eQq6Y4LZSnAAjnC
	 eakv97LLvsUVbULeZjsQRN2u1swEh31RrGkJ3NNjUQXwW5TKxMfWizX/2hVHrm3Jp2
	 ViNPCmfODNpTZIvg3ZJIcfN5vavLAgQqUjjXjjuKGfuX9xCPKu3WTAeTHznrMhY9Lr
	 69rCtdMuLTPUrVEmg1+oSxBdhf24bdTgmZEh7WmNhrdBwZ4QAYFxXBj/26E+8lmsum
	 Nq+I4sUcueB9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A836DC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 22:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178355151368.8234.2067113991123167388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b9f7e33a62a1e30a0168c8b45e317e44367b86f496c874b13b91b387f493295
Date: Wed, 08 Jul 2026 22:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783551513
