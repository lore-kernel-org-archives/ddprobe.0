Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E682E8DF1
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753369194; cv=none; b=XWvMyN7oiCDnSl5b2nCSWK7ijfteSvyA442eSWd+nGhAc1mPEVUE174DJ8zeCI84WrzAOghEEwSIp3SFPV9D/9s2k+qdPBMOyIiZZNxZaPDy0+4iuUAuGcAWX3Xx8E6p7EU1E/GR4M3sz6PwPE66afTV88/VC8TH8IEVoYL9R70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753369194; c=relaxed/simple;
	bh=MDbPjmD2foMbPQv9O1NgSo23+QC/YjtEdIHyBFfnMe8=;
	h=To:Subject:From:Message-Id:Date; b=HNjNkKuKmscKFJgadLE64cSrCPSyna2amov7XumZge9W3V4ZIYssQxdnFNFfG7mko76qMDJiePVLOIcOl+PTQteFfRXvh675ZpeMxuyQ48z/n2eyN3NuZORKuTrTFx0LPh9SKFndMYdspx69/XZg4VsEIkk4+homFczfs4KDEuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fh1GkPuq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fh1GkPuq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FC7C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753369193;
	bh=MDbPjmD2foMbPQv9O1NgSo23+QC/YjtEdIHyBFfnMe8=;
	h=To:Subject:From:Date:From;
	b=Fh1GkPuqXcVr8wUweUWOyxOg9+mTzOAgj+trByovNtr5YS+Mq6fHwf9LHxS4xR4xN
	 UmeHTme1VXlAYdof03EC5EFqHPy70R3Oenpe1GJeF0/gzf6+stj46J2O5RvvHP1QJ/
	 +MMa7Lv07s2OJqEnDjyTpR13F+OnVjy0jmnjlqcG7+65vNyLS3tebonVIR3H6FzlUU
	 CMrfPU9i2hcK4nKD6NXssIWJhJGKvqxYMbHdH2PRngvTBQtURFug+o+9jBK+NkkXTh
	 TvshQpetOcZntgaxapkmELTIzlRkJ2lj/XOQYSj2rv9iiP4bPKJntoTz0/d2v7sAGr
	 vr0W9+AAvnUWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93351C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336919359.20224.13739647638840259987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7d1dcf4b7f07570181eb16bec7495116a8ac3fe5a1acb8282d8f76e1c0d403
Date: Thu, 24 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753369193
