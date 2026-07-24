Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB782749C1
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784892634; cv=none; b=ccNi0cdkahTSEti7zzhPvrbZNPuB/T5veGN7/r734r+mP0cWPuFYNF0ht+7WNMjQ43Gptbx5UmbH0C4gRoRkoVedPcSZhAjWnmRMJun3730Kln/95dGdVgWogP23K8wMCc2RGQgOiLIjyQtB18uGrbDgSTgyE7M9ERcYgNDSv1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784892634; c=relaxed/simple;
	bh=XynUw2IuU+kXC6/m165TMhAxitHm/Kc696qRsfR4pPU=;
	h=To:Subject:From:Message-Id:Date; b=ey4wA7ZQZfMPfQHIfaejf7UZCaiCPRC0YHbPaR6Z40Q5GY2iyt/9auXeIGvziFlGSTVWD/uwj4j2ANymurmqGG2PtZF45cP5C9qW+DR7O19RwRVdH1zzS0In6CfTNfPyQOKtZ2HOzKwlvy6t2gXkOCpcgfen64tn3HV0/VPKTLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gZovltUm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gZovltUm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE47C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784892633;
	bh=XynUw2IuU+kXC6/m165TMhAxitHm/Kc696qRsfR4pPU=;
	h=To:Subject:From:Date:From;
	b=gZovltUmrGPVkGxqHyAEACmwir/aAnqvvq8TkxRe0uzAupmo3GSxKXYvRe+5dTEkv
	 GG4QFBOKK6+dZJF++58YE4kANX80uAZZ/LK1azvnoYR72Qbn/Jlw61QGpG1TQZZTQq
	 FR5yfe+UFshBHv9E3tWBCD+DEWHgjpeGT/fmVhdUwwwskp2VHEQ6G9ZTrVKpXYax2z
	 xYvg93ZaVRuZniTMWdTSos/zoE8ivjocfmeRd7L4ejqFV6XH/FUBdMMe7Ev+aqNW8H
	 arq9sabdw34OdBMWAD5kotilhi9UkJhPAEDbdGdplxseaoPfFXOf45Ss/XwlMaovTg
	 AkfA8RvQT+C5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A89A1C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 11:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178489263368.28690.10932060629850264030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a340894e77b5dcd232c2bb5327b59dfada1c2ae8ac937b37865dfd6d25dff9fb
Date: Fri, 24 Jul 2026 11:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784892633
