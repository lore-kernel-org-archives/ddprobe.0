Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229652264C9
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759745394; cv=none; b=FA9K6xArgYm9AXNuN/UhRJ+lqv81k7zL3jQLyns9kUE5SFnR0CoJE1XjRa/3ZWD4izpU2WzUutWWMPYxKauA1dYK+fP4snXtS4JvXjWMwqeCQG10YmcSvEX18MQgCMVDcAJ+WNfFukx+wL3bPKG0y9tXS+xzW1ILrpteKEzYnhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759745394; c=relaxed/simple;
	bh=Bn4x//2MAseqil0nbEiodKP2PsznTg6Z0GtZFp/KzZA=;
	h=To:Subject:From:Message-Id:Date; b=p/vfli1AdKChZ+GftEdTLM4sk/pThgneCNOXr+ZLqPuvrV8TaHLGcSsZXGX8c75SwLe3WV5B/g69oJfvdaN5XVm5Z51LWLIa8SxlVYr9XfEQA6e+RKSv78in2P91N6+Z5yPZ8Y9mI9Ogpc7CVkyqIhXIseD3xJ6FCJeU/7NvcYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPfd+kZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPfd+kZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B84C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759745393;
	bh=Bn4x//2MAseqil0nbEiodKP2PsznTg6Z0GtZFp/KzZA=;
	h=To:Subject:From:Date:From;
	b=TPfd+kZOpFV+xIFWP2gRoxcas+QzgHg9vKU/OfS8dZz7hxt17yhYXySG82ml3hXSM
	 7APVUCYg0whsNxonhrtt0jwYon/m2DCj39x1YMoD0IcT1zqN1VgnZL17Dy0CkHu5nh
	 vcYU7+8lpC/ax/+san4ujTEqtxMchklZI8uY7vjTJeRdRnRbNyoSFRdGpXn0ORXPZo
	 3uS8Rws+egT3ZuY5ErWLIaqPad1kB3DGcGdhnqW7ofgbUsHk3f/fkBxCjD3ohOD61/
	 ET1OooZHJbkt6rYPaqRxUlzqvKCCn8ZZPbfx9M2vrWNyTqwLPcuUJISgId1oYazYp4
	 JpOCTYuyMXTwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90068CAC5B8
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175974539358.26515.8697881541338832098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f78320275710b8f03df8a2818379f982ccfaf1f6de0bc8eea1d440ce0273659
Date: Mon, 06 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759745393
