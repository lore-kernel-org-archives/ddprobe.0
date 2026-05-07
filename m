Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205036DCE1
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778157454; cv=none; b=FwJkWrYQSuGdZcubRy69lMZ68pCbLf0PSS2lgmPRTs6bB2cyC3TfZw0VA7j41+PGhEQYUm19ix8zCOL//52jAeenS/ZQT31DnARfIRdzmIg4NxVdspwKuZiFbdxjv4aslL+VghXl6eVnI3Z7Pdeg/WngGOJ25D67m92K04pMI/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778157454; c=relaxed/simple;
	bh=gJelIIaTZFaEFZATN8ZOLscXAgHxfP/Yor/pfuyGYKI=;
	h=To:Subject:From:Message-Id:Date; b=SRl2DtUSTIKpGPcAOVeKlyzrE/UYiuGEel+lqQ4FtgXreGFgx+Pj5mmWFQT91Bpy3kZFCormhekw5EP5OBlf3nLQJcAt7ORnI8MaaNnP1OUMR4FUMH4MSdtU2xbvaDHC6vx3h5QS3giKf0yKmw0CAOznexs4lUbgOC0dfPMHZIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHfZZA0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHfZZA0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8759C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778157453;
	bh=gJelIIaTZFaEFZATN8ZOLscXAgHxfP/Yor/pfuyGYKI=;
	h=To:Subject:From:Date:From;
	b=sHfZZA0JHxFGKRWm4+dJXnmHXIglGyT4zji9uFjLVofI7VMBE9a+T42vgIvZyPhcn
	 bHCmYJyV5FViboLc1odzhScJZVkazwmaTite4N/q3KPZXp3O2BR6paNR+lkKkm+0x5
	 7X+d6LfZfoK6lYJN98bPUc4+c7dIy0v1ihk+Q5MsWHWau+iBeHrh5YsXJ34g9BBdl9
	 c1aFqbA/SvkHjwSslvsHWP7YJHrSGaU/SReOCL7V6pvlgWSwqafobcoVg9OfNdYs0e
	 uZSppMZeh13TlPEmNsmEum7rqosE0N2ACBW+DV2bmDzojcN6h+EVK0KxSrm0Lwpunc
	 QVt+q6wkZEqeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6BCCD343F
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 12:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177815745368.7293.4200127888626958213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9dec1761c0954ced0b5e8767f2cb14cc382e2be026c8beef030fd17ed3d86e
Date: Thu, 07 May 2026 12:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778157453
