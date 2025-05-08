Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E067289367
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746731994; cv=none; b=PjUIQocl76eo6c9Rrv2JvmUGcHAEO6VKkGz6Uo8K6wQhrmjg57gdAPgXMtXRFf2TWXzKYp6tK01/HyMEQYB6pqBRN4hye5q9vtzLOBBohuYm8fwZPHF11yjjdNcRhWrSoxV+OTGkbvp/PobJlq4mUogSIUSLTbuk8qWfah+0oGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746731994; c=relaxed/simple;
	bh=NTRTHK2XbeLW1Y6qeDUTbLOkr8x+znW/Dm3vreL8NBg=;
	h=To:Subject:From:Message-Id:Date; b=Urudpi83nyq4fW4RNfrEsy/l3ca1W7ekEZKGBlHRDNH+lMq2e27vh6irTuEShc8m5FIQ5GMXxaVK+TCtk8JiFHwHqhXxS+6oyL28uYQnfRBTDV+raxhXhLA8pYMpYKUUO3pDwHSMU1hsbWjmEMabGGGp7JlRbd3CLhdv6XFLK6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OuQIsxRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OuQIsxRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04C1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746731993;
	bh=NTRTHK2XbeLW1Y6qeDUTbLOkr8x+znW/Dm3vreL8NBg=;
	h=To:Subject:From:Date:From;
	b=OuQIsxROzVPyN38Qp6vm9o4kpQXTUrRoAG1CSTl2of78Kyz0YMvRPUhVWgCSGm1me
	 dfvDJmcK4pWvC9y/z1mLE9WaAr/X48M4hfcpW1czXfoMmDaFGzAdoyU+QjtkVeEw0o
	 Tt8rtadN+W0ZxQrHAXbaijQcMd6waKVo9k10TFLVzkmtGTw8Gny+awv8cfkjNSAB9H
	 DbPnhpGzG7A48yR8ld+iCfGlD1Ll/HIOFR5gzKJjeeqkoAzwuuB3FibTmOC1xUI8qU
	 32HFZdO8IPlXL/MTcn4Rivrdkber6oWCU2JgOsxREi4YsqDEta4YaSlc/EZX5kjBX7
	 UQ+hc8Z+qfp8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA5BC3ABC6
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174673199357.4911.3805047335252008563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8a0bab87142b62205d28d81dba7e841c52a4b84ec4f2e1912e06abdbe161242
Date: Thu, 08 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746731993
