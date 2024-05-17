Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A651119F
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715926343; cv=none; b=ULgPnwogKDfFzesoVXyVYGhSmdkqEpIBF4k1/PB3KXcQ63VE684KdcA0hJ9ipjTu5Uw1Ig3HdYvMUK8d4mkgaVOh1ysXrthYtQwiiHBSLBiz6kh7HLVzHE+/7EMYWmh2s1FFSv6PNHGycGBGThJAh7aPhc5H1lee5VfjE8Nxcm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715926343; c=relaxed/simple;
	bh=ZzzWpQt4WfK4LtL+UpnZfIm7U3FzNERedpqZVi7Dktc=;
	h=To:Subject:From:Message-Id:Date; b=ENA9aXmVc0de5U9wOvtrZbIX5beEJQUS6EVIEQyK4UZlmCJs6Sm0vflTf89eQnR9fdQVwg0EDZQqoqjGY6+gSBK4qgldcJYJI/NbpqCb+JvB8u07Y9+PPb1yF0Yvpc6v4XVih+pFrhUmfIzzK0OVH4st/RETh/J6aetaeNrUPIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cv/aZLDc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cv/aZLDc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA735C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715926342;
	bh=ZzzWpQt4WfK4LtL+UpnZfIm7U3FzNERedpqZVi7Dktc=;
	h=To:Subject:From:Date:From;
	b=Cv/aZLDckXLidm9Jvu1aEeMsib6CzacUDXF6FoprKtUSThBYw0IWtvQ1ibuOBPNgN
	 EvpnJg4NzXWA1F+W4H8lM5ZTCEXLLwre5pdpM9LYBOfrsW8ONWlo5Jx4r83tE2kKPq
	 3GuD3QdVlGqXOMMyLDkMFUwNnPiRtuj50l1lz3dXvnC6XSJg/TjQ/NhpFDLplHk3v4
	 cBEqm5tNwJPDsJH0eJxzJBOrhewTXWgKUWP5hjUMjxN0HfKa+/7MV9uYo9JfO1QBPs
	 Cu4uxYolOXp3q9AohBuEXLhbeX1W2ewSOI2AbmjYM3ej3xHbr/yswxmYnXkjjWj8tj
	 WLIuaCBu+1LVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C16EAC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 17 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171592634276.962.7848423256885563881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c22de3f9215f403aa4ec9f05bcad102507af438f284f5be9be23be2db46cb1d
Date: Fri, 17 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715926342
