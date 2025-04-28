Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C77786323
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745846395; cv=none; b=kAF7z05JlliK71kAp7ZiSu2jSunFTkUXqj152gnpLoMB99rqTD4hl9FFjRLI43mcyVZfGsp1Ol4f1aF8gM6Arub66KYP5eRZ8DWZnVggLyiz9imkKjirW236/FHt5hKCfgOJsNTXRKdVC7Z82rEZ6uIPyi3o9Fs8Q5DTF2TGfhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745846395; c=relaxed/simple;
	bh=7/YJVpj8AKhek1KL6Mgy6Tc8a06WlwLnVaZOo/MJsik=;
	h=To:Subject:From:Message-Id:Date; b=a7pgSKHZ1gqOUPZH709Few9ukZ15rlIAZzrBYwcrfQ2t49s6evCKq9mlV3NaSdbOM4vGN2Lo83RVNhM/8IZpgJgcs59K1ZUtYcPihPix/AuOol2LBXA5jMO3Dp8oQbqgFAo14GunlczQuscbyojAAjjNpuZvJymdi+cahm3WhGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tEDsUHpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tEDsUHpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BFAC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745846393;
	bh=7/YJVpj8AKhek1KL6Mgy6Tc8a06WlwLnVaZOo/MJsik=;
	h=To:Subject:From:Date:From;
	b=tEDsUHpV2Iihi1RlYsaIXhMY/yA6kj5od3GT2JvIFvzQROYYPyFRlwP28TAgQo8Zf
	 fKt1Q+yLTyW8nqwSrv5hvSLuC5uZdDLePJs2+1EaLfVn4uZ9b2df3Zn7moD7ZNPdTn
	 AT8HPH9ksZkywMG+MHAI1ilu8N8koi3VAtW/mvlo3fZEx14DXW1tSDVSCy7/GQkUpp
	 TC0mzntiflWs6s319VNwEHPZPu4Zo4cRdq49LAqEBoBSYopYQKNsyYDjYdt6QMGc0u
	 x4RlEaCsyWxst6KWMSF8kalSq9/LMab7tjrf5FU++QGFp0+FnoO795ACe+YkzJhlLh
	 kbpsgoBNCx5/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C8C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174584639357.32743.833425973303252851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a824e42f8e0035f1562692fb5caaac16c4eb7e0cd834b8823c53b21e23ddac8d
Date: Mon, 28 Apr 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745846393
