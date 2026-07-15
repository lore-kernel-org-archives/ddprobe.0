Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E4441DECF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784131114; cv=none; b=tHL04A8M0B272hRaFEzWu11ybgLTXGQx2oOTQnIOCiLcAtIovMlXlW6dXvOxn/F7l2vTGk+gZ/ORmEep9m7W0AWWccNO8F9889/rcFxhlUkza6bo3UIV2MF6tcXlazB4qWo9MccFHLlL/l+8WG4pmhYHePTF4XKDTBrMrr1AXSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784131114; c=relaxed/simple;
	bh=ohPj1MQwWfakAYqvypNWveTcOPIOLlsZdlIE19UYc4A=;
	h=To:Subject:From:Message-Id:Date; b=obiB8CRhkEPqaIFTageJNz1SKWejcqTyxFu99c5Jbs1O52ArTuoRkT+t8YlNv0788zkFqPqfL03NJtdo7Vks2YahquDYR/cPIEuSfji0yAF/hD84+/x0BE69Ut9dGgRS25kyhX56Tx+FfrlG2lPpb7HmCrvSiojt2eLxOy+BhzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PqEsxpFJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PqEsxpFJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD44DC19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784131113;
	bh=ohPj1MQwWfakAYqvypNWveTcOPIOLlsZdlIE19UYc4A=;
	h=To:Subject:From:Date:From;
	b=PqEsxpFJo7ddWMgX1t9TRabnm8/IH2cyhSd59BQK+jHNDygQ5UvcCR+Fkcv2e8ZBd
	 3E0XXrZTACU8IKWJk0Dkgx56IlF95GTU+Pr/qKwPgFI2zmKPF5SbfnkvaO3xvFWAZB
	 eZhAZAW7eQaaUuhQ0EIRlj8xKdDmb/Nv//pOID3+F+vQChYnoG2zUZqDiJZIFltUUQ
	 32F13XFw9TvH8KC8nyitoY+ggRp5G1+9CE43R+O8XvAoL5UUBQwQd/B4SJEFCZkYTb
	 F85HMsXJFk9ZbOROz9ZrIMcuGaboEuEQcpXKC429f6OeePQzNRrupUVrmUEL5TQ0tt
	 alceh3Tz1btmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D9CC44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178413111368.6886.17778882751171678184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1869a6252598cecf5ca58327972ee7ddc0f91e82c661386c0020ab4db82102e
Date: Wed, 15 Jul 2026 15:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784131113
