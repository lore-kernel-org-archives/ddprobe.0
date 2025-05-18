Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ABA438FB0
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747539594; cv=none; b=I0MryPAzch1Pp3URArByORfwqA7NMpixR3Swr47R3Wxy+YjuZIJW/JdHMdto19qcBZlcMOql/GzQRZX7/jAf1QZT36nM5en0DBco3LI2ieMEh5TFP3TWJzSB17N6yu3hC1q102RhaLrnyHe63gkpNVJ9gG5fPbn9H6fgbkf8m2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747539594; c=relaxed/simple;
	bh=18MI51QRghnamAEkzgcOkU0oWaKq60usBAIEM1lZNGY=;
	h=To:Subject:From:Message-Id:Date; b=piz4dKFuE+dDe7QCo3iM1aEdd74Ow32Z7ieXNjhIvb09Hkmn+ETpgxH3t78nNKFTPFNk5+uXbC/Poh+ET0q2D4mwAm+fcDNoiRXb2Z8PJZbGZQwQulB7SOPDCoGPB2k4d1yEpvq/YJZiF6kYFp55BaJmcx8ENo8H5+fK+8B3TWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tk20UqfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tk20UqfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AEDC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747539593;
	bh=18MI51QRghnamAEkzgcOkU0oWaKq60usBAIEM1lZNGY=;
	h=To:Subject:From:Date:From;
	b=tk20UqfDnJ1CL7hD3yCtmETpi21JhvixqdEmDLWFPpV6zbIktcN90OgojRQkBX5Ki
	 CbG0XhEZyH1jFRXW4fWZgf6QiODJVG2g4pSFAfB/Y0RMhCX13cUv/7yxEkqdVzKzVA
	 TN15KkovKbowP96ILtOTur9tUte7YAjvRwaPBnl7IlIJebAj/DG/kzDlQUejli8Tpd
	 +wnZe130Rf3q9F3wN6odPkBQ6jgLGMmcXO9Y4vTOegMN9Oqk7f6wmDT/do5NpdRPhB
	 O4XNiNAsP6McojxbZ8l8dMn3cxZ/KsV2LTUyqsueR8wKIJcU+Vy+jt48pHzXRCw8iP
	 JUqys7IPwpuKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E647C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174753959357.24148.15614595391969841128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c46a102b7753ff9b1bc220b1763bf22de81cc75f8508582c97fbe78ecde4343d
Date: Sun, 18 May 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747539593
