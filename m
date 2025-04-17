Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4277F20330
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744857594; cv=none; b=r6tSRYmfHxcnnNRHtuiXEGQEaURPSduLR/LC5Fo5zTPuFUroW4qLGTGRjR8wlsB0B0OlzFiOv4E6EH0FoAlJ1u5L4C0MwzPOtbl9UBn+uhpDNb6Igt0Jx2sPdWFvNCwDNNA/bFsNzs75eMeSgCmHuTkwVcjPjOZ2Ze8Boe7IlSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744857594; c=relaxed/simple;
	bh=DVb49CeGmjAw/8cHRyX9zCUotRi7UMq2cmpTjVeJDwE=;
	h=To:Subject:From:Message-Id:Date; b=hlE0qykrmHoHKmNZeL0Y+mxrGc+xEBza3zuipoYkzBMuAr8Y1zyKiZlHAaThLDJ/Wmxv3c9QEf/fb2V//L0fxnXs0yP0REWFHruWaa8KGWL2wOR9W7ROvRaNpojqaonnS2E5gsxrqDEtTgaC/nAM5ei51W+QgwY2AmSr4vYQInY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qYq3n/3h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qYq3n/3h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CDFC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744857593;
	bh=DVb49CeGmjAw/8cHRyX9zCUotRi7UMq2cmpTjVeJDwE=;
	h=To:Subject:From:Date:From;
	b=qYq3n/3hvvw9IPetWl36SgrP3DXbAJSgQeLjj45eijioE8tXyL2Fd7lLAwjAxu2tu
	 AbJHvW29Ei9SXnNR2ExHDYa6FbYk1v64eYz3lrjvdzzHNczgDcHZwtQpQKKgpnVkBK
	 0qDAa34AnW8ukassrm7UsNmbkM4WBMLdFQAM0Vj9CtCzCyuyWeLA1uwZlZqHdNZIjO
	 7eLH5cjDW9v/X4P5tBDOms72UhWifEAk4qCiP0bVasn+rxTxeuzfpFVYRYy58jkuSS
	 Mdkyd8kC1VTVFDFrLx3S0+FY7vWbobuGyztiNxAgTy0JC3UDJbpqFiBZw3PhljiDod
	 yVXZvmNk2b2+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B53EC369BD
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174485759359.10596.1613958126037591281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3191f87e180a0a8be9e51ab7af50f996348fa08a6ce36fe723cae9282a65121
Date: Thu, 17 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744857593
