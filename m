Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456D823AB88
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783174714; cv=none; b=YHiAbhbjKfDd6gfUeCmQ9HgAzUgnB4xJc9dTiIRh0PGMVy0S9aNkAp/lG7XMMuwbCFPnDqRq5t6ZJ09C7maoD+vzP9bgmTN8o1eQRwE55sqRAYLaoRf82k0ek+aVwoXA0kcEIUhgzMq3n7llJqG9NQqqoREnxZsrsG6Vx4+xhLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783174714; c=relaxed/simple;
	bh=yJPdRH2iyUXEIjVcASLo+5nWWS5/ilgj8SyN7AMjrbQ=;
	h=To:Subject:From:Message-Id:Date; b=AYsLgjQR288kejdyRpG+OKaxN5cCnsCLx9kgls/nvkUO88gjRoQEyblndyaF/fdn+KS5AXGdfzDtvA4jhevhe4DssUlbca8jSvsFPX2WRJEW9VNsRS8aqfa9PifTulcZftyUZZ29QTU8GhDUVZ+JQDYqpLkiEExGLB/xznZZPKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QpmlMA+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QpmlMA+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF35C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783174713;
	bh=yJPdRH2iyUXEIjVcASLo+5nWWS5/ilgj8SyN7AMjrbQ=;
	h=To:Subject:From:Date:From;
	b=QpmlMA+4xiwdbD/pgz945jkobCCIb0parXr6Umz8JhB+2AYjtMDH2dwvJGJa2htJd
	 oIrBx3KVkKzSbJAzheZUVIXMUB3k07SrzLcARVkVqHYDez8k8mk8dybSvDPKnGMRx3
	 ciFheZnGHF3XF9EMbuuylagPwk7JwhB5wMQis9LH84q+D9YPIKwUGQjndBigHNtVCM
	 fMd87Tfb2NhvqP9dg5iV+25p3yDoogxzqbHEd4whNy/0WEbTnMk5swwON6niCtSp2T
	 lIu3LLTnd8qlXjCjYWDCNP7b2R6D9LAGvEEvMhdA/nnoAeL6yXHCYMKvrP3dKLOUbm
	 4rB0wz/RiWcTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE588C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317471368.14691.18323326280857975527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0fb0e714a5859eb4d25cd2f5064a33df0372a3e2d93d0bd7a5d68d56357d5a4
Date: Sat, 04 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783174713
