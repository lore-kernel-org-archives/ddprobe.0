Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0DC233714
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753310994; cv=none; b=fTJz+Z9hkLIgQtwjYsxCBKkfoPpbs3k6EJcT6MqTDGe64NYtMZvu1UUPWOoQg/gKJOaiJs6YqPrmfXrucAYiYBBiZMD5KIjiykghttb+54h0mmog5Vq/4oG/JwkCz7EQu9t+VxsUPCQkdr6NdhgLSMLtxuQbbCOvXFzPQKFLntg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753310994; c=relaxed/simple;
	bh=d1+X5EYF8zrhQkMbkflfUuXWApB2ATh//0f1Csh74rA=;
	h=To:Subject:From:Message-Id:Date; b=Lax38Qc5alOKP6xjV+O7x3jMHwwU/k3g71dvt3OwXn91TneF8ZWGqkO81b2PYdAGqYvGxeyXL92AByFVsudOhEXdhTz4ZeJ//iEsuw/f25ArVuCN/x7QyNOF3i2K16/RckZol4mv5SQjq1HvtCI7znoN03xfhmv2f+8Mx3CihoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H6TcDozG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H6TcDozG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31BFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753310993;
	bh=d1+X5EYF8zrhQkMbkflfUuXWApB2ATh//0f1Csh74rA=;
	h=To:Subject:From:Date:From;
	b=H6TcDozG3OMbBf9OGzNK9uMJUB9fpTxX+3+kMMpMElJeutAialEgiFLx7hvKSP/Rf
	 dfjIgU4XcD4jeAF/zZEMlhAID/SChJBsUhYk/MyVdfwBBOjoa6vdlSm4Q+GKDF6MK0
	 MTWr3k4xJhpeIK25xND4BrBRjdv6BNYp2pDMPYUzt3LP8wjmGQAT/aVPFLWidP+TcY
	 UI6mafnDxKrt03T5ThOpYUULBO0kcRGJouZ1DWaY9vEFaOGIACQ3PeTCB2wA8I1j1B
	 fzaLWCjjOsktESKXI/Dc+sfBftCV6aap3Ycfuk9hjcLpmUp5fOOCtt4pSC/UFpWVQM
	 KXin/fpMXs8Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD6C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175331099357.13934.18046210889774105281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a32c7737b4b0e87f7d59deb3465c73275863713a7c823f82f218b67ff1a2cde9
Date: Wed, 23 Jul 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753310993
