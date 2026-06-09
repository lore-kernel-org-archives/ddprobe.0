Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9B83E5576
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780991674; cv=none; b=JIIuv9W8Mie16DtaNB4RX0TNhrHtF5dxIOeYDIj/Xo9GkD5ESAh0SQnbXsjuHtAk/XiSFF+jowcgcTpj4hI1R+nfqfsQjU092wBD5ZOecgPTuqQJinVyheGtXD+WRkFvC0DptzBxQc71k4MtKTEQ5rQu8kCHvJSnOA8h7XZWTYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780991674; c=relaxed/simple;
	bh=OYF3Zmrb/zaz9T0INQB7bOD9uf0soABBXvSn8e7OMgo=;
	h=To:Subject:From:Message-Id:Date; b=rdWkX+wu5CzUsjIFx4ELhPKtTpgtMuDeEAgTcU27CYBJ2ynYysAR92dVcDNVur4SrQEzXYEw8mPRAjwdeSBTHy3Uurwm4oz2UMSf74FkpOneu/7eQRWla1NdKHVA5WO7B2a6mzBzXyp0zw3d0y9RRK6YIR5OBVXYv2aJSzttMnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j703PaGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j703PaGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C4FC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780991673;
	bh=OYF3Zmrb/zaz9T0INQB7bOD9uf0soABBXvSn8e7OMgo=;
	h=To:Subject:From:Date:From;
	b=j703PaGdFqcm6ualzV/ATp55YCdN8xFuAtE6HHogS+/yNAP2UUu97OUMRAYBGCT5V
	 39PxZYwE/ocFsddFTpdsrr+zOYQNoq2wpaNGjumKYpjOGIZBo+R4c21EHvpF9X6oMF
	 5rQk+ltcAVfARBiWlKJknQ6bmc9MPLUC/qSMB88Lk08TUq2uFe8yc62JH+mcfRhuYo
	 WCYaFfCL0ue0j0Xpvz8V0IzcpoKYJ0OTWlHtC92oUcbPU7YHdAeFsm2lDjO5fJpRC+
	 hLtn8vhyVrYgAqz1CgTYbNqysgu/fw8O64COjZ42QDxGEVb4/W7U7iCl0Smuq42MTm
	 nF4R8gtVcOTLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8F0CD8CAC
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099167370.12845.5253724479163830286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98cb1d53dc7ad652d7f44a838203154e99839423d3f3626e61e01f76af44e830
Date: Tue, 09 Jun 2026 07:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780991673
