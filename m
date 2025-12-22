Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345D229A2
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766445834; cv=none; b=p4W2aIIToPdUdhD3sfMouuCA4/ELQ083SDowoS/1eCHZ+X3BXZJoC8wRoYm9AbCO9tMW/rPgCZ2np59m77XFDPv9vRUqs+jAG4Ye3PRj4YsgcbypQdAlV5SDZ/MKf46g/y/HDbHNWSSzhv4ot9ENEVWRaq+Wud35m8XWbC5NI58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766445834; c=relaxed/simple;
	bh=yZ64lWLcFyN2ujGPSKeinZ+Ervtj7ourfuM7uYfR41c=;
	h=To:Subject:From:Message-Id:Date; b=tp81G7UknJzSPRKF6D4J4fLFvXHY/WTO5eFptZWMYPyPRiLAETntXN6GvkCZWZSI+x0jUZXzZYPINwlnXc2aaHcL9nZ6Eu2Wy7OwFxfN4WYEr9dErJIvIz4aIUt4hroayRJ6E35fxR4xHj3OOqtFTW+mmkq53bXjc+3cww3rk3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1Y816lT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1Y816lT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3415C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766445833;
	bh=yZ64lWLcFyN2ujGPSKeinZ+Ervtj7ourfuM7uYfR41c=;
	h=To:Subject:From:Date:From;
	b=I1Y816lTU89dmFwdTel1K2OybW5AidTGkNwZ7GFXe6xqvo8wqLzCdng1h7bv6tb1F
	 yTs9xNSCt+xQErBdAwd6myqRBr4YlAGDWMpm5+xbA3MyuHoHk/cu9HYwktk5BmJ1fs
	 LsWEFO0LWLsGmLZc44MB13smQvpRs2qrVcVd0nM2JylD9OgYfagk5xnvi3C3Vwc233
	 d+1A7LCbunwG/AfuXPhSqBF3hz1t1U48KeH21ZlFpoLqahhzd8peNqtdhZqpRNDsX+
	 3Rm2bhENbGHj3ioUnpxRH+ifyZGSJOoo2F/kY9sPtuERDh/t+Dvyn94xd23fPY6dxl
	 vZgUfyWiQrakQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92459E6781B
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644583357.13160.17614057806898347305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33dd973cfc8b55ac36027a4b7903b0b8ddbeb1d49f92e80b29ff61334ac0984
Date: Mon, 22 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766445833
