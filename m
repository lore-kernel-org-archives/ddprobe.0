Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436FF407CC7
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783502314; cv=none; b=ZoD6Hp3ZY55NSvSl9gW8keVTDYPKInJtFArQZ37wESd61uSwFLUNbghYxrSsiwpgld7JjVadnwkxwOCoEL2pxitJCdKHQyx1NA8c61OTQTv1cNr+Tw7jRziGUTQ/t7I/udv4scge0e2IvRaWP+tD8PzkKPut1rfDNJQgJuUevPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783502314; c=relaxed/simple;
	bh=HuEd+cMaDwGlEcrg3V83IM1CzRFf6XMnMdFZSIZFr1A=;
	h=To:Subject:From:Message-Id:Date; b=FnhTsLHNV4zaV+IyNFbI2AJs927rN0M3QxALPCu/XzUJQ+ceaLL9PKTVK6ShIGBRFZyeQpLrznneX1D2QwEulMSEFIKXLnlVTyG3aL4W1NMA3Yd0tFVklmNMFyBl4Yh5RIO9J8IvOsWrJlpOuZHs8MqSAnhz2+GvIQlwLdP9zXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXKb2w01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXKb2w01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D214EC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783502313;
	bh=HuEd+cMaDwGlEcrg3V83IM1CzRFf6XMnMdFZSIZFr1A=;
	h=To:Subject:From:Date:From;
	b=DXKb2w01ax6VvxV2V3cmMDa1PuGkIg5zsh4/Dx3LXfFdHNw7qJzhPCcZbjUmyq0CD
	 tjHZOT1tU7t0tGP0HZjgVf/11JMYLStZt/FdZ/UiUOKw9+1g7GwH+05fg+1YDWljlG
	 i4igPXW73upzkqFpl8kQCl9zLW7HeX8I9grW8AULvLO0H9cSpSPHDKt/VT4ySLju58
	 qndVxK1lkk5caig3jcjUXG8RdTcc7yUZ3AwYCD8u6tOPafRoRHDQKLGo6MNWSQXE9p
	 ko15x2XxT2mMgVMOMdT4oYfQ5jSV/fpvfQSPd7vkrXtf8RkHF/5N6E2idhhxSe67fj
	 gaCWzsrcR5rVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8597C43602
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350231368.7981.1360922258790472702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5718e189fd577d74308996e4a6b3a76ecceb7e95f78ee82e4007d5e1ab963d1b
Date: Wed, 08 Jul 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783502313
