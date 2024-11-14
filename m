Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474D918C92C
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731586554; cv=none; b=lKTlG6MVLZiEzUo8I9guVCpYJFgmkXbcep+aCjAowkBR+KbzIwMjxxKVuaOBx/Wr27hEOY4k/2H4RVBaC93AnLfZTuU7sShhrAZniGr0l4P2d/OHlvXRPVnh5c13xgrQw/Fz1hCNB1W3RJAnJbRC4XAD0DACSEVj6byOTcGKNUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731586554; c=relaxed/simple;
	bh=nLNy+YAjwcdabnu76rcbHiiZdyOFqxLgLCwJOy7vZwM=;
	h=To:Subject:From:Message-Id:Date; b=Xm/DDSqSOPVwYJwo63hBfqtx2qCfnArlsh7kwQrMBmgRz1JvIHevUrjzYNMCaaIFQW4b20QLYTJIJZER1oYi0eCLcd/cXWUYtMP0Z3g+6McowvVGVuFlYdDh1KPImxplP8AaOWG3wpNGu4KQ5s8N3PgTO/vnputB0k7S/H1F3sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPEVLX3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPEVLX3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0A4C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731586553;
	bh=nLNy+YAjwcdabnu76rcbHiiZdyOFqxLgLCwJOy7vZwM=;
	h=To:Subject:From:Date:From;
	b=jPEVLX3rG3C//Bz2x9RdBwQ90/KLnVm1v3j2obrtgqlu/Sx/sDNtAMY5w+687sANo
	 1ymggfYA6Pr12eebJ67mnwJka+m6zeWfOCFloEPB9Mr+bOoTm4zER0F32KzuVAVE+d
	 tr0xkJZ3bUTUB8P8wursn4beCva2XvMXA4beZqoBL/Q7KIG+ss5FAglLSGlaxbCBp0
	 MYZ3cwNFW3PzQF+z+WpbnFx+z/ck+NOzJ+jFpv9s6K7lhbUIfxJXDkk0lFYE3+9liQ
	 Qm5Ce9ErFPSgZC+tkyHP9odfb9agmwIfwPzkloWSIatcxFlaNEQquJxTJqCaP7SMLz
	 K8kjaQAhXlayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A68A8D65C7E
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173158655363.903.1359383977957980917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f729eca9457c45805f51ec01275e39d038b48526967a7aab6bde7f247efb274
Date: Thu, 14 Nov 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731586553
