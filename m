Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CA22E03EA
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765579374; cv=none; b=ucTGN553/hUeJtBsGB9Lm/pmkKIoiU5GafSbs934FGnWyWbxAAEsxOG87yX4Yh6H7znlbrPtVledQqZWAWVDCG1OwIEMKY4f6Otkn6u9BkVSkX28jIqZvVAxEZ1lg3ASVwtoYQM/pForvlvH5jDtWuCiVEHK84tV7DH4jFgZpxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765579374; c=relaxed/simple;
	bh=7VEjzLYU6NfOPMNYV1id3Qnwxie4CH50xW6qc8umwmE=;
	h=To:Subject:From:Message-Id:Date; b=MrEjVQt4ZvqsV6R0cWiVVu3/NXqXudQ781ou8195LesKwPS0are/6IakuKsZxIJvaMHLwLc2vG8+AM7XZg5I0A7m4GZu+hg0TPa0o1XeqMFxwfZOFGsGdA83A7HLfu+stF+p8KSwo6hFH+xLc0u+/k+p8rgJynCf+hmpyTpUGTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWKUDfXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWKUDfXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6C1C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765579373;
	bh=7VEjzLYU6NfOPMNYV1id3Qnwxie4CH50xW6qc8umwmE=;
	h=To:Subject:From:Date:From;
	b=HWKUDfXmRVVCK5QkvfRtZzBVfBI+95sEyV3IVVb6anToBVXaCURXuRJ4IMgSHCDHf
	 dg241lgmy37DoCINXeGIjEIk1UnFLuoBh3waHDsU0D3PBgDhEElVx0lPTCILecwKje
	 EOdRwq8scGLF2EL8UStTAH8wBCd1OsdLufZDJXCwDQ0AOTCmKstwueh/mz505nQj2N
	 TMiLs2gxjciHCs3KuPzxHgqDpBeJSIeFwIeJREeirnQwSOuZ6AXO+B8aZAFziD74HU
	 dvHtf1495YDfFX3y+2cuBtuXxPiC+sa5+toab/Wyw9+0OfIgAKqwqSkP30B8ZpOO8O
	 Pa3tBie/lbRgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8DDD59F50
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 22:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176557937359.8754.5616131358864773298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd4cd0dc7e7c32b6e720e619100978c8f958308651c78ea814dcb6dd1e5c5ea4
Date: Fri, 12 Dec 2025 22:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765579373
