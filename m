Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121DF29405
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768784634; cv=none; b=IwUSHGLJe4qkVMm1OVCsDhQTwIzbaOC3ySRPNKsG/Kt7IndXNW0kz96WSXT2Yh9byeAej4hS0ttMmaKvjMjK7R+aiGcWQI4ocxMU2I3U+nwFXAdESx8fU5m+8zRggGiRAbaZ5XGDixRZjt5maoia0DhzaujCFIVju4sb6v3Nrqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768784634; c=relaxed/simple;
	bh=TaZg1YboHybAjh8LDzep5dFd+rAoFRQLP+QL3lTlCdg=;
	h=To:Subject:From:Message-Id:Date; b=hdfWBRbQTlVYPBNzKWWOdm9GvkNH73iiSCxlJ+Iwt4Vdn5j9L6JKY21WYDzsk1Hh45/xDkwzBqsOQTIkkxvdduoQ3hNkZmBP+2XHjmswrZnUeJXNxvdS+NGFIaeaM/bNQqFkDvhf91W1UI9td+hymEoEUwRtXZRFNiRkjHdBnEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxLIPUQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxLIPUQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A983DC19421
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768784633;
	bh=TaZg1YboHybAjh8LDzep5dFd+rAoFRQLP+QL3lTlCdg=;
	h=To:Subject:From:Date:From;
	b=DxLIPUQ9hHNEjvBHVI5oF7y2DWZBNXinhALKFoRJcOkUJ68dw9d7yTe9EGXYvHbvS
	 hDnbkStgJkjWaCxnnpQtCtaHIaGeJXNofvvxaZ823u5GbwF7vpra2X5EuA4dG2AgWZ
	 BAkNN+YdNK+qX+lBLGTkBVQFJuypcnWCSyrhQ1uCvS1h2IAT9NPiNwNtI0giewSkSM
	 eF2g5IR6Ceo77wz3779KCKnrJDQEOWVqeh+w+zkG2QMiER23fmCn7s/7zYjVpy9fLe
	 fHT2hz526qKqQpBPJ2Pz1W2PunADOxKpDU7iBif0FjTrQdKYzWZg6rjDbyfzMYOiSc
	 MFXfhcfDxl/pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981EDC98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176878463359.2458.6816967474982207027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19281756763e96fb3b9d9f3feba80b9efc100657e92408550d3f254efcfc150d
Date: Mon, 19 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768784633
