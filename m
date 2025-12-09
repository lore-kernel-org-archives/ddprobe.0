Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BFC29C325
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765269774; cv=none; b=l2uxuOH4dqg5+TSFRdwX6nnoa4kVydP2unhUgCS2X7aOwhKNMAtAPvJCpqG4R/fXZ4cXm/KljRShyPKDF/SUdaMaK2aYgBvSxjWc9M56tlgpdmNqpPYcsryo2K6qC9QFDwi2xtINHHP5OPxcZSC2OJE1GUjue4OWVrZLOjPB46s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765269774; c=relaxed/simple;
	bh=1sa0TwJe2o04a8YZrdE9Lf2zSpAGjS4Dne44Dl5FXkQ=;
	h=To:Subject:From:Message-Id:Date; b=U4Wx872XfjmhbEa2rJ6mY9pr4bfRNr7i6ynHFU0+vZ2/dJityzs7vkCmryfn6ZUOAttjhN2MmFCd5REa21C8Lgcw5ojeFCfT904vZ5PxD6sRki3hAlq/S/JBkrr9PB31YtIL+UyvHjRhDLdzQIvwzeIYUAP3q2jFzDkxJT79T0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CwzHMw0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CwzHMw0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37EFC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765269773;
	bh=1sa0TwJe2o04a8YZrdE9Lf2zSpAGjS4Dne44Dl5FXkQ=;
	h=To:Subject:From:Date:From;
	b=CwzHMw0cH6HAKIHkBiKqCXfjd32J2Z63b/crpKeOahnVEOvcEb8TPvGCKt+dwRszc
	 rxb4KT/VFR6e+crVS1KuV5iBUWFd6k/4SzCk67IKN4LT1LcsGzZLCeTc5vLh+uQwb9
	 zo3Km8wLZ6omlWhM9KbNrcL4SzESo03X/5E5xkaFO+bLGRiIoksZqlcT+XeMIdHye3
	 Fo6UMLtMbQ7JMCzaqqZ03tkF9/1OwfsCYWD7I/SJxRZyk2F/6hN0GRLo/P65NC4F7F
	 qpdepKNNyT6ValCNaFbsZaoUSSd4E3HQBTQrKSVO+aSDrc47UJ4HNvvCSPeJ+8GQ+Y
	 WKR7Wft2JGXGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91556D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526977358.2578.1142300551215771580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b8f5eb0a2558f19779236ecdeab69b4e3da93d96c1f0e5b7852a794ba3d1c89
Date: Tue, 09 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765269773
