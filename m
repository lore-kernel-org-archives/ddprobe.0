Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B7A914D2B1
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729924554; cv=none; b=pY21j4/SrD5elIpaFbtEmFUyW83a2fXhLHvxVYHujUrCd90JSFo/5L0Q7KeIYMBhwRlzwJC9lKZnclyY2MezMtmxl7eUiCie9QiwsaJdl8hpgJ0IzfMabNqt+sHmkIHjeiYJHZZnCF1w9EaQfm3H1tpIJdBkpGffJGqtrzfYpnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729924554; c=relaxed/simple;
	bh=RC6efMigvIxYIob6n6Zk8EYhQNPCSkxbGKJfE4HJIh8=;
	h=To:Subject:From:Message-Id:Date; b=cY1Dh4i19ahx8YuEljfF9oQiIAcHd1sTg959ejd49gRiNA2Ek6Nkthoh1gWDoGR4LHBkrskfAW7xc8MxfCJ54so8SYzoNfky70PZEyoJ9CXM/PS6LLol6kTmLYfy6cjgQu9AcpZYKJc+T1uwwmzo7mHGxaHzlpsYkTVlAXIlxvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nm64l/aY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nm64l/aY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A917AC4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729924553;
	bh=RC6efMigvIxYIob6n6Zk8EYhQNPCSkxbGKJfE4HJIh8=;
	h=To:Subject:From:Date:From;
	b=nm64l/aY5NDStFtcKkNkGIoOsnPlQ+lO2PFE5wEuhb5abbA+nL7n2P1I4yK3aVhIm
	 iihy0sGmi7qrzQbGtZTphtSMOvANNbPDULjxLBjw0CikLrFksyE2CjSDo3dR7fbxQK
	 emf2I3zEVhyXeiswTyanRUvh/Rc5rAAlqqAIJg3zmxwhfZr42KuWDrLs3wiNTlm19V
	 llugTI69+uMFCgvdlEXoVWAyhDqQEBGXU9lzc4LRljYw4sDlgg0jdILFYHxdr4e1JO
	 B1Ad0cRFLYkfTOChuwGkcylkjad29YmEkSMX8ilMqpdoV6fu9ZIfYXnH9gy7EqKLkV
	 DlaDweEDOVvUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943BBD10BE3
	for <ddprobe@lists.linux.dev>; Sat, 26 Oct 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172992455359.1896.18411930331431775684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08f6b279b79c3b88983b21388e81ebcfcf559015e6b12634971562170ec88808
Date: Sat, 26 Oct 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729924553
