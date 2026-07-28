Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5663AFD17
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785240634; cv=none; b=k6k3hkeNoCcCzr+cb1abgc7il0ezhsrtHPQ+6EVjTCC/pettvi7q9JnrOLLB6y8drB5rKt31lpjrzo3rsbo+B6i4ME5/kBSdRQ6LMAn5D0qtVTlui3/wM1XNXNs8w7niJnDHbYCMzR+3Lshv35mYCRpP6FbPBdLUIy9ISkInUe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785240634; c=relaxed/simple;
	bh=Q094F+ZSUqASil2fpmXRGpj5v1I23AeDxQtn/nZhwVU=;
	h=To:Subject:From:Message-Id:Date; b=ZV9KsONUJDGIFjf49pM6zOQ66f83Rf/mLo75LuIcWkTH/p/iuXsPt4hOXQbXOSY1Qm8w2HyTIlfrrybtTsXGQBXaIMvgjTVshD5WiFT7zvF9/oL8IWLCumO2smna6AmCVuq760/i1/xjv7GhZs0PlbVt5TxDMKD74R/f1OxEo7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=su4/IIW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="su4/IIW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC78EC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785240633;
	bh=Q094F+ZSUqASil2fpmXRGpj5v1I23AeDxQtn/nZhwVU=;
	h=To:Subject:From:Date:From;
	b=su4/IIW3OxrYt0+qRUeupB4PFS5yFFIRVeT9Ayz90lhP/gt8HbepjkTBFK4UDo0fQ
	 whjwFFHXMmvOEv8CL4ktMKjDajF4Q3twOdqFAB6WnJ1blDssZ8uhVzQX7zira1rxrG
	 QXBZMc6ihkYi11YUfZPjFzo7ZyF3Fr4xhGPO7Qq6ZnagpkmYN8u8oiloUnD4Q3TR7s
	 VidPGUPx45tZw+kd7fIWlpK+9E/QFasggaptp2iEmet5k1nxV6pYFfEVyYE5KP6xzd
	 DI68epWFidbH2fcRuuykdzBA6HLY6DNcLfauecSMO49pe4fDXMx3sFnk6InErMAH6E
	 eeGkQPfbm8xag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DC8C53219
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178524063368.12958.13040446919630124873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6920e76f6b513d89feb09f6a43be7525ea68d9813f950a23423d024d0ebc2a70
Date: Tue, 28 Jul 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785240633
