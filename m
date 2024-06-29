Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649992574F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719671063; cv=none; b=V7Mn4J3vKng1rPiUtxyWOkx+d/9d+6tL56G6Q0LwwVUwG6F27qm2hCuFDwaiJFcg0ERriUhiIHy98LNljsmtoIk76lTPrUgZbr7yEToBuSKYKxwPVs2tvNr++0kxfM2QpTmqTKLF5ulH5Wy385J3rt2IOrH3QlnjLH7Ugq4F4QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719671063; c=relaxed/simple;
	bh=KiPmabqyxddkh7afgETlyADGKLf7YRHApW+equGZ+tE=;
	h=To:Subject:From:Message-Id:Date; b=P4lAhD5CLYahaRPrgerKPOdsle3SFzCVmpr4jLR/uTHtP6wsKwtl050cR3mQh5XQoRPu7LpOPjde0ZLA8v86DyY2FedBf6dwkVAaGFRDG/9cHrjoJs1qHyJz/C7gN8CrGQjJG4/KLlldDEWg2fekTVGEPRMm9X2dVu2MxbOKHEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVsgeYNZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVsgeYNZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB719C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719671062;
	bh=KiPmabqyxddkh7afgETlyADGKLf7YRHApW+equGZ+tE=;
	h=To:Subject:From:Date:From;
	b=TVsgeYNZrcVxB49ty+ii21pf7gXN79e0dZtBCbUPR8iGdP/rIqZXRGp9o9Fb76H8v
	 bIHXotOiGi62tK5EHRfdgW5RcMaOu7US/btF5LR3abJ4/8zItx9jBE8/7lnV3lTZQy
	 P/c1X9gU3XNMtXPHAi/33QyhG3zw7HVxQ6vhM8rIygJMv8Wp6XQgjeDwuG9AUTBgQo
	 KOpVvjlDVcUgveCKaHiz8RbTKZQwap/nBCiTsNllTKSTq231MS0TgY1ySAj+/PHi2G
	 pgWy++AEfebtlXGKnLj2ACrDP8TToCxr2jvVPg+Ct9Bau99xfDZBvIAZTF6kSlRsmi
	 SmoU++XZR386w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4A5C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 14:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967106282.32399.14130790715732992083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 198fdf8d7dbd1cbd9e250b6d7344c91aaa7d58900f7afc8d8ceea16a3b7ac2d7
Date: Sat, 29 Jun 2024 14:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719671062
