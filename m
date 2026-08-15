Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E4611DCB24
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786800634; cv=none; b=UfBHWmHDnbG/KAGFMnmyakR5HT2XTGFUcmIPCRWRAGgK2Jt0yAdfBMhY4+eyp6K984lf00hRIZSCYis8OzIPBCu+y/ey5/Fe8kNa5zD3UICLWMpNSpu9M9pDIlaz2GG2KoCwurVA8ECZleXzjUXLM3f0nt3CdsTftrSuoSrgoQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786800634; c=relaxed/simple;
	bh=XJc2GRHO7X6jBdOI/ElqMfw2a2TvAz0C8ySJxmKChPE=;
	h=To:Subject:From:Message-Id:Date; b=F1YVxKaoR4wIhXWI7dTRxdYQdgKs2eyngAz2yFQNJ84UFYq+41FZfEAfFRR/1EIK+zfpvOin9K0em4Hlj0OEOLshB1k3+Wp0h+KJysCYzxjkCZMOg/FOWbYNg1aYM5umNNaOJiRuiQhX5c+pJ+QOz7M5JM5ukaRBjN4HtVYvxgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0j044Kq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0j044Kq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAAABC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786800633;
	bh=XJc2GRHO7X6jBdOI/ElqMfw2a2TvAz0C8ySJxmKChPE=;
	h=To:Subject:From:Date:From;
	b=O0j044Kq70Jh9IQsr9yhUFS9zhQPmgjTjCg8VNGUHuoRGiexOEGcjA0oqrxInEeZY
	 kChXctV2nzdTTN4S5cASn0fBvtMoWeh78JmoxTuljTXUlG5rKxla7MdRXIh673ROZv
	 RiwUDfHcM5ytYi4fGMaIbhrIoOFBsB0qT6iBL2uLUjWj9g6LwdrP5+Xd3WQxfOOQkl
	 bBfhg4VSv51hWgDDLenmx5TYUwz0ApORTJQWsrLryevFuZFG/ZC/lukXYHs8ITA6n4
	 nw+EQjNsYXogoX3f22DhZXYoH90uf2ihpZsbm0P0Rs5ksycB+ggvhQtQRfchSnwFIW
	 gPkP50QSoU0sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5001C5DF6A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680063369.30803.11972068085742963367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 196473affc8e4817361b792e8baa83da650fcbe5101d0e43b89f093526cb27e8
Date: Sat, 15 Aug 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786800633
