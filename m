Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6F8335066
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778457034; cv=none; b=phXPQbC/Q7FAGFpU3PHoCZcNXSyyVLyFg6Fe6SOVk1NludkrR7UGxu9ejRRu28044EzwqRI/THDX7zpMpWvSUFmriNXPb51PC7TG493VKac01A3OzUOyyyv0VvgMo1lgm70Tak31t/5VjeOHt2h4lZ+NuqlvQO6CtYxK3/pC5eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778457034; c=relaxed/simple;
	bh=TqIa6Za2PmqgKhDFn2fCzukuNQ8Z6hd9udiZoKqvpNo=;
	h=To:Subject:From:Message-Id:Date; b=IZlhxf20xS/1cGhGSKAMfoouTvvfp1wdTqQUVYSPQs5aFaTv1Nkm/6yoKf6mggEKB54EztsL2UJ1v0URzRAQY5EvTOYA1F5A8Istiikp/RsOw8d4z1heiEVv5wYTS+T8sKBOYXF1WV8jwIU34m9AMZbHpsyD1Bc083tGzwpcRhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ia40KMkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ia40KMkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C36D5C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778457033;
	bh=TqIa6Za2PmqgKhDFn2fCzukuNQ8Z6hd9udiZoKqvpNo=;
	h=To:Subject:From:Date:From;
	b=Ia40KMkGyA3mVB1xpk1NbFmg1sPWNHab9X0czK9gw2V7h76T9CWUsafbd3dGNCrx9
	 ezqSvrkeQVvIPOyojJlGfG6CTm1/c9HSTapxhaAo0ZwABWnaLf8RVv4V8jTDyI73O1
	 NCaD0gurqu0KHOydsTlQ0A3dZB+Rn1doozfspFntKosu+D0pwQb/ELJabAkFsj2B8m
	 94SYRU/jtKrjFWc28cuezkD98uppu+NX+RO5zgt+vZd2PKMfM7i5oFilgzsNSbOBuf
	 mO4YRmKu4y7tmGThgYSW9nFuVcyv9mpC6m6VYZj80BnWDIWcZSJTJ80KfVEPYDM/Tg
	 O+QtWbtFfI2eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E81CD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177845703369.22150.17066841207524079304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fef8d44a762a744feaaee73f80b61385e77d7746986ea90c8e3940f2ad45bb48
Date: Sun, 10 May 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778457033
