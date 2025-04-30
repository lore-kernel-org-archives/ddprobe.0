Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC0C219A93
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746050394; cv=none; b=L2r2YYUSgOhm9mZn6T8tyF7abhgGwawgNlw/9ScI7pDZD4+7Vj5FOjodH/XigYizTB4qb5d6GJ5uGNV8J98SyrbXUsYeZGzydNZqBRUBXR/PV61qhjzkXdMQT+CyJk8pFyQXTky8qkfbVHOuxqkkm1sMPB+e1Brj/05lMYFiIqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746050394; c=relaxed/simple;
	bh=qo/T3o5fy6+uL3o7W6oINo0eoR9j2OQ2YKH1E3MIxzU=;
	h=To:Subject:From:Message-Id:Date; b=ZwQWLWV3/5FRN6iBThhbnofMZCfAiAlECVKNV+sHHiTikLC5HO8lgczmAK6yhqnsibIop8S5zoReHrAwBO7vAkyfMiKZNUfK5SjAm+3lemPy4SH4pazhO1s31LCV2QXz1bHH+IqtcNgHb2gBpwDQo/rA55Hq+nOKXlVFjIAqHyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mfvvkbsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mfvvkbsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A79C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746050393;
	bh=qo/T3o5fy6+uL3o7W6oINo0eoR9j2OQ2YKH1E3MIxzU=;
	h=To:Subject:From:Date:From;
	b=MfvvkbszP5sLHgChJfqmsLVVEHxjHQ25IUczw2Om3cMNtEKlxRm7fD7mjC9uF00RA
	 Bp210WcOF/Qi5dH5V1amBWa4habEcQIwiUkqdh3vu1H3ASpcKy3Wqfts6Puy/ZrWa3
	 NwYiHd4OhsFO8FmQKZO+2WCCMsB0ZcAi7nealhImeHLZzEWSdC4X6uiGRU3QiRVyif
	 J88GkFJ+bP3XwHpIzRQXyuNb76PDqcYvFAYHJ4pX3Fpo7Uau1GatKNHSUOSP03dEDA
	 Ac0KgOvOQc1n2eJq0OD7G0tRnFYjq2c19Pzz9Z7ioDVsAhpcuF/Qp+I+Gg7Vz7fi18
	 rgsZItq3MO5iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE4C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174605039357.19673.1502728608294501808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1310106bd852800021ed384f3157cd998e9b6d51ed635bbb8571ab839a6079c
Date: Wed, 30 Apr 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746050393
