Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C53520B0F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719630263; cv=none; b=ty+kQaX6k/VIxCkiE0M7d1G1nNSe57n/CRm5Qv42mcB9WfhOUUqcLPT1jAz3f9kq2j79pj96D09LDe7/u0DZaDeZaJ3PElmHuCzPtSI5BPeXsvaP498+hWM+VR9Pf7/7vuu081/wXUsqB6iftqf95tryZgs0usv/rB2M5ft7Gqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719630263; c=relaxed/simple;
	bh=Hq4tHMBrGJu8IiVSF1njCYzj4Csuxt7Y6w9KqLqFoXM=;
	h=To:Subject:From:Message-Id:Date; b=lZJa0XvANnqxw4ME2m9p8zS2uAXsyRgRgtjy5EqI/kozMvNOSRjQW/a2NK1vSWVNKJAvZdcw8ZWbW2Rn7XES8CYvJBYkbBQvdMyIOPBmXLnFEdGGPJOn38XEhfjmsfDPYaaw8jUW78ny7EJyGHp2y704Cl4Aj/KUEGQN+RbwT1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6oupUbw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6oupUbw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE7EBC116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719630263;
	bh=Hq4tHMBrGJu8IiVSF1njCYzj4Csuxt7Y6w9KqLqFoXM=;
	h=To:Subject:From:Date:From;
	b=H6oupUbw2eUXY23tb4so9qA4EMQPfFGuRFWrNsY/7qZojL5gMsB7kTUHaEiZSwZb5
	 xVv8qEFySANlrwIa8YySHtRdHYqMo12g0YeQBdAl2Ekrr+xGgjionjQSUReeNtDqqy
	 s7o3pvCt80GQN8IFz9PyLzJxmDT/02R1MTxTGakz/Gfzq8vZhisUP3AGmluZstjfgT
	 jM9BFrSYRJZX0ygrY8o3qO9RY4LlSoYZpjgBpyHpjFzldFxrE1fglshFzeIWdzUlkr
	 Cxeh8QA7xjJpIkm7JI2EptVGO03ksNcQGtKptELkCCMQLeuHC3bTSdci+snIunPq40
	 Zkb6AyuLiRz0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5615C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963026281.8732.6219159472492275550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62fc99628d169c083651eb1ead301b517ebf9d9c0bc22a469c639c6ffad22b69
Date: Sat, 29 Jun 2024 03:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719630262
