Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A833A6402
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774954494; cv=none; b=hOgg9Fd60VN1VOrHaXEwiPI68D6LKfQBEoDuM76RTTt/vEFmtt/N9KLSA/leq9HGLr+ijWk75+bj9WKf2t+Iv00aLiuL8XvIxM8NQ5cVF/48sDUaU4pYxiqd4gXYhhkTDpj+fpweSyBpW3aURiqdxbQ+gU946/ElNveE6EaOHkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774954494; c=relaxed/simple;
	bh=T7b92nm6iJzwBaOd6e+9L/6ggCFzSOmsE+MZrHHUACo=;
	h=To:Subject:From:Message-Id:Date; b=RXi7BDsoscJJgU0hoMrYixaNmyjRRyc/wozvIAren/72qoV2F7DF6h7ex4xuk82me09rv2NA7fXiaJ6JJkjpBNzqAnYS1OcZFXYFD+XAy4y8rznaAbrOVDQAuGTEpB5v3bte3u27ChR8WQl0okKsYGKZMFgK12CkajKlCQX+XOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3xocg9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3xocg9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D28C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774954493;
	bh=T7b92nm6iJzwBaOd6e+9L/6ggCFzSOmsE+MZrHHUACo=;
	h=To:Subject:From:Date:From;
	b=b3xocg9mJAe1DO5u02l45QBX0IXKlibYCFPUQddav8yhBNUBWI0FZHDNNP9lCXWAG
	 xv6+r6/qjeHW4vh/++mKp6Uk8FBGqGOOGulM41V0xYk8nvfj2K/UkYX2mmFyTMWQSa
	 /OOZIp+bKwPslP/2AiosPNheRFiZrqp84d0IIp1Nlu0wpiq39lB63CU6QBr25Z+5ox
	 dhOxIlITpL1h6Op0Wjs2/ma08Am4RzFvCjGVHec55YEVkxxiHUDMxhlDzUeWlHYMgV
	 h3mvcVIsyl2BVSzwZBr8iSkniY6VNSn9aP+JGWhKSasV4SaAOscNDCevW+cJK0vVOW
	 O4kDYMdaGuLMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E66FF60FB
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177495449358.18872.8112839598418746297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ab7b10fac8878bcd2d70be4c0f5f7abdd3159049d9f4dd40ccddff79257bf25
Date: Tue, 31 Mar 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774954493
