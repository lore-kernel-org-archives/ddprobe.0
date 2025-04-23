Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C67C12E1CD
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745381394; cv=none; b=lzdXvWqFOWrZO5ZjtgahoTLXNLYqn8iJK3pwRw8NLOSSjZRP170gHbCP52e62sfq3pr+5n9jDF5+e477lQbuVQGndxK9PAEqp5jasVUQ6+CrZ5qQ3N6G79DWQsUWYK8LfCJrcTyARnRlC6kl3IVp3pU3kjOsbaIDeVB3CsQjqx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745381394; c=relaxed/simple;
	bh=1XbY50lkjmsKNqiBgaCGiEn8HIZ+MOm/8zYhNCpO5/k=;
	h=To:Subject:From:Message-Id:Date; b=EaxwEL2jcQ4c5Za6wGJgKBcZcxRCiaOv7WXIUou0gcsr/KAOyWq5buhxP6jLnG3C7aQ9au7RYWarh1nwYPR/9MeM9heqSe4MMy+puIZEby7AXNSnKb4BERK1lmJFeUPmXItcgtGM8L3VbTK6MkpZIwGj8JKN4KDuXLpTEzUvsnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFLLjuSO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFLLjuSO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5D3C4CEEC
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745381393;
	bh=1XbY50lkjmsKNqiBgaCGiEn8HIZ+MOm/8zYhNCpO5/k=;
	h=To:Subject:From:Date:From;
	b=cFLLjuSO0lod9o3yZwBHjz1Sc8ZZxLCEEGRA8cv2dDu973deMci/0AcSpP5otgpeN
	 r8yhcoQhPHPN+GKhJej4s9lsB6/IFxNGt0iKaUdjzNpF10w6jhGRCDb4l40NGzwqK/
	 4Ey6H7EL0MprzQDG/2PiHfxtL7fJ6L0yFTA2sN2iJLk/kkRyFzcrfwcHwYRlD6jnhW
	 NV5e7t3ZCEbsT8Fvxp/DL9AFxkAQs8iZong7DTaNYm3NveieB5A70wUhSm6EGQnz4x
	 ezTuiIl/kto6sNLGM6OJWcu6pOgti34avM1e8mua4SckmjTuQELIFIxJDWT9KpDZx+
	 C2RnkjP+ZFIpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9587DC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538139359.16990.669167016282139447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e5b516150457e5a647b77cf929d75c10eebcb0ad4ba10cd76b9af622e7c894
Date: Wed, 23 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745381393
