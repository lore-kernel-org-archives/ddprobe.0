Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 466DA225413
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779919354; cv=none; b=HocR8qvId02tvNKmzdxNqX3nYe3N3tarE2AMEDQNnfrNw5tEWSWWC0m5Hup3Unq6gKkw5URn2nqY8Jvd7ZazERMyIeMenV0h5bsgFUeNKs8gk6aak+lvzBIWxyopmW3Rc/j4v+Xcc5V11Dn8FYks83/N/OhLsY3XSNPJPnc1vDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779919354; c=relaxed/simple;
	bh=gk8IZAsvUPFa/p+YDDyJA3JolOqHKtxzZMhnAdhD5w0=;
	h=To:Subject:From:Message-Id:Date; b=MEO+uaVf8ly5f25suoNOQdqL8sRW0Q2dHB1qWpWlHhIjCJKZjhxV0QQMKeLNjI4LxQ5lsZaRqKsfszG6K9PxgqRzA0n81sopNkJ2/NSBrsPJTE0Ym0cZ6PuqseVcfhCRSE5DTLsq974rm9raOomddp7eaTDIWUHdUBn7z/U/syo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2NNg7oI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2NNg7oI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2995C19425
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779919353;
	bh=gk8IZAsvUPFa/p+YDDyJA3JolOqHKtxzZMhnAdhD5w0=;
	h=To:Subject:From:Date:From;
	b=a2NNg7oIfeb6I0uKYqN3MSk/JZAqkzv6g84IHlvt5MSWM7mXIDS5BumCUMyp1AFyh
	 3AJfhpquLOeNdziHgWxSqfs7Twh7nwi1xHLFaPW8IWqR91aAMutxJ0sDKA4dee9wyQ
	 2A2Je8QvJFv9cjpB2OuTMDqfnKYZaNOIM17mteBFkGER0BvX4Gg4rpsEl7o1zLrj9p
	 3JB95EsVMbyQQlaAcPZe7DUBEk4PPuCQ+1DqJdiQ5dGFDOcSDToSAtkpb12Dv3QD1Y
	 AX2l9MbO2h1fzVH4pipoa5wOhz6rFGblyiMxeMSCpYgonbcrWXLcSpjeNiZ4NQ/s5r
	 cao5Sv0Nqd4rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8496CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 22:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991935368.13459.12532009479708710904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e1941d98a861e41f4f381bf32e56c9e1ebc60776819fe7da400bfa31f02c42a
Date: Wed, 27 May 2026 22:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779919353
