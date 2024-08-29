Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3E9D51E
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724894754; cv=none; b=pzwQKphzEYM2NqRfzzlf4W8uBO7BxGJKDVVUUSv1vfyDRqdxzAuqHEasjEwy9TEsr8k7AMAuR8BudSGqkb/23ORee4Z2p3fvlEl1xWIg/PLn0+Dkpg9aZsANm3E3JM2+98NwpmGkYJS7nith61+fRUnbR49JKTpbtiyQAcRVbBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724894754; c=relaxed/simple;
	bh=VQiE0XBM6BaK2phCL55f3TA5aBjxb/sITT/vMWr7zAE=;
	h=To:Subject:From:Message-Id:Date; b=YWCeIZstoMcb0UbiDyFLqAo3PvJTGvLmsV7D5lvr8qrtg0Dk7p8TTtquM2H20JlRCg+dEZtMsXu/DVE3lfm4W2Gl0XZk47lrlFUm6kB79WaLfRZtGWn3HbMka2IoJFItBBM9bwpu2dRpraZEQ8SWISmDKoEuP4jWKBPxBjqqNtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUCLpkCX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUCLpkCX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AB6C4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724894753;
	bh=VQiE0XBM6BaK2phCL55f3TA5aBjxb/sITT/vMWr7zAE=;
	h=To:Subject:From:Date:From;
	b=gUCLpkCXoUScXhqT2Bwxwt/O1w3/V88LZbJ/WXL+vmSGQXLkWoK6yHKbRJuV0lAEs
	 CqUyma7tET8e9kJ2MXHQr6cFiKXBllOOyBTJoAO7E930RN+/zhdKTsz+DYDfG2lFCC
	 gtNHJl5nX1ccx1YulKWbQGXR09pSCElkSuAAFsLybHByykiR8vCHH2pIhRmc8/v8k+
	 SsYoMOoLOVvDVYMf99ExVdWITFhdeRIdq1ybxJKCGpN7zxScl/otqbVwQCvdSOaVKt
	 4RfcVtc6wd4S0XPP46EaDyzTuIxXZa09GIpnWHNQDyjQrkSJajkIZOoq/2OIMd+FSS
	 BXqbt3O8NA2NA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FC0C7115B
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172489475359.12994.15927602558457929924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef56d888848c4bbdfbb56068049cc1af7e49321f903515f0a8b74b6ca54b82ee
Date: Thu, 29 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724894753
