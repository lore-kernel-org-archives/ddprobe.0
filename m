Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA902AD37
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766110434; cv=none; b=CYhCs6n23N29MK+qqRnTF3o2lObAKM2jBG2kH8GjaTPlxLTV06+Epkp+m7JN/zqJdQw2NRF4u5nLq14Weh5WvshTpXb4DdaCJuR0McZn7msGBKG+5FhDwQ6A7tovMZ3o+a2AeB9NB7/ua4lp9qhjsWC2UOIM353hyKUTH+dmeis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766110434; c=relaxed/simple;
	bh=PulMWDEfzgibxlMrdbXJ0UeMVTIiRZBj+fjfjZUcND4=;
	h=To:Subject:From:Message-Id:Date; b=h5qKmSSl0rg039sbf99l1l43ZDpKY+giLaZI+KzFpIpWhcnasW0dqNvO5Q5m0BQqWxYHwvrxGUd0+c3kvTRG/yuAk+fC+6neaT+NEi8PYNaztlAUAExNWPgqa2/LvU13jJU5JgpXMCWL3nxwS7XlF6bGLdjbQS4QMESXqt1MyVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LUSWI+I6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LUSWI+I6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1068C4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766110433;
	bh=PulMWDEfzgibxlMrdbXJ0UeMVTIiRZBj+fjfjZUcND4=;
	h=To:Subject:From:Date:From;
	b=LUSWI+I6sKpVxZBtObcZU6toi6fgIlLKQkHWJrrlDiNfwsen7yfbGWscy5aGomqxr
	 Jf1Yjk4wibbfAmihcaLz1KvSFCidqsmE70XriJpktpXCQjggdJ8y6a6d7uOz/L3QP/
	 zNxT1sUoZM2WAbNMElFJyZ/PZUQRiUA9VDqkzv1+MfVPTc00qkJnCVeA4ZyjRsNn9q
	 4Lu9R7PDmoRvFLAVQC0YZiXYuxO3FeY8qv4NIGzhLkCEfkhqMfODbRgFBYPic98jKJ
	 Hg7wzrqM3cY5EojXl5MYUtqbIdBfnKBsrjD2TnDNark9Jz/64CD8JQ1fBiLDjSz7F3
	 hxs2eEqGx+QRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B62D711CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176611043358.26422.9913612548616516176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d96bb674fe84a33f0de84108e0b0cda5c96ae9748bfe719fbc2bf5770dd7c2a
Date: Fri, 19 Dec 2025 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766110433
