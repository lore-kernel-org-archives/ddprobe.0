Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 714E8DF6C
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791163834; cv=none; b=dQZ0HCYbiRnpkL/6p8aKwb4oIM34sMO7CNaG6JuL1tWzqbPGfsP0HKoCnPSWBI5wtYA29Ovtb+nEJMDXhBwGG90/CshTy/2y0u+snspxLDE3Tdi8h0vrHAKJXvWlo2k99Yf9EHiMn4rEd+UcPYqINvC60djewcNB8cDdhMyXpl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791163834; c=relaxed/simple;
	bh=IXk2EopfMK5kzjn1vpo5za5yKWpkscRu6PdqPi4GzBo=;
	h=To:Subject:From:Message-Id:Date; b=evaDc/iKWxGiA+87AYxTE4r3yU+P2hWs3VQBjVGcLU7hOaBH8jD0BUes/kO/cAw7V+AgborCYvbktznyyQ6r6Cfx3IfFp1cpP026ZEY3m9yGBY0FAjjFfdUIMn+5JYKNGivNmPp4KTetIQu90Eki7Ycrmj7DXITDJ3DKmSg6mWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFkw4mSt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFkw4mSt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE6A2C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791163834;
	bh=IXk2EopfMK5kzjn1vpo5za5yKWpkscRu6PdqPi4GzBo=;
	h=To:Subject:From:Date:From;
	b=qFkw4mSttdgyYQX0mGZHWMMSZjmuzJIqoef5o8sn21uQT9J41KzY4iM4anh2t6nW4
	 cjQW77pNcTvosRDge3pxLaTYx7LzmaugTUOwlxMF58bs7lyYXRyjm+iHPfN/XTAjYN
	 Pp59EQY+fwHYA0AGxyhivtqrx77xYJp6XeJD+o2fbu1/qe6wWzb+gm8iaiFPrxxR3e
	 aqsrCO16OOVOwmQhN/kfOipoIlnZoOrGdT32tA+mYfNrj2++WVb8BTRZcdEs9m6FI6
	 Kxpr054gnKCXuCp1F0O0f4fiQZqJek/IB0A0reKXYE759ZtiEHk5ucdP3aH5fT3GMX
	 5ilkgMpWIKGQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC43CA5FF1
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179116383368.23873.17646936701435760972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf0b24ddf547324331c46435a745bce23e7a9b69d9e0213ebf7aebdc63826799
Date: Mon, 05 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791163833
