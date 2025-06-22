Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D5F1632DF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750615194; cv=none; b=QvyeIAEAZ27KSjcL5Dml+B2Ig8zG65EeILGNOQ7Gx3HVLrd3AVq+4yK10GXSKNVKEHUldKNvnn9yRuqJ4UHNe/VKN5OvbVltSBovvfn/aJGn7KkN1VNETE0vN4L6xGYwOEZ5Ygjo7UIM19oAi8j55K6pzn913VLimx3MKQTDEKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750615194; c=relaxed/simple;
	bh=RaqVcOtiUWf14DJA09jiZeM8V64QLEUjJd29mj3obn4=;
	h=To:Subject:From:Message-Id:Date; b=sHfh8rGeU6vxTmHkBeR3rMLX9ar40oY+QsKi6Ec+j3CDaxA/toJmQOBIA3OKlTtaXBgDrFZbye0Ka4fncgCc65Z7O0NHr5a5yqgDN/3l1ep1kmcYAER0LNekhyflZH5RAl7WoHsmeVuQVqJVAHG7enpdt4iN/hKOYgmcQWs5PII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HXb0MhhW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HXb0MhhW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4684C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750615193;
	bh=RaqVcOtiUWf14DJA09jiZeM8V64QLEUjJd29mj3obn4=;
	h=To:Subject:From:Date:From;
	b=HXb0MhhWZKbrEpDgg+yU3telFEmczkdyE69vZnspCVehzwnomZpVKRUI7Tsm8GkDJ
	 tpwG0Fo3pvK0L4lyTafa1hqK+RyJEQQOjUnWc2nrrgDDbgUac3pLfC7lum5t79Asfg
	 X45Ew+U4qDsUnam6EzyS5Ez/5E+GKP0+sTV2zgc/CZ90ioeNw0Sx+NDtfJfFyCkDr1
	 gnNr01xaQ/Pc81qGzYu8jDuEopJikTxoG0Dgrepvi2Kud6mwJRdjOLrPhkWXspBK2c
	 fz610p8nxaVrCk/2tG0DoAkTXlbT7Ff2ICPM3ZIL4yK/Tn1+4khMrGrjx5TlllnSdu
	 Zv5IO6957HiUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93301C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061519358.21166.16354365575860692344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a725204a2827893aa411a715c323a9d3245acabb5ca170703e67c18dc1d3a1f5
Date: Sun, 22 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750615193
