Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DCD3C0C
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755395994; cv=none; b=CQoUOnQqz0t30bhPK50lCQWSW/XfitdbJCdlYnWVfCQbR9H0/mqaDxh9BDCb/W4aLXOUKOhgvCWhgGsGYQojNTSQTCi7UECFaAfj8r7IodoRrVnz8n14baEs2T4R/rjcyGBaajXq23mxdzlvDa0c5EY6BF+5/SxK0Ju3OivLk8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755395994; c=relaxed/simple;
	bh=YyjkJYWGAio/P7Es+2Mny5JDyYMobPHmFeFXQjf4eoo=;
	h=To:Subject:From:Message-Id:Date; b=i2aXuRb01e48hNLTpxt932kDEUMUW714AEZ89ShOOGEWmMF4c2QLAnvuhO2bPqmkD5WDBA4H2r0te4lVbuAF72gQ31/ndAuK+heaRED86Zs0Khr49lMbWkvXZ17triGIOThn5ddoaKRXKbkEVM97BhoDCon3Zw9fDovNucTG/2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eywRa6BO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eywRa6BO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FEBC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755395993;
	bh=YyjkJYWGAio/P7Es+2Mny5JDyYMobPHmFeFXQjf4eoo=;
	h=To:Subject:From:Date:From;
	b=eywRa6BOeP9JHmcU/OSfpUIr6I+A/M+lUv06O8dlDBrw8tNc2vauRyiaUF/8Ap2sF
	 bTbedRzawoSi1wSUqELcCCcBJi3hg2SE723dC4ZY7gKfawK6T7E24PCrLZWITN7f+F
	 OZtFR0drNKt4XtVLF+deZPYXoX81VehkEErbpljxuIk3mA5nQlp8aOsHSR7V7p82uR
	 C3U8BV46E701qB5GZc5ER5PPUctKCNLxhuQzBL1G0DCoTwB8rVVpsp+j7nmXd2MN5F
	 R9BBTk2gezigzyfalPfvkRrzyUxJa+jlstE0nYfkwQnlNJtS/kVJVdsO/x97qYPC76
	 jY7vPOMrivlNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D58CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175539599358.9643.11405861241127979441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659743c30fe5244d1ba436757e81039bd976eb73d233007d771094e8ba70c114
Date: Sun, 17 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755395993
