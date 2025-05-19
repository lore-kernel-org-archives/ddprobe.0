Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DA62853FF
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747669194; cv=none; b=XM6O43NmjMzThXr00pSRJl6hXEcgkr5fhcdk0ipFw7J5ZEhxGa1TKUklniQ8XObBa5xCWC9ECPGB/sxMIg0EcTpjwyVlFf8qupZ+iHXopPwEuwVn9VU4RlhfYqQlKBu5Ce/KvlAMqL+SdQW3AjRrQ4tsM6WpcpgaVBvqdvPKj6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747669194; c=relaxed/simple;
	bh=rzcVqoGtHQPaLNie36gzMpZGuLYaJHnf8YqX818TK5w=;
	h=To:Subject:From:Message-Id:Date; b=fnCtQw5l9vzMxeMdxcvtF9O80OigKN9599UZBYAlGwSMq57otoBTZPHyXFQy7fDUREFuywsFkCOKcrx6JRyrTRKCrnSS24SYOqy3LK4VKmq8J7DeKwyC/tmMvJtt0N9usXPqYrdQ76mbv1tSQ+7ervBC3mvCxY9RFxnzJqiUJbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0AvIxSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0AvIxSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB28C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747669193;
	bh=rzcVqoGtHQPaLNie36gzMpZGuLYaJHnf8YqX818TK5w=;
	h=To:Subject:From:Date:From;
	b=D0AvIxSH/zC/nuGXWL6+eystkxgIXiz5H5ItYNRBMVNdaknSkBG7p5AbkHlczFMfS
	 bL+M5xxCjkQQ3uqOPRAtNJmUton1xvKiSA9eN3YESoL4GM9d1lYSC1fd9DeuGMFBl5
	 acrotF8md/+VzkroywYCNbdAK/wGmwxOrOR8QCjuT2gHrdfMYiZSnRNWUWa4S/zmw1
	 3e/sXudDAlGphSq4EWhVoihP4a0x2p13/T12MKyIcYMGczv45qmMederSth8aJL7Yz
	 SlpUrw4M1m1NorcjgduJ57ik+j5udstrbNsj9eAPpGL6OyfrklU0bHkIXE1S4z2Nqm
	 D1LQUcgmCAbFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C0C2D0CD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174766919357.2848.9894403242069376812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26fd4989dae9a203f7c9af9e7338128e75532b3ff793ea41892b0a030bce8230
Date: Mon, 19 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747669193
