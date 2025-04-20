Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1041C07C3
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745189994; cv=none; b=OqIWArOCXS7p8RnoHQV8JAU18JkhvTdg/h8ivkgcTAnTQ8nymIvdNNc6jKnVC41dZxSds5dw9hoX5+0cIuxNEpS2Iymz3JOLR+glzgTAMc7YfJfevJHakpzFI7neZQIztr9L5y52uNLwjBaj7AZDRGTnTb0oHwshKSzh7i5egDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745189994; c=relaxed/simple;
	bh=c2/i3mAYNVtmDvKzkR9uJaZ7st08MjBfP9gT2ifIwEM=;
	h=To:Subject:From:Message-Id:Date; b=Sd+yLaSuBHuvvyuUgE2rKnVUx5PKDH7iZBYk6K0pGEJirCQgisLirXK7QQfeOebqzUAkrnltetWKRty75PQ6wIBuqv2VyNgz7FMXVXyVKKIVmcU1T0P8ePTlMYwPKmOPLEgBknq5FIpG3GdZ6M3x6yK/AUqdUJL7vjv8pd4Lw/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kIvMAe7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kIvMAe7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B1CC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745189993;
	bh=c2/i3mAYNVtmDvKzkR9uJaZ7st08MjBfP9gT2ifIwEM=;
	h=To:Subject:From:Date:From;
	b=kIvMAe7zofSnj+l/VGI1GECzt8tQN9Fx0k6rZlt4tXemU4tx3wbiBc4FSV/O8CSJB
	 0RtJpnJKcqIgOV8CHqgyh0Y4xDT2RVtK29roeXHMU6B1QFK+WcR2ylSVpRT0acWe+C
	 JhoRRx8LKxpgXal70YvKJf6M+ZoK5JvxWFPd+2uei+/yQIKSv+mcIMLL1Nt1g4RjGq
	 dAgVinp6XSfu3+y1HuA5kZH88YsANTLGWIKClrv+eySVKgUp3zxokWJHAIHE++wweG
	 MzZMotY3c8zcjA4u8O3KWBPHDm7+7B874+ssrCPhhx/7/0Mx52P99/CIPvRGeyR05T
	 KedgQMf4OsufQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940DBC369C2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174518999359.31435.15434110938835178654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89f704525533c06e7ba62aabab4219b6be77b2117fcd887fb676f7db20e41e03
Date: Sun, 20 Apr 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745189993
