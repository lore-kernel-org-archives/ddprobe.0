Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B5151EB46
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712663297; cv=none; b=HEjQ/sfq7w0n2U7ApJbyuS4npqKG+VIv47FtRpy7yBbrCJ6LN17rXvxakSOpS9Lkwso15BihQeNJ2yVsMwmteEtjyA0OF/+iJwY8k0VAJ5Xwq8Nb+f1iBtnfTfEUIYq3KV88aZMzuweHTYVJRpxcqX/7jY3eXlRtzTFxp72F43Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712663297; c=relaxed/simple;
	bh=PhAlQ1D3p+fT5y0gaZJZcbIGOeJ9UebOg6VXHSK8eFk=;
	h=To:Subject:From:Message-Id:Date; b=H18gtVdy5bPej8vR8c9OHWE/c9DA2OGY/gi1PH2MuAC2uXQ6fG2WY2N/SvR/KoUNRRKLnoCAgTvNNU6zwQtmgTwh1ZGmIjrAhlk2QOUcAfTRXxZoqpK4a3s1TOMLy2PK3klxagUTQqmsPAewFMyb7qkNvuTsI6lyclIF8gZDkRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOn2J+H7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOn2J+H7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78CD1C433F1
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712663296;
	bh=PhAlQ1D3p+fT5y0gaZJZcbIGOeJ9UebOg6VXHSK8eFk=;
	h=To:Subject:From:Date:From;
	b=jOn2J+H7ia7cqvjtBXy/LRvnisB5YgyEztlTVEA+FdDd6s0SMZLSiUt8dh/9vaUCF
	 +jAG4j2B6mzvWMu3s8S2X3rlEGMGnKi2gPmfACeLGreI6cWZtmmbkjSXh8ilQ4HQav
	 x0ViRYKv1NmFN2WMP4AP52dfl5ZrAv/kjodJsvnxDYf3iM83RohGECPN9mZW0H85Ua
	 fvcCJh8ApSw3Y8gi6y8gxmCTYnDxj7xhrmhm1Cx6j8sZH028ziaDHZBtOzoC1+PWFJ
	 uvQfQ4Pz93wdInQ7BIKqpzlUf7gvHEjlby29DFBpXCzm6EbGhBmpzMqCE8oB1NVrig
	 QnvOgIuREsKcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6949AC67861
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171266329641.17628.13356462901502991002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b195b44782332f27bd4426fd8398dba7b0702cd843b90e33c588a7a2362f0a
Date: Tue, 09 Apr 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712663296
