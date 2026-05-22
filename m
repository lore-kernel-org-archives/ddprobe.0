Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9EC1DE4FB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779483754; cv=none; b=FAKT3Q74623ORxC8IFnlEq/UKOIMiDzGt1bWb9nX54cl3ytOHtz6fT6hmPuLao2ucE8UE9bnKLqF7sHVT8Ir2f8KAkq73TD+woQeqKL1//SVCoTo1W+1fZ6cW/EDa7+Jqh/0IlXTU8X02xdrGduGzxVtKP6wmsjBUN29v3FU41g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779483754; c=relaxed/simple;
	bh=mdO2sR9zgFPhb0gEHGvEz8nkCQ76ZaRtekpSCBjFU6w=;
	h=To:Subject:From:Message-Id:Date; b=Fu1mkKawgVp4u0BvVYZtnx/S0CSRwCq5uB81kxSzPB/YhU5sw1o1BQJe3myU8mU7opKiGXrl8ZtLpYtfJlPFStoN7ck1hUs68/Bif/iAA3DcNJdcSB9u/1fPHOXOZjhUm0uX9blO3CMCQ5hf7ImpMZrjjqFy1NLS1klv7GOFy5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCG2zTTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCG2zTTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8673C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779483753;
	bh=mdO2sR9zgFPhb0gEHGvEz8nkCQ76ZaRtekpSCBjFU6w=;
	h=To:Subject:From:Date:From;
	b=VCG2zTTP78D7xvECcRhrDEcR2XK15+WqZb4qU8BXQFIbXecOX2BNuT7HwYlIhgWYE
	 RyGPk/XJHKL7C103nzuKKaUX3PRksYsDe7E0j7KC7Jwd4qEGm8Sm55esnXdoaH7+vr
	 Fo9Ox3vQJxS+FLw4M4HdAAFqcMpD/9/cdp43Oxcp2v4ufAkkQK8OLhMHRC8rzx5lIP
	 LZVyoi9ECaj5ZW4FRpwpTm5h9dC8hpDO/x56HWW+I5f9uJDfIvsZ2U13Et+29QTjT7
	 cfCEzASjJYIsiuvnCJUEOSpXOipBdD4VUKUYk/xvxMGeVh0ryalRWBLdEypNlP3AH1
	 ZT7COh25/sNXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2DFCD5BAC
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 21:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177948375368.12641.17935209408101574634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c709270a6161ff7b505935ed6130be8200e3c38347c58faad31339eb7d53f98
Date: Fri, 22 May 2026 21:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779483753
