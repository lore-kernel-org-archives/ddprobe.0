Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F872107
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711290496; cv=none; b=M1A4m2ovE+ngVp4Xi/gcZqBbX4rj4F8a3DCvmV8I5CyjgnYYse96g/rDKEv7veV5o6TZi/fi0xiQcclGZmsWDH8hiYgfly4diqMWppTggRQt65yNXnakHCt1s+uurkY3hL5HQiswpFZHdf+//v37aKs/0teQrqYHQfn+8UUVQtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711290496; c=relaxed/simple;
	bh=YrM7lJm5fDXc6wRiEpFMJN/U8kFHUd8ZSKLBguvWb7E=;
	h=To:Subject:From:Message-Id:Date; b=sBxTTCHbul2bmSuyz68oAFT2A1Fh27qy25JzzYNqVxEqRoll6UV0eaL8b89IO+D4UD45HiQvTt/EMaARztDiv+tI5bMH0gacYlF4Ia/gZJtkjsSBBOzZUkL/kML9qypWO4G8Ca0tTxtzE6htxZS9M00xj8DqpdFz+xwxOyGZsPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rffcNMO9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rffcNMO9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9091CC433C7
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711290496;
	bh=YrM7lJm5fDXc6wRiEpFMJN/U8kFHUd8ZSKLBguvWb7E=;
	h=To:Subject:From:Date:From;
	b=rffcNMO9sgE4MWRn/Eiepas/HNd4Yp23QJy56hA6ssDy/2/gJl3nciQ339FvaRqkQ
	 VdNTCyLQUrpFu8YodLvNM2GJJr7ELXv3p/c1Q7vIGc185ETaqCs463m93Pstw6tcst
	 anJ43A2GM97XagteJE11XURSu0vdLyyDh/u2xbcCyOT9dyo6WE1letOqLU+FGMno0K
	 SRGooCQA55tJ7/d3891Ifz/J/6fkhimw9kxdKqNPTc/xGK8N5/qcHdVPQ6wf4UxokC
	 QmN5iGmTKdOywVXn/a1UurUn4n073LBwFLdw1Vb3omJx17TyZJSua2UmGdkiZfKWfJ
	 OTHjSTL0wKufw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E5EDC47DD9
	for <ddprobe@lists.linux.dev>; Sun, 24 Mar 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171129049647.30445.7368039711233649289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e142466ad388b507e7de49f00bc8820218dbd852186c8f37c7ab3fae3f2f2a6
Date: Sun, 24 Mar 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711290496
