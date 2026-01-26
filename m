Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0353333372E
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769429034; cv=none; b=NGFyJ/HJfLeHNM/c0cNoDlBUBPNJddOB3A1OmiMwuHLBbPAR6AprWnR+4DQtGxo9i7RAJiXlQ/kSTIVKMGzYCmYFIy5yEFsePjl2Un7+cyMlKy2gzKjTBlsL9G3WqMTw5qBkicgRqfv67o8yNdu0h7RPCUwa+7SMQG7E4b3D3GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769429034; c=relaxed/simple;
	bh=vzkibcxxNGrD+Cf9P6YAQTu0SGABnDN+h/3JQHs9oZ4=;
	h=To:Subject:From:Message-Id:Date; b=bZfUNHjNFz+bavNM8p6m+QCD8PyQ2uEonRPRR7b9IyEgFp/hi0x8zt6n9eozxlVtzCNieqHAB7AtM/r8+eNldvIyFkOQEm5OcIZP4VanD5oiTGs9oPW18QiDvuVZawlHgNS19czcMuYsI2USM8LJ+MNgX2xb1q4xcwiI//FkSeo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=suD2ptsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="suD2ptsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCE7C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769429033;
	bh=vzkibcxxNGrD+Cf9P6YAQTu0SGABnDN+h/3JQHs9oZ4=;
	h=To:Subject:From:Date:From;
	b=suD2ptsKsQlNEt28I+QzGG+PJ8gKcWfCBRoHu1KXluJYuszNDN/88sl58SN0ZxtlH
	 GMRT5R3ateG+6VmIV2rRTd7wWbZpccg0kTsqNk3kxYQNpC0VIJTJyStl8hdEhgm4DO
	 Z+Ore/K/2c2xIAoEwoO7ubUT47P+svL+XkSSKVRX6L2/1WhlMsU9mKO38takyAfQcz
	 ObRbW1kOR8NdfGMJN/3zp3vk/0CLuUKKCyyjKyoyusWwQj2PrLT7s+yaII+NdsMUTG
	 /GrGc3tUcV61vnv9DrnrpSCffih+VFe35ezuSP1yFe1rowWlZ7EbqIiq/WsYZYu4W/
	 6d144qTdr3tQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1CCF65E5
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176942903357.4251.11216721980475493234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f60aac9b540518322d7e6c2b8148a45e22bc102fc53d530a6369a9155c565bc0
Date: Mon, 26 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769429033
