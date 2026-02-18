Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31C372E8B8A
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771450494; cv=none; b=cdDJJXUzHTzjdSyZ0xc0VtNL58D0H8rj/yJNoqgHWSeP4mmcPFyJ/MqYxgSzK+4lDXSrEu+yFi0COBYtXgo4UllNl3+iJTQgtrHkm3zQgTit+i7zPMvueqpNpQnmMAHtcrNnpH6Fz3sK5+sCg0gOaEPe+Hdvd4yOJlUevIfyyOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771450494; c=relaxed/simple;
	bh=b5nQOurx0cwTjCG/Vs/Ve6152V7bVFl8IDvbiDstSGg=;
	h=To:Subject:From:Message-Id:Date; b=oVEe+0hH0841y+zEUWNxSQwSOSxmtLUqTx+euH9m3NTs/AsZx6yGa/3YnBp1jXrxOj8Y2cfjHhanJQHRhTioCgUPBoTwbf+s3Ku0zC7/5sHSxbBETS0HUNrbmLqsGr71eFXYSdoBre1h07KeQPAf5eBPb2K/UsBXigFJuAoKo2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sc/Tuic+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sc/Tuic+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8ADEC19422
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771450493;
	bh=b5nQOurx0cwTjCG/Vs/Ve6152V7bVFl8IDvbiDstSGg=;
	h=To:Subject:From:Date:From;
	b=Sc/Tuic+yhUsjyGlCQ05jpeP/L8y45sSyhwYzpYys5sH5bcu96iKvhsDeSmMN4kFc
	 VqFk93pvkRb+VmSwgEer86j2wBydyocYypwQ+6tWC7qAkie0ZBVfDYEgBVTu/samwn
	 aW2Iy9rNXgdOW/1G2j4optbN4sI01Dv7slzKHglVvCahfxwjoJ2GBX399nkeGfjqvu
	 QmheeTLVGkVYyQmCLttfERUP9kqmGl0RbpoxcsGHdLDutuFZs60+3SxraIUEfGATU6
	 9pmK2c1KjaMkVZNqNaF8MDgXoNk2ImJOkn1UiOAbQpU11uSxRT+g1RXKqXDDKkzxKj
	 9nZEOx7HqM59Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B31CE9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145049360.22688.1515039282458969160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9150c39724a4ab3ee85b4ad8f35de1debc22699fc8d11e1e2252c408b8bad6
Date: Wed, 18 Feb 2026 21:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771450493
