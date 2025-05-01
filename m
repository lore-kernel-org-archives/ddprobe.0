Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CED34545
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746101394; cv=none; b=Ra3E5BtB6LOz7iJEKatFdJxKLtOZJ2hZMyuoVqNdkenStdd69F+00NFz2Agqtm6p6FXvDE/uPrI1Z+46iL4iZNrzpJS/Lr/8Pd79OayjMoQsB3h6N5UboDmrtInbsRk7Ph1lu1r4PkUotihRMlmMukKDUUNTBTEqXoOPXAfkhuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746101394; c=relaxed/simple;
	bh=5m+eLaO6JjiU062BKfOGr5nNSLLzdsBCCqboQumPesI=;
	h=To:Subject:From:Message-Id:Date; b=IfgCMZzMLQzrosYt5qtzm2m6ZhjgRJ0J3C0TZsQLc3E0EBKFOTOBfp1BDtntIJ4m83i7fTMCYxhk20GFlgP8tZ5TdduKDvvUOn/NUjueJtxaB8YFqEITM1e7HvafHj4tKxXl+ORp3mELwR5diqCs+hX27lAwK1TKWxEntGu9VxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSgKLA7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSgKLA7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0C8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746101393;
	bh=5m+eLaO6JjiU062BKfOGr5nNSLLzdsBCCqboQumPesI=;
	h=To:Subject:From:Date:From;
	b=VSgKLA7fhQIfI4mOUq2vZoC0jJMA9ss5u/+IDJpHSGknsg9+o1dJVtMbadTIeSYb1
	 9s0rbxyPz+jN+PDvCG8OWs+D1aUO+Zv6P4ReH2R5InoE9HyJlVOmiQ2rZsXmCS734s
	 WSaJHzzpU8n+Stm/jhU2Sg5HhgdV3Fwg0K87MkplTb76S/qTvZpPS4LLo+ZS9m/wmP
	 wjdS0Nqin5wbCSvEFhN3y12zcAyMbE9FrfJy89hwiqjJoS5Enb0ELoGhk2jxAGQF2y
	 prRYa8x12yKP96O1cmOA6Sog8OPj37bDCzgAyXFhIjOlZ26LPPgKBG9ENHrzQ1r7hc
	 zpDl3PVIC2BgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6E7C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174610139357.22906.4078786863940319681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccad867c2b5f3ebe433dfdb5a1a9667cfae3e90d34f76be87bd2513142bcdc8f
Date: Thu, 01 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746101393
