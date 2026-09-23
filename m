Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58548522F0F
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790178034; cv=none; b=t35vgUI5Y7h8MKii+KpjbCJQE87Qd96oTUU9UK/jb7rdreyKtFm+cSU58b0HwVB/3zKj5/sGL45xs7UsGFKObheH8j9NGJcoN2YL3uMsXx+7oHx/47h6V2RyJyVZiJpwvDokFii5VaQYX3Z63njg25teikyRXQy5vGSPREX1x3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790178034; c=relaxed/simple;
	bh=ouDx/8imyFBaslTPKxpD/gsgXEeTbqMLRm91mi98vtM=;
	h=To:Subject:From:Message-Id:Date; b=N2keZKDw5eQkomwDi45rYTSkkye29kt0u90qyhCLeprrgpuJEaAXVSRihe6xXw7dvYuCxWLH6RwtZrTPZRJFecf+89GYglBLAlg5wEgGofuj4Rze96zaqaDKU9caE3Hvw0vsVOuspeQpXL6IyEFYVNm493D/YRV74UZEnIibWXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vFy9cUWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vFy9cUWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2AA4C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790178033;
	bh=ouDx/8imyFBaslTPKxpD/gsgXEeTbqMLRm91mi98vtM=;
	h=To:Subject:From:Date:From;
	b=vFy9cUWovf/yyYo3ZcRUu2nY+duyZrcvQbqjUYNOamm98dOZwF0bzTpBMVTaNYG/I
	 cY29ZDc0nMVJ/lB0qJCadov1wQxPZxq32keWiIM5KLAY23PjQ5EXCq+lLfcsF4zxj6
	 5u5qFbekKX4l0l1t9qX/5AVrpZWRPPIdm5ONBV68heEW6tDkPCjmvW51hPzhFSHmyg
	 GVoDhLSBfKOCLom+l1nbcJ3geumhO1HiLyBUEDBFTPIKw7zyU/ke4fSb5ubp5vjQUI
	 PVwb2TDetwEa9WbxtkwL8z+3MIvr/LFpExQ4CLNpvG98E6ddiA847oa6OZmIecHDQk
	 t6t6QUVGtDSXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC8FFC98304
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017803375.9201.12546138294360259190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d193082db68cfe82a194220d0b0a27e89651179ec5a5a5f66cd51c39dd5075f1
Date: Wed, 23 Sep 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790178033
