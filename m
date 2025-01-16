Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D961241A12
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737064554; cv=none; b=X6mUD0QEUl/IotOeibErMxaoWoQ/NiFkmV6I1c9/csvrYkiXwWqISImmilBCIuwcQjTIQNCmtWOvPFGDqcgST6I6xm6CrXcXTV1wgKEnVJ1bYnfWG6IwPtkH2IxP5c7b3B8ONoLZE5/ozYibzmCmiAMDkQnpslIaPjrq+gIx8HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737064554; c=relaxed/simple;
	bh=GWLFCaAG66T9nf5Ks17VYSalvOmOyu8RgWWJbgp9KB0=;
	h=To:Subject:From:Message-Id:Date; b=kfnMiaxQEDTgIhE3ppcWHpv9Y1ikWLS2heyCGzYn/OrukRM4SoGW9P+z8OlvLssJVOQdzu64RAPK/d/KvW+NitoPDle43ljYVFZKv2OwEQt0X2fR+6E/Mxj12VcfN8PN+60RoUig9pCS+aqV6w6ysJpJLaYbfmvrIDAnMgbU+pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZtuqI0Zi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZtuqI0Zi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2494C4CEDF
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737064553;
	bh=GWLFCaAG66T9nf5Ks17VYSalvOmOyu8RgWWJbgp9KB0=;
	h=To:Subject:From:Date:From;
	b=ZtuqI0Ziys+MDAcl+fl/Bg9m+a6Mxa8cTezpxlNDFAl28kc9qJbcqM8vzzZkEEo/S
	 Dl9OoeYFkvgGycjNAghHuqNLyu6dMv6ROqkZ9tTw1Ld8p+3hxn8x81ozPIZOPkJGV1
	 0nnvdDFh+0EY6YM85izOGIIBtKws+Sbc/8kDTaG0n0JqFp8nT49a1Ps8B68bWnrqXn
	 yUsoEI2xYLurN/IRX32yDQZUqNjKcsYDSJDYtxEdUZ1gFAcO83Y5Rcmm+MO59DU0Tq
	 xvmXknpudv/T2UftpXVXlDoLGdPnSBbgaycHvRroR89SJ6Qo1ZKrG3ycsWSfuxoyB8
	 o79n7TmbGpN6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92317C02183
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173706455359.2206.4592480180150681480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4d8c9954c9a0c2be9708b00d83b7a5251856c569278ab91931ce153572d909
Date: Thu, 16 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737064553
