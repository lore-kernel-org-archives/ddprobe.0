Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E104B04BD
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786059634; cv=none; b=rdTpadMjCW6+rkwiaDNWW52rxIrLd3wLD5L0QW2137uPk9SFVqcugn4DDa+SBhAY/frS8JJd702uGYwrY1aNRYVRzVXpsAM2zgVLsZx+7+fhS8don9ECX1R/h7PKAbkRtK3l+YmlhsYe5bRsdnLJCqzC+dAz/bZb1A6j/6hw8LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786059634; c=relaxed/simple;
	bh=4CL+npwJbpLAgk4zryyRhYqWTOZcGx1LJEhAkoiiesA=;
	h=To:Subject:From:Message-Id:Date; b=SLWP0YLieMw99DvFcJcLbRXCAETMyIcnNSLutFKA6BaQc4/QldRiL/hwSP9NIPucp+ZVc+SfQuj/kaQs0FBu2gRoDfUCNcLa/fJrGGTm8b1euRr6jLu13yje8YL2Mev/TC4l+nfH2376p50u8Qyrl8lrZh3oDKCW4J5hwIEE068=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R1lor7Uk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R1lor7Uk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF64C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786059633;
	bh=4CL+npwJbpLAgk4zryyRhYqWTOZcGx1LJEhAkoiiesA=;
	h=To:Subject:From:Date:From;
	b=R1lor7UkPyrIL1pa7X5XU0A2N+qKjwbr/w5RtwidH2URsMHcEBl6eSulgtDDxjnNU
	 sz17y9QJaDAjpLRHTy8CZQTVqCPCuPFp9m6UKBH0sIiDis15I2OKY0S11kCSTzTaKk
	 hEEF6dN/aoX51gOjipqH5CrV4+iyu4wT39YvNfDODNslFSbENsPd6y0DD0UeuS45c0
	 4xkkfP3gP2ycMFwbteKp3fhq9gqPlP9Botg3ooaMrZVgNoT2BjEsefb6jhN9dajAhA
	 ms0KNgQOL7ROxS7zfT2CgPnwtuov/cGm1ji0v5wL7tPi7cAKJK1GPSPe7RN5v2H/ka
	 CTA+pd0/KYpdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2E9C5AC7A
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178605963368.22799.13039658694850016659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d361b7a3a897aeb706c81c6c68548707cc096e006006f3853ffee104a41a6bba
Date: Thu, 06 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786059633
