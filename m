Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DBC71DDE9
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 23:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713741623; cv=none; b=YCmhtg8tMcTtqJteSP0rthCGGeqkI/jhrf1v1Xk3D0zOePvQrGkNxnataudm5F7m3/AozRsu4eus1t0DdxoSsXVVA3PPPhwMpAki8cdBiR9bFCXmmLaye9GUUrFXzpoXv0KY1Fhw00PINgIei9hJbhwJa6agYj94dp5A+sEwhkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713741623; c=relaxed/simple;
	bh=So4dngr6NebH+RdTvMmlyOL/DLwfXFJRkxVPbiUQ1tQ=;
	h=To:Subject:From:Message-Id:Date; b=E+n7kn6J0HHBweMNl6iGcKoJla7cD3HSrVzDaPzJ5G/Lc8A+UZ09vyrFB4yCPWwv3iEsZFcg6fHdR7tZcRdP3f+Qf0JPTmYDZNXwxbH4ZTLK3NCzYpvVD0pX7WLI9YCRufA/Pcd5BZ8W715vBIzQBQxcC0uak9VzhGJCn9o7LBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmVOjUJN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmVOjUJN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCA9AC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 23:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713741622;
	bh=So4dngr6NebH+RdTvMmlyOL/DLwfXFJRkxVPbiUQ1tQ=;
	h=To:Subject:From:Date:From;
	b=bmVOjUJNR0IwkwL57hsWnBro1Kr/kgQQiqCfsAYXagbI57QOGnSL93DenCcD3DrW/
	 rp2+sLDokWvkSOoelxesaU5cHovXEPmDHkLnCnXuNCI3X5pcCaP/mipZb0/inGkkvS
	 XE1j/swSedjPdmE9dMFa6kg2eGf9Bt5+XLQr7tKLyLhQejgdbhoRyDqJl8B5SXCUJ5
	 qP8uA/7XcYT9deAUJtvu5Wl9o56rVjefClK8gwqu4j3ZzFnMzI3B3FJdBfN73SeSMc
	 o1c+alDRWSBRAnoFA1n3QgsNhLZRG2L3wnC7G+nzn1qFGXKCamY35wlTWPotzWDQ4Y
	 Zqy6eFXXF4Fmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA906C05023
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 23:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171374162275.20646.2027154451336634060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 584387e92c703654b4dd3a3a392b37695460bf48ee4f88a923f372ae4e1df86d
Date: Sun, 21 Apr 2024 23:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713741622
