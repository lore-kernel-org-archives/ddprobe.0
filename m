Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AF6217733
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755769194; cv=none; b=bLOFmxqL39L6zByiDLlMdHd6AI0kRBK4IDItHr6Vde+0J/kx33Fib1/YH+VswGVb/mXps6/EeE+bs4bnrlOVuwgvv7AJhOXjd/P3EWYALEtyXMfM61cl5p1Y4p0FompgBaWH9Z12WezEX+W3+dW1GBv2gx72H8cm47QiNOeAbjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755769194; c=relaxed/simple;
	bh=ZuAw00dGnJbTp1KW/xVO3UZwLFShLfkKD423cL36erk=;
	h=To:Subject:From:Message-Id:Date; b=qHNIEhqLgVkVS+uFb3djqnMaTVodlmArwG3eFlBjpIf3+0+vuiwZRMYx+zqhC33s9erPOcF8YjbpSySAW7Cy5rLY/DGdXYcofwyweWNqaLeTbOXGlxcfzYEVmLJFwG6zN175Sb2eh9fW2SF1xdew58tVeVX/ufuOMclneLJTqrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZksfh5K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZksfh5K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF45FC2BCB1
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755769193;
	bh=ZuAw00dGnJbTp1KW/xVO3UZwLFShLfkKD423cL36erk=;
	h=To:Subject:From:Date:From;
	b=iZksfh5KOZdFXToTLjaPDe4CLoQ9wSMtr3L0XQ+iSJsA47Wc44w/mt+JdXWrCNGK4
	 fkJa7VWCQT7Rimii40J6X7PqRAUvX3raoKlViAbLdwCR7fw+s0J2zlmgHzIXFlPYlT
	 W3FzoKl4/z2EeZMtTu6sOqDN5SFSOEZehuMwh2xg9coykTz+vCpQJlceMvya2vc6OZ
	 lr3wtZs76cQ1BpkjKt5hzHLQYm0w3y43qNPtJsO1H1zgO6am9WNd5IK93KlGU24W+Q
	 oO9xvxEg5Fs8Kzn4NkvGwGXkFYIdBmqxzyf63hVaTtLXEUdNLqCejOA8rFmS103xAX
	 FiDT7B+riWRwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93556CA0FE1
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576919358.16632.5732037486154747617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68556da0b0f1d4ea76012b5dcdec825605c7d508d854c14ca7b7ec79afed8c43
Date: Thu, 21 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755769193
