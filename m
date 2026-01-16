Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14CE434D4D3
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768589034; cv=none; b=XdopUSChE2ZhzB/E9LxPRMP9cbbmDkoDUAf+XiPRfGRZRTEmcXifoq8z3hfTGjpsMNa2TCXljCEMayhZzcqcMsZfagfch6GKS9FgRhoqd8rdsihqpnv79IEKbIa5fr4g2KtP0oc3Zeebko/tRzT/SgUeXac9qHU5Byqf20kzcYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768589034; c=relaxed/simple;
	bh=AZOiFKmNk1nt6T4DkD2NgBHhSy9ZeJfo1WeuGwN+VNQ=;
	h=To:Subject:From:Message-Id:Date; b=ZtU2DBMAhMjMzkE/gnYFvE0gkls9gc4INMPaRQqlWJkYeFLB7T356d3M4h3DQ6luanGcGJfJLpOlKZARZephzUS4eoPXn1EPxyew1F+9C08dp/RC9dBW282PACYiudX+1ySWAzDEwEOkZ3wqVu1LufimhSR67Vr6CEA346FRc4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIiKg0h/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIiKg0h/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0146C19422
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768589033;
	bh=AZOiFKmNk1nt6T4DkD2NgBHhSy9ZeJfo1WeuGwN+VNQ=;
	h=To:Subject:From:Date:From;
	b=NIiKg0h/QnReZ0jAlc/XZ0jBq9vaSRhCT11HR5t4YiGBSwQ1t+w/+f2n5GmuvtEIA
	 76qximTweNDsQxyiKgudAGyCMf5KM7GnLlI51/cZhEITLh5VZc2Z5h+LG4/2ld+XtZ
	 ZJbQI57teHXkR5DLh18ZDFcJbvTVvyFdb+cW80K+e1tmi63GZgjU/uZGdvbw8tOCWq
	 kIAIMSqZYrFsh4IxeSIStjlS1jejSqT5We2/4cfGML7nV6jZKxA2Z7JllZfvlZuyqS
	 OzXoD5mdWtJw0IEmZNtg4eqww3uU9mLYFldWZtZUniFIWjJcJaCFurJ0rketXac0A6
	 AQkGChcuc6qqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1CCC982F1
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858903357.21676.1399869554307005763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f3bdc3e23969d267fbaa328ca9ff3aebd1e2b3735e2c5e657f2e0a2cce0c69
Date: Fri, 16 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768589033
