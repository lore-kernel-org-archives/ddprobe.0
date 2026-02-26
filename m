Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB4D28CF6F
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772109294; cv=none; b=Ivf5PKcsiQKQDTKY+66aXW+uSRau0AplBtBasbUelozguLmHCwWduuOFCXWf5w/iJQaEru/edUDMiRai+jiQCUNaxiT2mpzJCY/rOxZ+zr0msOStJ1AIJjQlvrf1I/tRWvHmfRsdxFJ6biXqLrxzXCerzKoCMR36uZpyb+zttEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772109294; c=relaxed/simple;
	bh=gHxfXlsLI3C7aAPd7U6PQYCfb43hEQR2sgy1OZI9UCw=;
	h=To:Subject:From:Message-Id:Date; b=Y0pX0CILMEeDkbHxHRobETYvVsQqon3qD6Jaz4nKbwKqOKyfN41ZBpnwMd+QVZ4JgfLrvOnR6JnRv+XBwpvOm0t1AGBme9kQDymZjrMtl5DAW3P5zFSiG+9CBlg5Pyb1AZRyzXDhIqnNeL7lTYPELO3QR85NMQff8NZjXQvyabw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZe8sYi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZe8sYi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23B7C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772109293;
	bh=gHxfXlsLI3C7aAPd7U6PQYCfb43hEQR2sgy1OZI9UCw=;
	h=To:Subject:From:Date:From;
	b=bZe8sYi+ttZR3hjLHT73CSJRdoQLDmfxAkM05VvpKReBVCvpbN7qK03psSkJ92TLw
	 tlusSlQavcUX41NY3sz8bCD+c39CHcQbRCSk656VtTutn8R87uNKGJAS6ACLaWyqw2
	 Q7p/Rrae4Xr55dt41QlIXtaUaF6xn//MzRzypjnhYzwYgnOwb6biOuqSo3uJIQEY/k
	 2qkABLWu/fTVNvVaqbn/rTITOI45ILVsj2TJxK2HVBHpWnc4gIN+3FBnDvDBS+6UmA
	 8qeuQalTXckpgmsASC9NL/+4QcqmFD5k014ZjagHoyshWKGKmotcNE2OG0riRN7303
	 mu7VmlgrEbO5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CCEFCE068
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 12:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177210929359.8018.6963043040209983789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f21e707c0561a489f1b4308fc7f4295d759ca5583bd7b43f07e864c6158369bd
Date: Thu, 26 Feb 2026 12:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772109293
