Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E11D3B19B9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792260634; cv=none; b=kL/j6LVEuK7uaUNAioj4bsv21gbmQCTc7M7k1p1ObcAsNlxqpfETeRHMjRsNBFxR+jeIU6EnR6AJ2yAbghz2Ou4yEhBbaS98oPK4TLPE3YyRoUa5EHDN8OcE698QnxycxCAoTtyCuWbmmS2mavpIDL78vcvEwZD61Qow1hTOp5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792260634; c=relaxed/simple;
	bh=MgsTGa7epKJeyyMi+2y7jwY4XVgmcdL/hAhHoBAn2wU=;
	h=To:Subject:From:Message-Id:Date; b=MujPc3sxhq+58EdxAyOnHGitayxzY3XpUdRLqCPschhJkk88DAnxrEi7H9IE5arNcDeamQBSe/ymUBKkOUTr5/qIPnJiKBAeIfcYZ9PAy1erO/pC5upcSiphw1cccTfthxVJj6f+Kv7uI4HxLnhf6zsQ4yjPyrvQ1Ip/bmEeQhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NqJOuoFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NqJOuoFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6B0C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792260633;
	bh=MgsTGa7epKJeyyMi+2y7jwY4XVgmcdL/hAhHoBAn2wU=;
	h=To:Subject:From:Date:From;
	b=NqJOuoFkdRLY2hVPLb90yAnaeKosLKBhQZHkkVHrLaUSIUg67zsub+X1Jmc6oXv01
	 QHi+di+5ov1LmTsh1pxXwr4E9HeLUc0v3AO8WwHwoYJmW8Z1Bz48Dr9EcfVAKNXToH
	 ESJqT8KdySGjcIUlhSr+DLjXVJo6hhRiIZBKP38MoY5ARHPgZ+Zy+wWjiqD6bnWqB+
	 Z/2yC53P5PMCJNhFFKBJFqdAnnX2carsuljg7TfMGpzh6Kpu4Am3X99nFeXlMVNVZ8
	 ByDjuWev/y3Rr7/YPbLYnfEJzUiNX9ZMzkvi04Xpde/iELjOehsUsW0EdneACmDoFQ
	 /qi5E/KaRWj+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B9CCCF2C1
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226063372.25778.3491811543385576319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac91a809a34ba463d1256a8b330f44eb60d3040be09b83e6a84a692e888c2659
Date: Sat, 17 Oct 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792260633
