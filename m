Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F6D2572
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733715954; cv=none; b=M/Ex4kD4OJi/28IUN2st0Wnof1LMx4fDqXv3iuCl4IOCEhwKrPS0DDu2rIKlh9co93XbO63c721eAXs5oxfU7chtmEVgdSLMsTOcdZfQpcagpjwrIJFelBacOedsFNADLFAmHrYOSXw4onZlKDmMSpRW+GxoOkKvf25nIG74rUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733715954; c=relaxed/simple;
	bh=W/DJLGpwOcelP2JIO8TF05FrPbmXdTqNOBrhJViPupE=;
	h=To:Subject:From:Message-Id:Date; b=dOMMZSbxA9ngiB3DHQN2yx7YSG57sGLS77irI/eqxKWrKvIaEr+99kAiGbHzF9oSWBDY4PrZpSfkgXfSvc69XlVTr3fxWsdohQb3qrRY7lDkgZUToHKGII/iFVjqtido7JvVrw/GhcV95qZ04hfPVCVcBXGekcGZNh2OZsogIbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f5cf8tZR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f5cf8tZR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B036DC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733715953;
	bh=W/DJLGpwOcelP2JIO8TF05FrPbmXdTqNOBrhJViPupE=;
	h=To:Subject:From:Date:From;
	b=f5cf8tZRGC2Cn7d2xJ1QiZAZWpLtEWAFeOgY0JYPNFfWcdJ9Dtv2Y47y3QBNABU6z
	 iRdykLXUBwi9NBvguW+mwZPRz8KESdTvURXmErTCvZWPgQ4YSUubKbgjWr0y5xTp6n
	 MfcI1Gxb4OdxmcUAIqwkqtmjEYJSNGAJ4/PROLTorgtjZzLqhU7aB2O34cRXN8Ryi1
	 Y5wKm4touaK/faoSqT4xBATxmdzcfylQwQ9M9RFwPRArdlJ6ByN1qkAAARUsSEFOhz
	 8+UvFUJquwzsMd9836ed12hn3ix9JrIJOPrDFUKFxz6ZgGuuDZqyBGT4LER1zvc/OG
	 qMgzCkRfKgHhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F40E77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173371595359.11973.3861790580707734350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44efb6f3e16fae916a8458e7129e10e2e75d0253e1275ad72fbd4305413a7108
Date: Mon, 09 Dec 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733715953
