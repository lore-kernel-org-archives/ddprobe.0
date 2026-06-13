Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401791E1C11
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781383594; cv=none; b=rJorZYTfvvmVHipzAftzY3273sCMOSN51IwVD/iLCSnBSNi17jijHx/bfGVliJn5K5GxN7XAUEOurw4R+bXnnJltYBGPypGJ/FzCIJc8ShEujAymiNYBgamXyH1d06FJ5Od0QtIpdLTaUfiNJOlnVz/f6zs4KR1N01nbb7s2bOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781383594; c=relaxed/simple;
	bh=wAp3jmc5qCt9lfTTV5C6RZX+REkqZH/L5RWi3AHVhkU=;
	h=To:Subject:From:Message-Id:Date; b=gR6kkcmBXnKr731kzjFM8C8yAYPMRq4CPYW3ZegtWXmDZuDlsbbuamzOw23ofMSPGdzd5/EsKG/XwaThoKszitI0f/faBI36YHMsRy88PWjF3pd9D+w0gDL38LGWyNw8L9G9QhpUo0uOw4YodXCxhTpIGYheXmHlNlUiDBwycCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eR8cZxHX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eR8cZxHX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC27DC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781383593;
	bh=wAp3jmc5qCt9lfTTV5C6RZX+REkqZH/L5RWi3AHVhkU=;
	h=To:Subject:From:Date:From;
	b=eR8cZxHXZ9byG61nffF1VsXlErPYCen+0k02QSvpbGmPdBxfqioeXQzMGoVoHNWx7
	 DlX3HUlKRTHCvORV792KQLHzaz1yOV60Wz5h7O9CwObkn/4si7QzDRwVBLqTEse6oS
	 KIjUcrg/JWr1KE9zObvP15ELjZVXfBPrmn5tq6Jm7wleCWr0ZdnRCBtyj6MiZDxTTo
	 ttvmCPBN0vl8k0/XOnRGmRtBvnR50w1FtaBblzRpwhQuuV1PTimYWWMUg7Hbd1Gznx
	 aDwpQALtB0y3Q3d0J4QreBWBgeU8r2e6EFr70fC6rB6mdpEH3Wt946aS3LLN6EZCID
	 EPcUdxtpIRyPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6C37CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 20:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138359367.23209.347449991787967979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b440f59bb22823f3f383ce0a1e7319b69cf4099a056059af0ac4a451aefb9adb
Date: Sat, 13 Jun 2026 20:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781383593
