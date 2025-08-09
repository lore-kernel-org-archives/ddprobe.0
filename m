Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28398125D6
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754777994; cv=none; b=UhAretIUv4ZJ0nJ7/YVzwnqBBkWDOXKE8z6V2IP1mVmqaUkaxxS4G/7HV4S6kq8ne6VPBpKtfmRuUsoOnDV1b8PaPdUoYcUipNsCvAjUkpHI3M+Rvos3Ks9O3ebGF9M5maOE4OGlFK7pg2ELhaJA28Q5WVz8cGi0j/HaDbmNyVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754777994; c=relaxed/simple;
	bh=ua5BEXj0ZJowKMC0gmit6a3AMRjIwy0YnOC8/AktMGE=;
	h=To:Subject:From:Message-Id:Date; b=TkBAvk1Vbo3OeWA7NjCM0D3DJEMKmaVqbxLNhvi7oq89Zd3J1Q1sK9Vrknibt4KWCZJnWbe9wrWu6/eioRozxKSaClecf5dcpvSsQbRI3Oap+eVLGExIaBtPhcOiuqwKgyLNh/SyM+o0EZ1y+hsxecv22x/j8hl3YARQgTGewMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsnYjnay; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsnYjnay"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18C3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754777993;
	bh=ua5BEXj0ZJowKMC0gmit6a3AMRjIwy0YnOC8/AktMGE=;
	h=To:Subject:From:Date:From;
	b=HsnYjnayURSWeYXNtp+BWCrHSuuJuXogIkKpy86W92Ca74+Tqx/8EiriSTbhBGvg4
	 QnakOasTzhL+EfQVylvfecByTtCuHoNBnFr69qNS/TNaWi2dE51YSlIjPRoQcNKv+p
	 tUf338iS/0rxVoY/E0FHEkrKT/iquRMpU8uQYJqzSmXsSnSrf4vMQ3vF8gdz7kQjBH
	 jv8L82JoSPSx2Ikw1gSYTIBz0txauMhblz5GAhk7fKP4Ylaz/dOgIqzwYW5pJpnlUB
	 tn0EM5tm608++MNg3vzF96tB+lqdoMJ4qikKEetT5GRQoUsM0u1Ve2MYGIdGSnMpfT
	 Sa+AqQ3czViaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91626C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175477799357.6374.14885514071236180127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a27705493c6651d8a5ddbfbed183a53686ac307c47860afbe7e5ae39926add76
Date: Sat, 09 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754777993
