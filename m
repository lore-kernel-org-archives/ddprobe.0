Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5861F95C
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765417974; cv=none; b=GcRGXS5TMEToJ5oZiAVzZlVGL85HW2j+X0qeO7tKCeSNv3scdd2tQ/Bw4aaW2YbOwH25ro/H137wylPvGD7yUloBF6Iah1g3lOK4jgSMe+iIOKiY9YZyfRj/coCVm1dauicuSNUvuKGe7SOVSbAg5nxVMcQyqXxCeYkYcaXyRW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765417974; c=relaxed/simple;
	bh=e3v5uu72RKKxxatjIJ7d3f6FA6VDRf9E/ReCGKhkZ6k=;
	h=To:Subject:From:Message-Id:Date; b=eJB2NloZAy7xgJA4M1LJ2NhBri8FfOFgoLn+OCHkAYlqI0xA7xJINyLOOxbqq4YSosrGom8Ax5viDGt4bwNBHynTB/f9G5Oub/eyUktsoG1JQt/Vb2A3a7Pj4oNEICedXlR99C30pGhFIeBE8e3hh+fLkQNsRcNyIYcMR/6dR0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSnOVe8K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSnOVe8K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5F5C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765417973;
	bh=e3v5uu72RKKxxatjIJ7d3f6FA6VDRf9E/ReCGKhkZ6k=;
	h=To:Subject:From:Date:From;
	b=cSnOVe8KljE8cPsaCo4YrHCJaC8Y7r75cEWg+GEeH0cQGG8/6Tm5gTEpHPCuUecwa
	 4ZNuJM9aQ30DmyNhdfG8EDPgAR/I8lON76gmtTXK47bpj5R9kOTaOHF5ru2q0gxv6L
	 nrCVoFc9YfUxfWr/0gGEaIp+9mW8s9zdAYbYDNr8nFnLaQSxmHdDZOT1XZ+1Rb0LkI
	 KKjQiPRKdZrpFWwpXkdnjfHpBItf+4zE8wuTDZN1JByYlzComkfLJe5oZGiCCS2Mmv
	 VYwpxLv9ja/a1BXbp1cYLpy84DQesWGYZijmlSAOV7OZtcgmV4L2zpTWvCYq+tcdo4
	 HrCtQfr5U2ONQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98487D3E783
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176541797358.24132.7913138624115800579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 491bf8301fa0569b5d64fe713e554c760485dd7a9345b1524d617a946a0fd9fa
Date: Thu, 11 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765417973
