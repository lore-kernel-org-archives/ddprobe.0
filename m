Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B2DA55
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762702794; cv=none; b=tyniD9SykZBlR9B6U/XUVsy6OjENmTLBSru6zEzNVDVWh2BFp24Sj+/NrJziL3c1FmxOF83FTCr5WHeqXDukrJJHuO/BatTD8pVS51iwerSfagtREWsRQ9kR/0ayk6Zpms1ZUAm3I9QBvJLtB2koCKxgsyfTRq0bjkwm4a3906g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762702794; c=relaxed/simple;
	bh=y6LCZoUh/FKRUGQ52Upycfyfl+mupRNZO+hIKS7DEZM=;
	h=To:Subject:From:Message-Id:Date; b=IdsCupzcAeyi3lxNkprOng9tKcYpQ5jkepwiLV0Qxx9UWIoQh0Fdjp28zckl0HsSGWpTyB3fTpCx8ZXUvFIuj1H1Ml3brVoHl93nOGnHJR9zQFUKPOgsckzJIIsEsX+QQKX+dtJxnOOOEqkrl9CX0eNZt9Si5XPu+uaoi2rdgAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aw7imsPj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aw7imsPj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F1FC4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762702793;
	bh=y6LCZoUh/FKRUGQ52Upycfyfl+mupRNZO+hIKS7DEZM=;
	h=To:Subject:From:Date:From;
	b=aw7imsPjZtJima/vzeGk5mJvhOAZIOsDtBX8atDoRUyBBKweEXIKzj9ylWukyujTN
	 aGHN9uQ+6D5aPeWoTCswVWOxSXTgi6nftgi7bPwtsovUn2UWenhfBwk+75Bq9w5+zX
	 3nYikL1SUrGg03ji2kUwMTzDvY/9JzW5X+1Rse/xPW8Qo0pv4UzRdwxshB3GOQXsra
	 GIaJOTodjW5p+Y5DWnoMRn8GfkzYyB6b4vDs0+F8aPJrcul4cBBLJh8GXt5tho4r7V
	 f42LdCAxFvvJTnh1O7cHEl6NSCnzZEpo7rFXB8CPJLreb/yUytOzoOWIsFe5+MX/cw
	 0SeGSIW8OCDgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F47CCFA1A
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270279357.26358.8154865424662011157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5266fdaa7682a78f2140bb5e85ff33a0eeb32de19ed10ec6dc38fe2252bb8b84
Date: Sun, 09 Nov 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762702793
