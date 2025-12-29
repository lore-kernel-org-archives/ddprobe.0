Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB8921C17D
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767020634; cv=none; b=if3rUFzbfGeoPtG/sDWX4U/sNUnWgmOdtaYOiqoLqVZ2gZMHEMEH3gya6Si+HgRiRqV9CjrKq7sNlOQzAt+oJsLKG4NDrJO+rWuXfSyrB9CcmO/iSFRPRDfC8UvxuAapaND0Ef/I8uPzLpKLssHJg2pVgm/FLuHyDJT/1NG4tmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767020634; c=relaxed/simple;
	bh=vy0284hGRHVrtoSKkS/h0OOMgt2UXMKFxboVpU/HM5Q=;
	h=To:Subject:From:Message-Id:Date; b=XA/yJvbq2QCcq7USbeCvYP+KGg5NFkILqma4QsasYmtyk9kwAFYv6sj1nxhMpY13vsn07zSkqIwx7LWUxXH6AbabQFr5lAZYTVCh6e7Ly0OUHOwvARdnR7HYt1/TALirKy17cu9MY5nxu1P/D+KeWJHhWQzvRvMVFawEEDOmIm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WySu37O/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WySu37O/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50B0C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767020633;
	bh=vy0284hGRHVrtoSKkS/h0OOMgt2UXMKFxboVpU/HM5Q=;
	h=To:Subject:From:Date:From;
	b=WySu37O/yfgmVHKkBgiigHJrmDyjaGF+t0H2mwixx/3zrZgy7vas4S0MIzzpvQKoa
	 mJt2FEiGAmECSabojbQgWzv+Ta74Dg4es/OjD3SX9dn34XTCEOu1apKGzi0+jgKdO1
	 HANVdkkcBfHFXzvBTz+dCMDjEMczKtsqH1kV4UPpdSahVf2HvYcrgsuY7VCNwz6IS+
	 QdlhsRxgyVQlMliYcnWCwsXnoNekjUhfqfG1tcGPDI2VQdbFK3E5qDxcZQyjFTRPhw
	 Q7slIWjX/W14WcfshOfhLa6cBHUoqA1Wa67mzExQkudm3JAGCcTvE4oTYZhUVmB+vv
	 8gRQ3vclnyiTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936AEE92733
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176702063359.913.3816653357657572719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc394ef11e447c03c783812271e63b5a64b9bb377a1e03fd711e36882f0594c8
Date: Mon, 29 Dec 2025 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767020633
