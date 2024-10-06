Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E3B34C74
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728177954; cv=none; b=JEQRX1RAeyX5uicc8rsQJVcuSzV8iNVfqpnFGe6ao55fNsPzRZZGyc6Fmf52hYknH8a6L/8ulMG4i+pex+yBDr1uWGEjAuMZ3R1X/Wo8KaiIHP6Kc9Vd/tuLt5ZQMieUesxVsOdq6vPpdQWTAQtLGyBO126f6pu3xF8nNvS+n6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728177954; c=relaxed/simple;
	bh=fqSsYpmgMQuvFMz8YwuHDLsn+5cyHUG1AZfRqBHxCnw=;
	h=To:Subject:From:Message-Id:Date; b=KitGHmCpHtWIFmN+wS56GyBsK4SXzeiMMY7ycJDa9KX4AFoMbZwucOPz4Lgzev0lroM4mcc+8tH59K7uap5SQvfZVAWCGin7VZkiLQKgnClQ7Zau+nNYreQvpQxRY0anY1DA1w+p44Rv7+cZWc8XpqTsYyqYyFkJRQ+1l07h9+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjsNTrHB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjsNTrHB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA78CC4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728177953;
	bh=fqSsYpmgMQuvFMz8YwuHDLsn+5cyHUG1AZfRqBHxCnw=;
	h=To:Subject:From:Date:From;
	b=jjsNTrHBrT2mzvP6CzvZWdDst1apezjkrcMnVZ/o28ML+n8zZrgS1kiyNF1UmmNOP
	 2U1y+STrMCJohMxCzOwaK/s9kkW2ZuSfJ2Oxx38YQcYI7L+5+PWyQ3OjvXaNW52Cut
	 2Rshryfq6v2xBfW/eR1VNAzRu/ePpBNTVhNeTf06qUSszQRL1MVDI7+y1BQZber3k/
	 Vwcewc5FcwxgMwF30AN568hpKlj0RCEcRb6jRwZoF++XNReLn3zt2UMgtiMMIDX1d7
	 h4y5f9AdMBMizkw6zPti2uShS5gLc47uher4p1HgcPx0n59dUqpB2Y1W/bOtlLMCKP
	 nder3amvtXPxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA04FCFB422
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172817795366.19234.10485589626470509054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8378f1d1c3503f351e5d81ac5fa76ce05b621e4257f48dc4a3e1c70f4ca2c502
Date: Sun, 06 Oct 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728177953
