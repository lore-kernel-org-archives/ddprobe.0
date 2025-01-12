Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECFB182
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736706354; cv=none; b=I83wsrh/GblV0y37IhlmZjZw+IvaiY2K4hiCQTfjo9HzHGv4XVvz/HVVMJEok95qytpOwnwQD4iStePOqrA/oA1s8NQ/ImidJb25f4Ep52ywdn8aaDHde47zWzSNgLjW9QywYEnYqB4pwIdnMM+3tblL7UuPPADHWBpiKyrIfzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736706354; c=relaxed/simple;
	bh=w/aEytbjfvmer4WPA2V1ItP+qYYp/mD6JYMNqMALGSA=;
	h=To:Subject:From:Message-Id:Date; b=sUEmBdlINZADhkBbzMsd2vmty+cavbk8yxd02CRqggC2DGrzFt6uW7S4XNMnMvehxEpuEvyfwAi0z5wa6PFbPDV/sTX1TiOow8zA5nZWdAVfU0vr31iFRcuXJuR5TKbXH7xHh6lPCD8ej7LAszFXj20RPnzqAPRzCpJck3Lwt44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHLCPspu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHLCPspu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADAF0C4CEDF
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736706353;
	bh=w/aEytbjfvmer4WPA2V1ItP+qYYp/mD6JYMNqMALGSA=;
	h=To:Subject:From:Date:From;
	b=JHLCPspuSBdf15AuyZl5svhojxaCbUfY+nUV/QdKLy4QrVp9Bywfw2jTDcIM4qu9A
	 nA6v/iu+bA57Zgyrt4BLn9eMJ5l2gH0Rl8XLFQRf8f4Q3tWbk8ZvLxKNUH5FBhDBKY
	 HXBsAyAteDxsqbr6XHnovPZzgfNSA8pE+cNfjVyhX8wDpaVluGjjXqsURHQEH3ddgE
	 VL8xt3mI+msA+J3eputZIymkuuI4f6EIwXMUdAjnyqhYEpzmlDXY7FPU1ooWuFBsqd
	 DIoi6eOk/vECfdwYHe3YY+BZe31YoJtoxMF45Hn7BWK9Gq4ut/BeDX6utwBzRArXqm
	 LMPHHlH0T0jiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D86E77188
	for <ddprobe@lists.linux.dev>; Sun, 12 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173670635359.8036.4788185877514440405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d4c72d08313823bf71a704b0270f1742234a5843ecae78a0c6c144f070846f
Date: Sun, 12 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736706353
