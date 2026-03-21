Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4BE2E093A
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774092294; cv=none; b=n+ub1i5ySrHJr1BEn6hhOPQfmD/b2CqFt90b0a5QpIrds07TeNUTrVnRRmoYmYZ4WHrx5eTYPfI9WEgTeGSiNkMFaSjlj4fCeoQrsfqNfe9be0J+7a7L4HkD04g8JcSMgHTDLwymDhB3Zy5sbEiXIMQjqJGZUV0NfHAXf7cMLx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774092294; c=relaxed/simple;
	bh=74Jq7lMBG2e9HzOEyaDAwoEo7fFtvnv4JZIvYKHVv4Y=;
	h=To:Subject:From:Message-Id:Date; b=kK3zXNtsm10vuKmmH/bqhoTgmuVLgiDgblRjiFCoZBHfTfTnki+HLKDZpq9deEOtDnVQtmnTk9qVilY1F04l+mGEFvepIAtIBSj666kwqtleCCzZDtPDffL0uejymNVzwuj62mYEymiEZCbuoY9VB5RXhghUU7U3rr656sKKEno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ef+jsw4q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ef+jsw4q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1206C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774092293;
	bh=74Jq7lMBG2e9HzOEyaDAwoEo7fFtvnv4JZIvYKHVv4Y=;
	h=To:Subject:From:Date:From;
	b=ef+jsw4qWCKKzNvGG1qQUrL0akYkEt6Iuww5CQXSvD1SrVr8jqzhzoObM/L+OmRwG
	 bFLEry+TDvXcVMgpNL1082PonT/0/WkJ3bzOrqdMWfbLtILMHacpUpxf68W7MSTC5K
	 MdztI6UN/8Yh0mXQoWgzYzEIncGi1sU6QNbems3gnIEC2mZzHOMZytRmMsHSl7x9jF
	 qTMnnLvgmRyWocS72T3HvgAOZBlZEhHuQM7uKc461itq3n4ShMXW62BzAfcZFy8anm
	 HG8rsNMwguycej+LbPxAaigwv7sTQHkcvgvAP65kllmEiCRNteSzBDPOEA+AxWM1fg
	 F7Cw9zzHXv6OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCE6109446B
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 11:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409229358.12063.6360602440152882223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75ae841f3387255dbc6e96831f8f85acc1c126734685b811ce81c17de2ed0c9e
Date: Sat, 21 Mar 2026 11:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774092293
