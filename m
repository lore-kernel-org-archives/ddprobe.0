Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C7E1BF58
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753326594; cv=none; b=MkejEQqDNUyBu271AD67qyQalacxmb4gGwTXAKtLg0E3ydbHKa/ER1pdu/Ql3nyHLAHa+BI8LPDa4AHynKkUG8DhcdGKtObQxy08Xd3tcdTWMqnE9c/PZW6AjGvr2OgxCJo6BJwbtVdtRiw/g7wDus6f+NH7d+Pt2wTXHEh+7xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753326594; c=relaxed/simple;
	bh=4d3/CZzOJX7LrbawflFVhGc99rozm4EdcMWfVtMKojM=;
	h=To:Subject:From:Message-Id:Date; b=bPK55icaRxSswOOQc1RWoF/UW2cRtflXCPnEMFjLhSun7C09nEfNAKPhUjlQwj1L+uZj1ZVWjZRFHohXOdrztcreUo349opobnyRsj+VlKOiVBUH9ZVYGZIpAYJSyxebiRoz+P3kYuE70fXocp4EJ6NX+04wdD0cnlLeJeIAssE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6MkPNQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6MkPNQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A001AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753326593;
	bh=4d3/CZzOJX7LrbawflFVhGc99rozm4EdcMWfVtMKojM=;
	h=To:Subject:From:Date:From;
	b=E6MkPNQpWr08UeCeugpBFS7bNFSVInuvar7A5MiWGpAf/VTlIHb6fS0Vj6vX0YNKJ
	 Kh+i0O8nqyVfohT5fat6O32W5Ho+iAbgb2TAn+5eTd8UIyKzxKM3hXjNKFnxZLS9A+
	 9Jw1qku4AYybylaQsucVEVE3KanR/YsEbIaaDInOQ5yVUvCTcV0h7OCxInbgCxvpA7
	 GzA3RPfudxe3FBmX7oFy2k3gZWAzzjDbVUqgxCB6Xo2gxUbB8MpqmE4ALpkBTHDZqn
	 15g7UagRU4sghRhKuPh7k9pKj2t6V+UpVy0ApNWaXpusLaZ/E4Vvkv2a2Cu7ME7NHu
	 CuO2DoCMS07cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E52DC83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332659357.32117.10551274630002620879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bd3d87d95d197917179251ddc9843812280f7733b5ba6bb6499ecb7fe7312ea
Date: Thu, 24 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753326593
