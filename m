Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 613D2346A18
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792122634; cv=none; b=fPudq5FNEPhlCtiXDgxQXN0wj+GgDVWyb6vbSPQQFL45IJkBgNbH99eJePncL+U583EnN09LQ/VpZoAhG6juO1WdAsQKNXVjl8agGQYCcnYbY8ORHwwS4+hgLXvrofh885dOAjYg+S5EMKQvl1oRVHR78d5j6bcu61Gghfak9FE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792122634; c=relaxed/simple;
	bh=7yelJ4eoqf2d8T/clD9Fq+RM1xEkK7cgJgo4doqmczE=;
	h=To:Subject:From:Message-Id:Date; b=juZIisaX0dmgp2SjIo6D5Qu/GN7Im1Y6jQsKvNkew6m9dYHiHlvGROmDVUlh8Q3gA18F0f7A0DDzeQnHRQGT3uh2zm8eVhQ5enamhVACtY70uK2WPNJ4db72uzaouTuhkvPwkRMHNaaODLvq+R3ng6jsQ87we7DmCPDt06FO5TM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zg4MEsb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zg4MEsb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD60EC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792122633;
	bh=7yelJ4eoqf2d8T/clD9Fq+RM1xEkK7cgJgo4doqmczE=;
	h=To:Subject:From:Date:From;
	b=Zg4MEsb7kCK5bjP9TUpiltPDkku8a3GIckF9/T05lvPP9JMpFvPBYTelzz20VM0rN
	 FRGz14vSB76ldklzrVEKaA832kcR3apjVz7wLrw6tc1Vl0+yXSRmSa2KKc7qpbdMZR
	 SNbim5I+6txO1/7YKltnWaoJevurloJs7S6BxTSvGH8s9rXjxdHvFXopAmIAzF0DW/
	 B1ImKFDLZOL8/2RaCa4cum0f50L2nYkgMyeSi4+iOZASTFIqJPTuT9EJxdXi5wFfyU
	 7s984+2PLmiRZh9nwfZTFlU74SdCqdRnIlHDu2KO5pTPeFKFZx4lVX8cguTYX3dQhq
	 +o10bQ3kVyTYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A85CC6B2D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212263368.11891.2719000398242855549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a778bf2ed1c9f95bcbcbed33e38e5c16717c745e708699bb4c140d89e3aa1537
Date: Fri, 16 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792122633
