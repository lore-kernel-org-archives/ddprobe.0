Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F674194AE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717678643; cv=none; b=EhWob5ExVAP7gVWcY9GLefHwu7A7FWgz6WUJd1H/8MfibD05KLNKVuoRz3zeiXPt3i/peyxxxbx1P/94M9tLfkp3iLRZS3x4zRqgukl9n2OVjKp6xJtI5FzYccag7YwDPa5O3vbHU+Q6DPBuHmrn36ZnCDwiXhCC5Mk84nRpx8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717678643; c=relaxed/simple;
	bh=dPvckMPSXNBUPxsILPCQ0UPlW9epaYizqN74sgLppdE=;
	h=To:Subject:From:Message-Id:Date; b=VFdwIGjeTkAoyOiV6nWKj9Yl9YktQ1TWFxmhQBk3JySo+kqK8AB6nRcpV1UxPBEwWlIANTu0B3YTcQuLqW7sfdgeHlsqMNvI+H/8LbTso5fEGzeUuitJ2GninKK67J0zvsE9wtCo8aPAvnTaHrhkSGW2J1CIdntvTMA+tvv8eQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gx52kKaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gx52kKaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF056C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717678642;
	bh=dPvckMPSXNBUPxsILPCQ0UPlW9epaYizqN74sgLppdE=;
	h=To:Subject:From:Date:From;
	b=Gx52kKaDpswO6JnucGdsG0Dp15wcAA8ADoYH13Clex3bqM2TWH0IyWzI/kysn/rQh
	 cN2fI6PUhxE/fnbMFn8Cjli+ZF+0T492833Wp/lHNvM+Q4SY9xBas693NoB8uc3juY
	 7+uScQPAZkYwFkNPaCqM5uVYNSmYR4dEnrWHaHuAwIvDaCo770aXemsGDniPkdlgxJ
	 DBMbtwGK3yCNUDP1j4d4yv4nuniKVUcPgALuk2Hj3BjRca6qciZGAnATccFeXNNUe6
	 3NWuvQDRzBZaiiDzOwliIL6JcvL67Gli8E7fudV7L0D+WHArzbigV+W0fhHi1x+OrT
	 Za6buPL41xoxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB458C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 12:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171767864275.22914.14103622235501999214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96ec2328b9a5df9209e465772d5c4afba5f8e739423d0be5bb9fbf2eb58ad3b
Date: Thu, 06 Jun 2024 12:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717678642
