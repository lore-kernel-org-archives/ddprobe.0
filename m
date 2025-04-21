Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A19C10A3E
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745215794; cv=none; b=GFqV/Ns0rL4c6AurTDLaa0dsP96i204fgWx6dXoRZt77HUJpWHoxRcJdt7D4B0JjltGMn9nFcw3o4ZMJLIyd3tpBqNcU6V2uwO6Op+IF1NKyLxQOrTckgp2qbzXBW+A5864h7LC9URc0VbdztVtgdAjvMbLSGa11xEQsKFpDkQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745215794; c=relaxed/simple;
	bh=ME4vOFH6xlu85NJW3ClqgaByWxLuZhHAo5TqHPhY5A0=;
	h=To:Subject:From:Message-Id:Date; b=cHfw3hPc5yL3snmfkV7bpWksCt4zeMvSBq5iq+iOEwI5g18QEP9Jhb0+nUewXDCgbQNQGz7tSgT3hFXN74WTGpV7z5D60Ki2ZB0xJ2Ejis0USspOlMtlT6TIfvkmQV16UPEUQxf5pb1qSmjEClOcEOfPpEvRQ5378Vu+RM3ytyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOyd4CsX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOyd4CsX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2288C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745215793;
	bh=ME4vOFH6xlu85NJW3ClqgaByWxLuZhHAo5TqHPhY5A0=;
	h=To:Subject:From:Date:From;
	b=GOyd4CsXHdXt504KZYWGDoQwIqvxecNHEBv0zGsYUa6n920KBiWBp0r8E98y1mSCj
	 bgTvWkSd/73Xt7ejzqpCjZ6ITd1euGkqj2SAkI7+N+gcv5K2NBeH+/+MmaFNr8dySo
	 5J4JJL9HyygaNHW9qw+eWNd1L18BYTO2Fq849NvTPlBqXlX8vtIKXueViFDJLy4QEE
	 tLZJkTrgFDmbGU3qFYrBX8VgdlBKeMKoUAgjSXHaH1zGMH5Y6gwNFyourZnEtEGxs0
	 Bu/11e7724X4fSx+4Kx/9Mrqtux8QtymrqxMm/0KOer1ViQQ9lWFyPxovADp47SpgP
	 gnxxMPqCfPGGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7CEC369D2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174521579362.4466.16080028859709950971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cde36711fc99ec3c19c0e02c76db0cb03db297b0480b395bd1b96abc5d1fec3c
Date: Mon, 21 Apr 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745215793
