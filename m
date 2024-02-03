Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042E7F9DE
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706993297; cv=none; b=buzCCk8a25VE2ZTTE2VlvZEIpmrO4ii8srskdM7Gr5J3qZinEzAsOraiqgi67/wUUODgEWD8ukBtv9wjpRVsbBA2lqtDWSGn8ivHmxhk83BLQJISgo1Emo7zySn9dC8+p3GKNzhu+TmM5G+a4aGXH+qykviqzc+38og9ncKBBZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706993297; c=relaxed/simple;
	bh=0gUhi+xt0siQqMz2kpuARU2SbCbnfvU0OTjhAsFTMaQ=;
	h=To:Subject:From:Message-Id:Date; b=exKqdu4d76TSmwrfSnIeZaKO1wDx2FpuoeKUQqQyYm+wVhe7TtDHaeLs5fBsM5dIXyWm5MsPZGAg6a4Gff/bSFRCMNbjU8X3uMauwssNbAsOmHewAM/cSURSN59YqRm21H95g4GmbagzSsbvTORTZOuXsK0KnWQC+VCCP6O2lL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sLyYeCOE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sLyYeCOE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B559C433F1
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706993296;
	bh=0gUhi+xt0siQqMz2kpuARU2SbCbnfvU0OTjhAsFTMaQ=;
	h=To:Subject:From:Date:From;
	b=sLyYeCOEwPBzWVztcaWfR275gMnX3BPEmL0Wn8O0rmbEx5/XGsQubwetg/4GOyZVQ
	 Qb1Zko+tBej8SelOiJSKbeIjDSPHvwu5P5NmAGw+6Zqw50JVjyOSIaZAJUqL4y8xKl
	 NUYLbajMSi3nfBg51X3LlI1SnkAEL7dYfw2YHVAoLw9PscWL9zPiShe0pWVQnWlnoG
	 ULvVcqtUvFc6gWjHsmCX5MC9D7RNtAePGlzSJHy3FLtSFQ0g1GW2LLnypXVI7jrUT9
	 mVmRrtiGiOX+bI5OeDcHFpxwBBoEqbzr0Ut5DqyNWyQTyjxTTr+a43HGeavCbRbGKU
	 hB8CqL+LbDewQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6062EC4828F
	for <ddprobe@lists.linux.dev>; Sat,  3 Feb 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170699329638.18896.4795234400706557224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9132d3999918bd3a339f0c1c912442c5e59906779c4770964c9cab0c2768b34
Date: Sat, 03 Feb 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706993296
