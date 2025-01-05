Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D5A184F
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736075154; cv=none; b=GyFXCzxyxzkrnmyrXl7wlbOk0V938SNffmkoDOv/wScEORxt4i7aoBXdBELvkpZzRMSkXlCmw/AbOu0pDQ102oGU4tyySblxwDktK0y2B9n6muR0TBCDFHlfX6L50Si9m1Eg/KfDYn68KYQEc3VCodgegayUO+ZKc/fEuwqQ4Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736075154; c=relaxed/simple;
	bh=kIZmvfRi18EDLQM0POiyGXxZEAS6DfwSvtGiJIwL5Ls=;
	h=To:Subject:From:Message-Id:Date; b=aYAQsBx/zSYFEwZgXLhcw4F7dwXqoVDQIIIL4lNWz6cwN3ZCMjH5u3HsHr4LAHm2MV9cOqjbzQrOTX06/8fFqZBa2RkteuyEAG8dEgIXCakLj8zxw90Cz0FeLhJnMv023Ew/LUZcAkIwuzwjmz//t//4QMG4HYEoaOJvhh1FMk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AMoAgPyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AMoAgPyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CF7C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736075153;
	bh=kIZmvfRi18EDLQM0POiyGXxZEAS6DfwSvtGiJIwL5Ls=;
	h=To:Subject:From:Date:From;
	b=AMoAgPyLtGbi1sediS4BTdXqczcEiKcJbXpZQM3hUDdrslVoUiPCDSs61sSh+mz1f
	 /g3Fsk/aUs7VoAah2rgY8yGnHPdbqEHvjFggLnfQVriD3tQNB/dvMsBoVQiMeK9R29
	 UvuF+VYyacA59ggCog+SreUoWGbiBTjTSwqw8uv4Ro/93VKQpJn9NWaZNpDbwAvvo+
	 g7pDZGYz/OEgjYwjLpGIrLNMK2Gh2n+mwyAb01bUdS4ItYPeua/TC48c02pinLTiC0
	 PjzJQ+4FDrcMDOb58D6+vPZby4yFZ1sTwLXbQn9uVT+ndYlriGHJAYctBYEEi+IXQZ
	 7GAxXlu2lxuzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96149E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173607515360.21880.12394675486681834914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0e19541a2d8a04170c90074ba4e76f3e4c8cdb233426849471e977df31c5f6
Date: Sun, 05 Jan 2025 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736075153
