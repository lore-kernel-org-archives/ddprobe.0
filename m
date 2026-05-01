Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E298A38F93B
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777632454; cv=none; b=gfnW5r0nkZ+AyDmFBwcafs7PNIHkpyfS8iPfm4UbIrwceBxLcytMIL3VsfJ9EZ8rRNcwJp2hWrbqXY0WFhUmivsubpf2yu0Y+QorITEbCQ2kOHRYDs/K3qhD+e7+LVAPcT3TcTHQc+q2JDcblgucY3zvhtzQAl0l6vUigTaWO5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777632454; c=relaxed/simple;
	bh=K5sgW8L2h9YonZynBOE4LDdjIbZrkW/alBqVlsGHQwE=;
	h=To:Subject:From:Message-Id:Date; b=OEhSPVDXGYV0216DQQHMw7Xqcvjm7MLVK/8Bfgmy3JKX1eynI7VkuXTfVAyss7UQFROfkZMzdcMflKckhLlOYmwJBsVIX71We+7Inxrs9nILzgfvHRfVGIuwGOcedkPIgLq8keJIXsgIvaeHMqBnjR3FTA0ySOwOUPh7kFHXplY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPN0UTGb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPN0UTGb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE402C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777632453;
	bh=K5sgW8L2h9YonZynBOE4LDdjIbZrkW/alBqVlsGHQwE=;
	h=To:Subject:From:Date:From;
	b=LPN0UTGbTPhWIkTT8EcFDmwYOpW+5O3vjWjDfmLO3UoG0TDVVlC0D/He4nz3XJpTR
	 PoPp6+1kgoy8jQIlGEKO+SMUpipw+HAeEVIg/q/HDnlfpxOURVyo/km65S18NlfU0E
	 wVPxNOyI9+Ao+MqplYioeT5iyv8nmgwrElwrjQwH2U4TdGA0JUj+ZgSQcaiZTjmV78
	 8m+XyiRYQopB8Y7np4PEVJEC+AlwGe7gBfczDWv2WpZaX6IbbqD/FxWBLMoT21phCJ
	 0yCmtcoIDMGinp60bHFqeVMPwY+D5tnW5zI1UFXhxXubEjFwpE2pqo1GhrACblpXwa
	 KhpWY5QeOZItQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC654CD3424
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763245368.5039.9437147205150264103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd534c8d9139645bc70b5d5882272f0be74ce9f975d53c62913b5d19f68c6eb9
Date: Fri, 01 May 2026 10:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777632453
