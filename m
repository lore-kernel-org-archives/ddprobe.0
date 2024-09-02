Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1587119E965
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725282954; cv=none; b=BnQSnxz/A/1qu7VVE1n61CJaRBxaaoUs7S0sUHEvPr8uCg1wNAuRO6+TrQr0G4Xe6WFlSWstaPrdJrps0WGgrPF8c38FxsL8+roSF+j30hGftc1tT8ZbznpzFOK2tnU6Hv68iiVRFJmqtULNnKbgh8I5XxFMqi0NesP7vv2XPR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725282954; c=relaxed/simple;
	bh=bLC1h7CDJe3rVaJm6NrpuFgfuu89smiOImPLEhohmyA=;
	h=To:Subject:From:Message-Id:Date; b=UvuUEaMWFCGaKDR15jPN4Awl/NJ090mV1nJrSa3BQ4gIpin3RTWZu0inupN9iJ6DNHhpx0jok0q0aQDe/CdgIZ85d6VKQCQBhx8oVnjo0kktxRMIVjPdUY1jyoaX8BRdRPnMKip1itGy2uRjQ7FnFkxj8qlmgYb3Ee2QGQKaU08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XMLWUYAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XMLWUYAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C92C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725282953;
	bh=bLC1h7CDJe3rVaJm6NrpuFgfuu89smiOImPLEhohmyA=;
	h=To:Subject:From:Date:From;
	b=XMLWUYARJaJozZ7UC7NOa+7qHdriPbXG0abEFm+ZiVJLpCAdOwpVgJcIN3zAPvGGE
	 eTpL4XFLPJlWTbM5za0GmjsscY8WwDTfF3hYJfT2xPy81altReXMkIQ9KY5vbA+Xj2
	 YV1Tv2GSaFGcrYeeiN6YdYKaI6xjceT90aBAxG7EwOdhLM9GkDsJF2rT1Tw72gDdni
	 ACR9TSySP/qEaJ5VOLWjYa0M8xflGQQBTLdXdfP3+VQaZK31ySj+b3ebkOB7UN0he+
	 cawKXgQaX+FaktjiaOp9EBlKyAAcSwG5VStJditFie0IO7ZbDOS/L8Okn01wRLjU8h
	 0Wgfg8fT2Wbxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96580CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172528295360.15075.13380667309386879166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ed1bd14971047b1452612dfece6f8e70e5522ceadb8939d719ce1d0450907a3
Date: Mon, 02 Sep 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725282953
