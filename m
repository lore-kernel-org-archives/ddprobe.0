Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 268933BBF2
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761005394; cv=none; b=GdphKz/NmedMKc5P5K9dgIJ7gHMsGhO50wx4HPk+1LRXbjt+0v6SAldWDwLwJbN9K0ALoqK2//hD1L4sXWHuLWR4QfRxdmRf1/vRiWZ8fz2qiBk9ohiQ72W/Ii1zCn7RoXYtAQ4vz9ksQAdKnXkOpp94j6YdpjKeamS1qFx5A2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761005394; c=relaxed/simple;
	bh=3TCkFm7cLIc4zNqRLAS+M6ALhIUrP2W00h/LCs9P+sc=;
	h=To:Subject:From:Message-Id:Date; b=C62XAaWTcadzHK7jPVGW2HhtKlseEhagNYjpsZBt+ixQF2W5JmCSrmd4xdTUNYT77h1UdGobpBwGQVr6Co6RQ7sQw3QDRDoxk57qF/CS77OcrP0um6fRnTIaWbcMcQS1ekyj4tNFDvp0yA0Dj/wSu6P7d0uJtxRlRmhqLMki2T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHz8BEnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHz8BEnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB2AC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761005393;
	bh=3TCkFm7cLIc4zNqRLAS+M6ALhIUrP2W00h/LCs9P+sc=;
	h=To:Subject:From:Date:From;
	b=AHz8BEnBLVJZIZYTCJPKx03HJmwxdN9Lxbchk0pdVtTQr41CeEOMOc6kxqJ7e/yyi
	 +0LJS3cK/45jgEFjCxmBYTk+nVjZpMGFnjOdEXUOp6bRJyltm2iIIg1UicGoS4zTJp
	 yqCeKE+s4CVhYKK/hJuwKGL5kjZ3gaJ+ygo1EbGQcZNtsn/OLpktlbj20s5xD9tnDC
	 rpPHVbti6POqG6xd9ObsIqHmtdKh088OYAmaPlhUhE9khq822f2tsxPPhNsKMMTY/x
	 j18ArUdReXS5IJPTxPlNMBmIfP4vsIg6SkSLnpn1oGoM1zvgF0YjUtuXi4p2zaCYaE
	 jK7KBih+JEazA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91830CCD19F
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176100539358.21460.2641557624119032940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8018bbe6802126e55cf83903fcc437481536e56964e69619781b0dcb31c272c7
Date: Tue, 21 Oct 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761005393
