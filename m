Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25E0F37F732
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781684194; cv=none; b=MrVGNrHo8sVTB4wra3Kz3P00cCyoE/aWvRu8p4kz3Gptqg3y8/MCUAnIAPu6Rf5Z3XBEav1HOCNqNvsJN7TAYOu2i2xFEcXjRhEs/MY8fj/bUweX5TO85iJcb3ar+aFDPLVb91xUmdo7fZiQZu+VJ4b1WVOpLmykEEuJtWb1mc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781684194; c=relaxed/simple;
	bh=4qka1YwjwFYcJLPhKtWk+y+EwIHixglev2aGXAF+d4c=;
	h=To:Subject:From:Message-Id:Date; b=bhGbW0L7vLQZOp1AJoaBsNAI+KyqMEjl9BItp48q5c2S53WRAPkdXeYF8hlmiboUEfZbkt96LqyEkcUgGt96lHe1JxOt5Ux+8LyJqg479GJXtbkJYNfSk8CjPTN9pCUQapmY7Lvj5gbrGWcGnO3DV8MoqFXeukoxdr3WDKyauKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMrugzRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMrugzRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DBFC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781684193;
	bh=4qka1YwjwFYcJLPhKtWk+y+EwIHixglev2aGXAF+d4c=;
	h=To:Subject:From:Date:From;
	b=lMrugzRXEvnWqgEdZoKcLh7WrbrBth9hI4Mg6BKY+tukouaki/3buKXiTeSouL0v6
	 9/rRbJtEwT3gKIT/3Mic9m1yIr4vr58b/1RetmGYdLU3IpnIlWbn9MTWmon/mAuhnc
	 RPVd8qJMPsOICgwbbMsCCQzAMWcx+QQpw6kftNCs7lJnv7Bh6Ujbk8hLdbUrL91gZd
	 r0WqAIGJbw/85fIj9yLf68uZkwYg4zmftZ82JZbqq6aEJ5KmPp7+mR0VQ7S04xKEsH
	 zn3RRti8gfXVT4RA3JnyOqggcXWUhxj7OLkf055vaiMuk5+1OqTXFBbmp7yu6THkQH
	 SV1BscOt0XTeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA586CD98E2
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168419368.21812.1952140904166995193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21b16b34381cbaa3b67a64a95e59c431286ec6c5a0f9c5f634c0c94d693c0636
Date: Wed, 17 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781684193
