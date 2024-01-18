Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04278249E5
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705578497; cv=none; b=d2aiPiKcBftaeQfJH0t836b0qQjzzxmClwSv3YtO39hh2FcRr4ugCPRPxez2ntQYpkJ3GGI6m65Irs3aC7TzHMUExgXmPoaT41oH5sB4u8LD/pZM9XvXlz1n7v8wm14WsWPPg2Q9qeeUGe2n0TqEuqOMBZ5xQpYsSd0RAPSpDJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705578497; c=relaxed/simple;
	bh=iwDc6/OsCM0UfXM42as1aoGNbEF5PKSp5ljZEtmmAls=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=ZzI8+xzGDVsWEmGFfgKD/7v0pTBLZhyAqkxxm/uTaLrVSiUTlF+W4RyL+QjM/XdGn4Vgzv+z1QOuTLYz9gJWw6ddez5xahrs3AZJ3T4lXvOvKqmRv4JU6C8+v7RWWzuwNCgRCb0tgYKbuFpyIHT70asFIN2XN2iajcXCiI5LCPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGfbb9Ab; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGfbb9Ab"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B863C433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705578496;
	bh=iwDc6/OsCM0UfXM42as1aoGNbEF5PKSp5ljZEtmmAls=;
	h=To:Subject:From:Date:From;
	b=RGfbb9Aby/zESAyzZIHK7H1SdUDZlSxaEQKuX5QDKTd8IaLD8VKtuYxLs9/EUiR9w
	 cdOanL+GpWD5ZMvNUND34WFPGZcpIbPrzngl8pcywFD277j3JzIM32/pHQrjZK0Ic+
	 4e2HL1aERL7pmkItYwMAwyOkeexWLharlrLUS5p57/+ayYKeqY1Vo0VAOIylVTu0lA
	 ACBJ0Q1BNa9yCOKvaaOIHz6WPN+YMwaVyuNX0B/Swv2juOcx9dkvZQuoGvazpxN8Qr
	 hRHGkv9yZDzCeO6Q7BRXwSrW9EovP1NtueTjxWo4IbN54THeDi4PhZVbkMd1VBAN58
	 ADzjpnJ4JnxnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E741C4707B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170557849637.23931.6274783729373735913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2aec362731baa48645f726b3079f4d95f15f07736082bb958d27c54956e435
Date: Thu, 18 Jan 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705578496
