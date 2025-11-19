Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6559319852
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763580116; cv=none; b=fDJwoGucRME7u9NhjBTF/56Br1cJQjQwFu724MG5ydXxS/ndaMrmEU7qCHjjgwsgOsFqQ1GjqEAVIfz3t16KWIXL+s1ZVZHDwUlxTRbqNKN6ae+4xPvLVkDPV68Xn3AjhDT26wJF5FQt8w7CS7nCci1meS+kxWX4BSeqr1tQ3/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763580116; c=relaxed/simple;
	bh=HzJaUwWU8c8B89z1qDPa+QmQITnggrRou/oRSddP+N0=;
	h=To:Subject:From:Message-Id:Date; b=UXK3+QsvWYVq24W6ay/TU2FV5AggFOq5AISPsNmHG5w1KEMfPDDrFwJw03iCJHgjJsrD3mUI6E35Str1BhgAVMF8jv4I1uTKl0W7kXtWX1BdKp1mPDaneiavNi5ZsP7/5SK1N0AKXRfVFuiq3nihzGuW76U0qK1u9knCIBmLrX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQhqV6j1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IQhqV6j1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3390C116B1
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763580113;
	bh=HzJaUwWU8c8B89z1qDPa+QmQITnggrRou/oRSddP+N0=;
	h=To:Subject:From:Date:From;
	b=IQhqV6j1nZE1sHLlw55VRXb+22Mrq4ZtDhtLK0hNlo+1jNcHslZAVTTQma7+PoLNy
	 8JjzRTJsmBOer2psDjPOss8Gx+z3x2HmaTRQW8F6dKQgRDGQOJurmgOrXuAI/qjAiF
	 J13ZRjvbdtZgy4iPfSdrxa2nn6DoiGWJXiWbbM//p+jFnZHPpMPw5G7QIbL56IEphP
	 XzsWE71vHGCW/M85NfDoWPQd5oZ2P2rstM2snIAdxZnSxlTzgb0bQK+PqdO7NEPX2Q
	 zOu0Ndc2ngBJGNY71O189kzBQPdCiD4oV5iUKX5MrNaoCeevUkVUQTIo7OhB31E9zv
	 zxlzW4JKRQeMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93794CF58D0
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 19:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358011359.29914.5594309309886317898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0020214deca15e305f0cf3eb20d263a10b0a9876086ed074a772a72a7187bd4
Date: Wed, 19 Nov 2025 19:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763580113
