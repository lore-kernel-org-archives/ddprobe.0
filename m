Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00D8215E97
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772948094; cv=none; b=jb4f/84zMecxeow5BYtsE7z3uSOu4rkfflC325t/R6EGSzJAUr3l0mN9wrZOj09X45tiXy5tXdLCX2bxgE+v9vNBVk024UPctmREV5NGerWmTmc112J8BROfcSQrgednm+ntiB4vxJo3vLFDFtBJLpMmCD78RQY8O9Tz35uIaXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772948094; c=relaxed/simple;
	bh=0Oy3vABs/Pjj/Mnmq2YW21WiYTkwuBRbyOlumDzO3Dk=;
	h=To:Subject:From:Message-Id:Date; b=EaC1+0keFy+kleiXFDeJbeIjYMM1dHSEtKXLuK1SxkS01G2qSKcxPNuODU/Dg9S6XBcprd3JL1W6E18gvYaMkblYjcwi7ulX8bGfna8ygBR0Z+dtBXcEl0UjokfmH47GhSkq16uGJaZ+CTCqsYExYOQ8tS5RE+k7Ut0JjFoPlJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ScC89BIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ScC89BIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E3FC116C6
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772948093;
	bh=0Oy3vABs/Pjj/Mnmq2YW21WiYTkwuBRbyOlumDzO3Dk=;
	h=To:Subject:From:Date:From;
	b=ScC89BIoglZ3QKuGRqJ0VEURCq46mVPUrN0EdCu5scFD0bpgfM3EsMWnfyS2nGiJg
	 B9p8brI+Ev7MvWilLGVBMfKyHxcPyLz/Gbn0Affm/lF96grDADLR+Z7e8gaeQE9RXe
	 EJjb3xcY0J+JmKkNkdkgGfY4AjOB0zzSOHVWC3gA7p2osxm+ZKKjkOMD7rab7OjEsP
	 o5QfzMKt5qoE3b+CFak6AaBV+OpQmldn/mdwzb5Fjcm8fdegBrUhF0loYkqNYOEQDQ
	 jAoiK/eyKOh1zIKtUCTy7uoWugDAYlLzYDj9tFsFavYDbiXT3MLV7/RqzBEXKvcK3m
	 KMiY5t07/qGew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF8F5512F
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177294809357.3788.13513975838932847917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1279c16d68f41150d62f1ab5d8bcddf556e18070a748d9d095d04307ac34421a
Date: Sun, 08 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772948093
