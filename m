Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34E38354AF6
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760791194; cv=none; b=DC9evPOItctuKtWz+UhR44CWD2QJJ8zpEE5qJf56eiI8C+S1hSflR73o7A2+wgMrKXVbzMWn2LmlFuWdUAloO4RFIe0Mx+FhrZinc+CgLJwTnEoKIejliGnSKOfcly+u+O6Ae6mcYOvb3I95EmSefnD5p/C77Y1W8HxMu3xLjsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760791194; c=relaxed/simple;
	bh=Y1xnp3785eRNiEYXIgl06wNlmBAsU3cqBdrxr0cam68=;
	h=To:Subject:From:Message-Id:Date; b=O2S6OETJjdKUhrJJA0jHvYsbWbrRNhkobSeI6HuxlmK6UO1xz05K1165rlt2CGVvjzNxeWGpcXVEp1YjVwl1S3BzeQqVToqOFpy7t43xpUtbg4goXOrKzbYvrGbJ0s1MGiMasFU5CWEPn0sJARJEN7g1nakteDt5n3OTnuw/Opc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JBsBvhok; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JBsBvhok"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7120C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760791193;
	bh=Y1xnp3785eRNiEYXIgl06wNlmBAsU3cqBdrxr0cam68=;
	h=To:Subject:From:Date:From;
	b=JBsBvhokz26P0CepFE2BFfN8sIw+p9ebm9ZXOvGMkEPEQE3lX9gIVxidt+c2TtiYL
	 4j9V4ImRD0srfhD7pseILEHgixf4FiI/ADe94jKs29XB/1eZiMmY9+wPf+uArHTjd5
	 QHjZIsXIbl2FGXyXRPpYXEeIHtzCTkulUqvVAbNPUUpq1JSZs1xAt8dEXvqPOo1DmC
	 OWsByaqz7ICw2o+LoHfuQoxpAaCie732DaDyBSH+Dk+v0GCSp23PxyausuZWdXRSFD
	 Z0PxRqjxtO2XFLN+0idwj4CmMt4VHl5SarpeVA/xXZpDs0PYhXYTeRHROJloXzjnTL
	 8XFm+XF+Q6FRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92724CCD195
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079119357.28479.7494048699506155334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ae97bcd42a6de6e4007d9dfe5749dba90f1bc3acd1042cad0eb42ffa9cff2dc
Date: Sat, 18 Oct 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760791193
