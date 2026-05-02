Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC7D24887E
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777744054; cv=none; b=bgOiU7qlD0RXabVqNxP9WLKBPwlrhlDE9KPn9nfEFEbXKf/9UYjGRRh/z8/q7qZIOwYEc8CKDVBTCh+anJvtLDaPt5cd3eGDCRNEzOxDeX9qDmBfMihDnknmExECZstDLCAqefh01kwZL0E08i4Gk/JLFQj3SlpqS51SPEowPm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777744054; c=relaxed/simple;
	bh=rkpgx3Vdn7JaQt+uuvpBbN83lsk/Mi4cq3XqsGduspE=;
	h=To:Subject:From:Message-Id:Date; b=hQYpLCx3uIqMhkIClz4n36HxxeXe+SwUUkyWBc3Tm4xPOkihHr8sJcgv6FZ2Ek1Lu49mLdI7/NT7gZZyqTjbX1NtgP7Ai/OmwAr2wSFt4OjN485Dtv7F4RQWFIDsdOWhi5m0mvopvwVvX3R1BV9GnIY/zkSn3P+5vjIh0xT1c6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPU0arwK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPU0arwK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1680C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777744053;
	bh=rkpgx3Vdn7JaQt+uuvpBbN83lsk/Mi4cq3XqsGduspE=;
	h=To:Subject:From:Date:From;
	b=tPU0arwKm1Sr4xf+KAQ1PIYheKKh4EewovaFqLV0fyLrY9ccTHeGJu49+zQjtlCdW
	 Fqh5WAc3mB5737xBoYQ/37+0sMQkhK97Cns5cldL0Q4nCyfD828blM/maRRi2wuqLF
	 768ZC7eDN2AUN+INpUMQUfPRae6H1C+O3XarmTmralnIWC/MUjxUkrfMPpI7YhwgPP
	 9AAjQzYFKmgCaGg4J7XVxPEgcyIwsLuR0qVWDwcYDu5vlOVW0mxEzhDP6W0oVfbxRb
	 9SKZfWYKVqqGGXH4PMk/MGwYli2/NpzD9RwRSNketoAmU6LWgAZtel137V/ugl/HQ5
	 M1Loj7Bar1eMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF546CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177774405368.13236.8387844197807515038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9eaeacd0bbb85247f064e4ced3517b9f827eb1e51e07dbcd3e86cd8b8c79afd
Date: Sat, 02 May 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777744053
