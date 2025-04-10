Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337AC1EFF9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744318794; cv=none; b=lYAmbx3wB/kr6BWqlhzGehpqZj/czE7O2oF+bAi3E+6O4+cBA2eW4GQPh5om2hiA20Otmi/6TNqrjESx/5P21/qG8ZAOlY5ZDMp9yA8MfFrh5ubZo9Nb54BZXRs2qqdw3StgIrJM0YH5IO7xPIA8q4k2rplg3alFWuQrGiSx0hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744318794; c=relaxed/simple;
	bh=oSLi6utdASCBe1XqY3umrOV7nCMPRhHJeX/CaHvk2mQ=;
	h=To:Subject:From:Message-Id:Date; b=EU51dME7Rrqa2MXihyglHnr3jK4L5s2RhCXraNPU2CQ1oaqMnI1V5RRuqeRbU51shH0MKhPjntNCAJLWwZyQtlYEelli4sXf5cuMkm0VzxfHpIfSS791DAIrcQF8Oxuh7Rd5SXV9xYUtvuUPE660qZ8tg0Wd1cQJtcXpEIXlOk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkR+IFRw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkR+IFRw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A262EC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744318793;
	bh=oSLi6utdASCBe1XqY3umrOV7nCMPRhHJeX/CaHvk2mQ=;
	h=To:Subject:From:Date:From;
	b=pkR+IFRwzT76kR1yxZwqM2qkhXBr4bHkKdpiQLt7SbNTcUFeZZAXPlUyH8AfpBdLQ
	 CorFv42NIbC4ktbm/pf21JtkxoOgPFCeTT6ElIXEQ2bNBSYrrnJ4y2uuWDzelR6/ik
	 yc35EpV55cyfsDXSk6w7KpRGJku/pFhc2TrW9IJM9haOtSPPIBnqSSxS54Pnj3tRmC
	 bXLXs5vCFZuE2DN5JQnfws3dw4f+JO8xoEVMaLOe4QT14vncdlNhlnRUcxYUWuTfi7
	 jTS4GR+xRD8o7CuFNiusDfdxt3ywyt9va/Wl15uJa2FnvsfcIyG9AqSTF7gwrIIRpo
	 sTp3zBhC1SR1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F1C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431879358.17691.16587002729520736480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e820226ad4f23dfc7a6e5b012078206b92e1019a4ad25ee99eb9212d0d81cd
Date: Thu, 10 Apr 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744318793
