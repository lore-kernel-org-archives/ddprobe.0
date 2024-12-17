Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232961DFE06
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734434154; cv=none; b=P0f70PGwUsmv+MWFX4MH2TIZKvsl+RhGl0GEpORJ3KvchLITC3lEX4seNodYyfjOQyBof7i0L0x7FXJ3P+xE1qVMtznDfsCEzvKjAESIf+ZQGgNwyVdJ2SuN5JN8GsdhQLhHkylRvptOm/Q08nTduRbuLEXZy/sBGj9D8ml67G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734434154; c=relaxed/simple;
	bh=0BXq4FrucSf1c6ubbhLlUxFK/FJu2oZNCmKYT41z/rw=;
	h=To:Subject:From:Message-Id:Date; b=CLzbv+SRXES8QMDmFaO4xcj9/49/1bMiyuJ5R6zBZA+k68gkP4X0Ih4rR1WWzgeb4VCi0gYJokc3arkBn/V7zqY5dtsg6bpLNNg7VdQW4i88YlPR3OUia6NLwA6fGYe97G6tsXMPIwjnz1STrhPMY/9Tj6OepbFKiHgew+bJ5NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VcAya0b+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VcAya0b+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD5AC4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734434153;
	bh=0BXq4FrucSf1c6ubbhLlUxFK/FJu2oZNCmKYT41z/rw=;
	h=To:Subject:From:Date:From;
	b=VcAya0b+vAB1wB+S66uHOiD79spzxMC2/D5RBzM03IqYL1A4eaxAOwn142j0UlrGZ
	 LDyuxDeKRqGEsmq01JOlrZ2JqG4C9IFUnykK8TJvQuQeiW7ZgMYdIrKUQKqkboKwMf
	 plZa4quCtAU6GhDXwxFjrLx1/aaBLF1WQHLNPeSiZr77Fd9Q5TFESWhasKy2C67Sv5
	 vSZs8JaN/oPp42tcXNSc0A1DoYfhUqxrbmBGVm+R3KZnQjtwIPgOllIVSMbZDUOvOJ
	 JUc7d54OceJA4KiFNeAtkeXBrFJSYKxaeBEsr42dkc4fKE/o7sUTS63Kkw2BHNTHpG
	 GJnG1hBD4AXEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980F2E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173443415359.27234.2561751347026843199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dd6a864c280a8634f87b73038ceda92c406253544309674bae8fecb826fa9af
Date: Tue, 17 Dec 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734434153
