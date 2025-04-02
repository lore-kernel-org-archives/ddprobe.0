Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B931AAC9
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743604194; cv=none; b=Rdp47MbtgJuQ4wchP1EggedeR+uIsPFocsGBzDyrfGHNBe53kwxUL48rb3AHWSmqbNjpv0THtHBnzYVlGYGza8Uc8NDaC5yNX/hQwUFp5fHmqkF+BGlAH2inCKK119rWvEofThvSmpRJ6psiqhlR3qnORsyIvf2c8jkv8Ctwvo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743604194; c=relaxed/simple;
	bh=IGd/DZZOJx8XKOked75jqkr9LdRTQrSU9/GlRjV42OM=;
	h=To:Subject:From:Message-Id:Date; b=V0gnr7Md9WgGJJC8vqHjcZNd8Aq0y6f4RbOu7rooBCbUiJM8WGBxuDgGzBjQQHCTkjH6UB/9YOENL4IBmRbuRPWIa6gB2SJ5Z33tj6OkDMWUCnfNLHGsF+THN9EvCXCyKS0iP+MkmQ0lrY9QzlSQocxjZ0tfMU23q6IKyriNfog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgwIyCns; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgwIyCns"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2EB0C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743604193;
	bh=IGd/DZZOJx8XKOked75jqkr9LdRTQrSU9/GlRjV42OM=;
	h=To:Subject:From:Date:From;
	b=TgwIyCnsud344YHomAuCL3P1uEr+shduZ0HeEWwYU1I9WWnmglJmtBdqbX1sV0hsN
	 1AZC6HJzQBlzuRG2cRjONR0Co9kBIAHX8ghkP+YfAlupa7xN8BFNj9hbsyUWiHpbG/
	 DJhqHqB1f/eQBr1VBmCl8JHicgtMDYenxwQqOxcUuAo1bLa39RvMCOkU75oqNkSRK4
	 EGHVyrNDTcMCo+xcDD47cmLr8kWaxdS4hbeGW/arouAxHaWF4+mqUgY5bZFLlhbROu
	 7X2I822Y3mApGVLnRJfPHfZEuZwhnw0+vEtNDvoAn+eaYwoaTPYvEW3tXmx2aNoTKC
	 einVCkASOlrGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C016C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174360419362.12198.11279915708395791652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c011bc6fa482d2a6d5f82bfcf5825d9a1c4989065397bb0a1fd6369700e28ec7
Date: Wed, 02 Apr 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743604193
