Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E3C191F91
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769342034; cv=none; b=CSZvLLH35viK5VkiNZXwt/owqvH8oJaixNi/YzsgexxXheMEBhXiZDIagAZVdDsUHQR97EY+Eb1nSkkX7fkzpz+B1LFDWqBnPoo/YcVtwNwKeZ0DbbfvME619aJJ3SW3gG4U/5JOshOMDAH+2A9Jf9q3nZ89baV9v9fZuIguAdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769342034; c=relaxed/simple;
	bh=AbORlYrXZ+IkerqaIPsOiNhg7xwmR0htxNrXkTXdg1M=;
	h=To:Subject:From:Message-Id:Date; b=p8uVk7esIActazHh94RHBT53KMh1I82v7uMrnWt+x/ufEo/RiygUlC4GW+YBlehfiZRRldQoMQouYyak1vuPU87JISV6kPdG9GB70tid03izfngzE66sHcpje2Vy4XGEfFAsolR3FdJLJqEuldDUNSCgcvzfzofXbKojJ1dax1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mT76ghi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mT76ghi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DF9C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769342033;
	bh=AbORlYrXZ+IkerqaIPsOiNhg7xwmR0htxNrXkTXdg1M=;
	h=To:Subject:From:Date:From;
	b=mT76ghi/hACRhU8d6dRI2lSPJaKnDt7vPSr8RKBQzlnxdfCFZDzDD26gtUiXAU1n8
	 vCRTXjcIqZCyLWKcGOdvZsL5skcoPA2kxMRX5zlbSbFR0YXV5YJ7L+VPlIwsBFYAas
	 Y52vju67pkyb1kgFNPvoJaZ4xxC5BIFfeoxUIwpTXFBH7d5WaXKrCPhVXztQmd2J8a
	 2EQsXpzmLBbg/B88J7H0cGEhGlicRFLKQUmSf9iSfmrCgmaj2/gPRg3GWtNA3idnyJ
	 eA1PfNFSLEr5jG9vDnaDw7xvMuxQLxtbuasVNZkmiHf/sb6i8aCHGmclhRr0oyghvH
	 VvopAhq9o+j1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F1CE63CA2
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934203357.6888.3645993571229054511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 757fd896601954637bc38885704557d18e2b44b91b6ba9b03e968ec178b3c169
Date: Sun, 25 Jan 2026 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769342033
