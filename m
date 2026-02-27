Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17569332903
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772211894; cv=none; b=Dr7CBz4eHCUrtfXFT05f7yNoufOd8V+ouzNZ1mIXOxrRRTiv3tAsxSUIp1ZFcdFDS9JdfYGYhEGrLSGVEi0P4q0KWpi7iqZ6nyzbezSm2MGZy9OfgLsFM9vBl8SOAYlYjI8A7VNIltqCRLGPdS42hCGZKtc1IgFTKtEdGoHri1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772211894; c=relaxed/simple;
	bh=WZcB2EPaaHBSYEoh9rcWpO0pZHVJpoPHT4fjC5k3WKU=;
	h=To:Subject:From:Message-Id:Date; b=hDR7+cOkwHIJQuJkKAukWr7SBjYGHForK7lSIkL5UvxXeQVFL0YwBPxH0t2nLYbAR7RlIQ6ocKhKmdCHrBvaZxnhBegFnxvA2v8G2QurCRs6ZP2pJYiB24e12luXqdg/ckegSA7kONOjfBQuWrl3DAI5K1HKj3MfrpdXovT6Jeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RESBj0F5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RESBj0F5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CFAC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772211893;
	bh=WZcB2EPaaHBSYEoh9rcWpO0pZHVJpoPHT4fjC5k3WKU=;
	h=To:Subject:From:Date:From;
	b=RESBj0F5pQ5tajxCXXR/r4I35aylZWzVayB775edy4nvaPjGmaHFQTbgaq7Eg+T5Y
	 kqIsvgKcX3TSwSAXzu21FNYah1lUa1yw+egFyeIBRhKswx290plSnGrjnhO8dH8XPU
	 ivZK7Nrdz0y+J0FANNDut7Y77PY1K2+dZ2cKohcqwjfrcNKjtJpnAXJLMTLpvT8UDu
	 fWFxEcpxVcKgXK22NBUXxgKgxt2PtIDQMKHdtjkHMvpmmgGpZQun8qoqVBn8MsNwGc
	 xZQ9Z7S+Hwm5PiHbpAxM21EuROj4AGZkN2j7pKnRC+1ZuJPedm15huk8TLoDfoJxhC
	 JRaYNGmOE7NJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED7FEFB6A
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 17:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177221189358.5851.2511460294084298430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3586395f863145c8bba03f3a9e68e0b651e23b210fe3efff7c997abd41908d8c
Date: Fri, 27 Feb 2026 17:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772211893
