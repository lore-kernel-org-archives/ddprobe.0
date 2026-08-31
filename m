Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D20330D29
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788172234; cv=none; b=SOzd5mqM9wsd4AEzIUd/sAxpqEJd4NhRwX/pwjNAWWVv4OyJSJ4vVG05m9yBbS4JornFZ9FF3uBfTBor62eL9rIkbJPb23kN3nbC1vtP59o3qMGFgIQqDFxvVW0MqYJZf5004xosSeukUpnnDw34JAC9RnPe/olFjptsvusqInc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788172234; c=relaxed/simple;
	bh=mdyaOe/jRdt1kKlunYpuxYegMVGKp67HkCvw/am2H30=;
	h=To:Subject:From:Message-Id:Date; b=kOEsLLbtytRgnN4aeZNjcc3pBQ38hXctK2HhQaKTOyZm/+VeDHN5vcsj3afCX3iLZizCe3kHvcz/tdgHW6O1IFSLtHbOawFa669iTMfeJSHE2RlR3F/EhVElNSa29diCoaTJIEEW1RbiLwSOmI26lcpTe1kITT3HbqBz8voGsCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TADLz/WB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TADLz/WB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D09C4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788172233;
	bh=mdyaOe/jRdt1kKlunYpuxYegMVGKp67HkCvw/am2H30=;
	h=To:Subject:From:Date:From;
	b=TADLz/WBStzUxUxwvdXxrGg9nNyVoq6hQTyAm9Go54jlhQ9tk7gSRALQuT/0KuiqA
	 arMS4UL543zSuhS54GxXG/zuJP+R3k6meo7i9lWyk9iuYLMnMfE61gtq0G7h6s4VW4
	 903egr4j2VrbCdkmUw4HsYxl6FA6L3FJzffbFdAj+MrSlwE4b00arMO/SoNsYS1L1Q
	 wpY26XpMMN3V/2hD9u+7vNaccf/IKmlec7xcISUhYQgThJxQzSNn6toBobMTxopjh9
	 zmc6fTbP5cX1vzd1fkZuojVfB3/kEWLe1Lt4PDq+7fT78K9eorZbsLIQnj+krvZ5+h
	 Wi+HwS9/W7T+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD24C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817223369.22801.13164380608966165226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 053a61927ec72c43b19f9e2d7949e4f0fe32b61b2a09c958fc6b5c8d7515e4e0
Date: Mon, 31 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788172233
