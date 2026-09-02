Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4461A37B41E
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788361234; cv=none; b=pcnLggunLeEpgEpu16EUdjVIdAvGoV+NU5wYOCMavrfIvgnxEFSH/BIpNRqPuXYaPpBHLc54wbivbWhF3GW2hWy2dE0yZZ4x+JzPm5wS/ZwLZhGnFRHlm8ruNMZgJzQa8NNXUc2tav8XiZ5ALi/c/aHMPNJeEStgkBBvpdQ9nHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788361234; c=relaxed/simple;
	bh=bw6o0hJOsVkQg1IVQ9jP5rhbDGnYklKhpeujrA6IMTw=;
	h=To:Subject:From:Message-Id:Date; b=bkWBcxueIzKPQ2Fv2RTHc0zfmkrmBpy/76F7cb1rjFdWk8RL3XzTthdDSLt4QR5NSNeIJuZ5gM/TY+xibL/H2Dl9K1/vPZ9R8AxMaZKZdd1WLRcRT311Kwh7osPHqpUzNOZXyDki747/BqG9QqP/V5QTHfGnhpq6RPa+ScZo3xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbAw10hc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbAw10hc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB51BC2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788361233;
	bh=bw6o0hJOsVkQg1IVQ9jP5rhbDGnYklKhpeujrA6IMTw=;
	h=To:Subject:From:Date:From;
	b=IbAw10hc855ylsx9PMYbChYKSJiGWMkCFolrc1SReQU/NOeD/YgHt1yVVfv76UVde
	 +iA3Xhh7L0xIpxw3+Qq6B2qC+QhHrBhm/weDPZ3/Nwg3siQgG5+3Ow1EPQn42jrnyN
	 X4UB/Z0IX3EMwBawAc3Q81bnc/GWu/PhYrFp/aZ17/Fj0DbzBsdmAWRekqQiSwyRwj
	 3OkicupOcGNd8TRobzjceSRJEvzEaxpcjwrMi+iRRFNp8VPCmv58fZfU5pxJDGeWB1
	 kEVvazHmS5362/2eg6urpgifvGP7AkRBU0zd2TX9O7q8frjThNK3Nwo7pA47hjfDfY
	 hXk6nNAMoqCYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8F01C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836123368.18207.78394635224928134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cdbabb7376c6c4f356680699d0dbef5b547ca87b22a76e5d9fef4634bfe9ed9
Date: Wed, 02 Sep 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788361233
