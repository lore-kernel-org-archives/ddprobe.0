Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416E57DA66
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770493434; cv=none; b=noJXClbZaNGTHFX8dOQ7LLqtIUmPsHg2Icd64kfgdVnkP0f/rq87ncfGpm/ALO1RkzL+Gz1GAw/EEaBI1SJMasOQAwzVqIAM9wn7BEMVfT56yDqIkqiTgi1IbuegI/tTcIomu/TEND0D3l66w5owvFVF8O4eDm+P6RcSzKlFYPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770493434; c=relaxed/simple;
	bh=+nD8a5/DOx9LsgOh7q1Cq/3BZTTTsIiudRz7QH0LDxQ=;
	h=To:Subject:From:Message-Id:Date; b=k8fkRJIXrIFabKyI8cuZ997pgNWliM2kIbhbMWwkGmuYZ+7Ew5HVKATZbEfVfU3F0x6UF1b34K8LPTKrTL4B/GwTR4/9PTkYckk9FODFsxsKTCI7tQ8zGJjOnvVbOWPd9BONuoLSMFw2zKvx9o/HR5TXuqyBtztFjryUly7tmLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWoTQvha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWoTQvha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB8BC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770493433;
	bh=+nD8a5/DOx9LsgOh7q1Cq/3BZTTTsIiudRz7QH0LDxQ=;
	h=To:Subject:From:Date:From;
	b=oWoTQvhaH3W8beoEIUzPcrbcs6Y9bBcf51IJNI3fPfEgFxwvmztZGFFvczUOJZytl
	 KvAxjUXr4GIq1vk5vGCkdleMzBRmx/OXQBOADpi3rUEvSXEwEdYGmej9MYbx1OfUIz
	 49/7p1WYKEbDvHv+mhpq4ZAk3Xh5wU5gdT3QmhJiD5725XDrrBJ1YKd1OxXlzNtn5A
	 rNIGjc3YSe+4HLqc4JxttfDKggscCReaYJN1eGT1qXGb8tFwrR5djIz3T7eBXVN7gE
	 6zr2mXTieuZj1qJVBOS/xUDkJWjLQtSVpqEmGveGc5H71oFMSULDmD2wRyEEmDFuWN
	 lA2CTSv1vgpow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DE4EEE0AEE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177049343360.644.10099191265934439922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5711ec4a26225f8933fb7b9b1fc17d37f2f3179bda8bb02f08b0f9ca24fdc2c2
Date: Sat, 07 Feb 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770493433
