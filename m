Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172CE320A0C
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762267794; cv=none; b=QpDgHp4b0snIjTXR88tZ8tirqeFP+51DtCyaS6mTFa7wlLdc1BggojJsewLriBA6mbX5bszBm/GOWn1FwwcnsAQXG7Uk8D/X+1m4Hnxur68BU36yOm4VquWK0Yjr8NoricyiZheoyvJ97MWma1aWrRZsFCkk0HiVLFWDFJKH4Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762267794; c=relaxed/simple;
	bh=12Tt3dfppNFgsv1uwcY2uRl8MTRugp1bjjhEl9C+i78=;
	h=To:Subject:From:Message-Id:Date; b=kyVY+nLvQj5WSATIuaqZPna1YozW093+npl71ZKudm1Re69w0Ff7Jv20U8yWMz/xYuaJcOcTp3kmHBXszUj5P1MYzgi1RiPWfV5Tcw8KQ4UGHgqNC9W+TM3QTSivMk4DteCYXZnOQOBrJjVtse4b69Pukrb8YHL6J1O8l87giCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tAAo3Pq0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tAAo3Pq0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1879C116B1
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762267793;
	bh=12Tt3dfppNFgsv1uwcY2uRl8MTRugp1bjjhEl9C+i78=;
	h=To:Subject:From:Date:From;
	b=tAAo3Pq0NmjLq7FBd3+i9HyadEy+6e1sFegk1FfVmJxVSTym9645ZgxcV3QDveHyK
	 ckAi/18UUHhdCCSL7MR7fZhj2FLuxzyC59YsxVcWKvhyP+ten8Ca7JynwSrL2KWv9I
	 Ntq2tTAib8pYXc0u1dGK4ALTxuEYuqk4EGHZDhpQpT4q4LrjQSJprp4VdILiP1UoPk
	 I3BTnxQebQ5ffeBHTHI/Tt6xse+ujDTZyU6bylkifpCYXDPaM0sQRspfNbPftp15QW
	 4BBXplIsIjColgHix29hT6PNp9vshLR/SrV5ggIb3+jBQnrIaOWsiVA/MaPdhqOKgg
	 5PFG5PJy0UhXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94440CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226779359.15330.3020072406187147287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06979f9af1648264553e3d768888b0f619a59a35d6068f47969bbdd7c103f329
Date: Tue, 04 Nov 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762267793
