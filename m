Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2992134D3B7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762658394; cv=none; b=ThF5dG09dzuv/d57/xQZekYmeHKEN5bDV5Jd94J51m6Q+D03W7/uCRGlPJ1Ki8vCllt2V0ypD3+6Hyc4xN3YDiGL/Oq7M1y6dvRf0x66RfMaitOwTxXQSoVaD4bmvm+wwTD1gZVanh4YwHOBL/abRWEAZAcZuYXTp5Kqo3uO+Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762658394; c=relaxed/simple;
	bh=BX2bzp9uxaNrcp5bBzMQ0hJCnIQ2IpgHl3M/jjzFRRc=;
	h=To:Subject:From:Message-Id:Date; b=jEVHGBiKKzcwbP2fwe0C5qi5kA2yFSvstVXoHhzX+4GvtSkM3OekDTX3MH9nAtRpfmInX9HGm6CV3qRrH/MmY6CheTnRnUK/+vSLgdsrkgNelVBtm8jtI3XqdE0v+IEdnrM5FVXtGOCrOjHev2rGti8j2HRtfS7zwqO8Toai5q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Izd1eqv3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Izd1eqv3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1BF5C19422
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762658393;
	bh=BX2bzp9uxaNrcp5bBzMQ0hJCnIQ2IpgHl3M/jjzFRRc=;
	h=To:Subject:From:Date:From;
	b=Izd1eqv3f2V2yBziMrYAoVD1m4YOhxrcvyjVZKUEHNXIEpXdpGjBwk6QnyCzEVcEd
	 lwalF4MGUsOGJ0X7gp7S/tRk6dqr3ixWWNVKdP6E+VfgqUA2/thZ61TWJZnhGQDseX
	 Z45iRaFrJUbuGzfm0vyR30iTY7qu7ZaS/JLxBRKQ/74gx2raXT86A51Nx3e2/czTN6
	 paIJGG+KTaipB7vjw+gtjFr7sBjXeg16aJleMsULb/qKB38U+LVM/W9xt8xfpOWzap
	 tmc49ntCuwTDuGxoW20H47jLr2HZ/jTnubD1JExwX7RZeHETGfL18RysPJfo/dCFII
	 hol15UCkQ12lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921B2CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176265839358.5423.13618214046003760236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dae7aefb526756a8c52b43be6637fe2bb0c56665aa88f36dbeed52332a6f5e1
Date: Sun, 09 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762658393
