Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D61304BCA
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755284394; cv=none; b=shGhHY5eEJXSRJCMMgRjrrD9r2Bt9GZjngwcKzc4tvBHA5uPX/hyfDKZKZ+/ivEoANWQu818KWP6tSNArf2yaIQFeChS5ROePbrGFFGFxnXQU8sN9ekLjmN3OmZNXhCw1tGgJciKqc/oS5XQKyE+RWyHbWkiEXfm2qBEY3UPmkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755284394; c=relaxed/simple;
	bh=fvKZCYTwLuAMGaEjK9loI5BVxjFuA31+NRzBOjjxizU=;
	h=To:Subject:From:Message-Id:Date; b=sx5A0cceUi1SBTEYSZzJ44xkfzEWW3UA40zib7wmU5rMUQxcJ1ODGHF7rrQg2B/jp4MFcy8AnQl1kI4Lrc16+hi8W+2/gGUOafFgMPcoNiqKGns6k1AyTngQuovDWfBuWcW8HZtk1FZWR54xNZZ82nPrIZJ2q6pkKslMsgmAiJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tquZJg9C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tquZJg9C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3900C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755284393;
	bh=fvKZCYTwLuAMGaEjK9loI5BVxjFuA31+NRzBOjjxizU=;
	h=To:Subject:From:Date:From;
	b=tquZJg9Co7psr6LXoY6IdohOR86N2/spv0U5PVRlXDeB/24VCmC+XI/QJIpuvIuus
	 qB2fWbuVUicKAKTfBmNcUgyE21jNH/dJh2ZATCe+Sem6MOm8NOrkHYGbhABrXt//ol
	 6l9PH9F3e/Dhw8njOZIYxpy7751+agStEW1dPNK+0Uszt5CVCUe8wBKklBS8sXZM9y
	 gFZExSKrWsDEMfIGEuKIdvCoUEgt5V++yx7vyHtCuJlwgzl1waluzIvRThhUaQQLJt
	 JAssGM4yNIn1Qr8cNtgCFoFsCiyGfWBYiItPSWUR54KI+zm2Scw2Sy3tPlBgIRU1ek
	 E8EZOFWLeO8ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9409DCA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528439359.32057.4998149868402027705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1521df561f808699e737262ff722df7afda9a8dbf12e9b50afd216194b44870d
Date: Fri, 15 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755284393
