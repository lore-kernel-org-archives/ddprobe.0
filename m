Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 988FC3CB56B
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788180634; cv=none; b=BAHCOLF7b9aNJ00nN3u0Zob+EhS7ltkJ1Y2LX/KEuCGPI3IyNxktss7bFyiR8964axJSjcYYuI9BZW8ElT3BXKwZyBE68pRku/rb0yPdiK90OqvsAEwkZPukADL+fL9CRiE0lyvZuGzHwI5mCtMGV9PCIDNSD3Tq+u8KM/KNU+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788180634; c=relaxed/simple;
	bh=jAfCSbFBx6rgHF9gM07Bvub+aOvH4QVrEIi2Ver6DN8=;
	h=To:Subject:From:Message-Id:Date; b=jg5JekTOxSJf4RXAUPcXJxRfid/fVMLtA1xlXc5ys+rgQzSRKFB3srhp440IVT4mRoUvbpviysCvejqOesMYDxRWoGTpkiNROjN966rT25Nnmf+NL6N7V22uSiKNaOdsADclTTYAr1y56YoDZmW/W5Kx/MEmnHmSrKOw0pGrY9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnKJ2LwE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnKJ2LwE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FC6C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788180633;
	bh=jAfCSbFBx6rgHF9gM07Bvub+aOvH4QVrEIi2Ver6DN8=;
	h=To:Subject:From:Date:From;
	b=XnKJ2LwEBZiPM/FAEe9YyuDjHzmi+9VmSBvNFFmW16IkbbbjOkMAmq8xVMluVie9Y
	 odQXS5gZNOFRWN3nt01HKK4xTYyY/UWPCsTdJHYj8NJ0zY5PCIiIEzCjsE6luyvub+
	 D3IqTtiCXq4h+Y1BYF1JWCT8BaHKohPo0K5YYhDsa7mM6tsCI3AF/byVoDdbiUN545
	 rBZkqNpKXk2wPMxAOI56TMQ5W8X/pBA4TYmo5E3UXpkx+fCQsvFndABViZh/6kzBYm
	 vokZY93NpMeFlRc55xin+1lAiKok0X+AVp8I/Z5XrYHCgDTX6M32rMCv05Br3cvhSj
	 NbPIEZJZAlF1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7ADC624A4
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818063368.26992.12385913511031898260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 422823bd27afc21d73cc75c255f94967c133794252bab202b7af91721791a3ab
Date: Mon, 31 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788180633
