Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E33032C1A6
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 04:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709873297; cv=none; b=N3ZRzU1rfxmX9wvMPZzO4Pm0sXHTsl0iVVEQEKLLzdik5pFN44FLcgIH2XUgvYDZYIx4usAaICBCg2N9gqvwFBbbbFMC0e8ZozdPsIEIq86eLkIqcp1TL3xYa9iVyECBKsQ2NM7534+8qDQQ2msNoPM66Sh61CFV3qs8A9KGl7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709873297; c=relaxed/simple;
	bh=Bn8ovZ9HsoGdVv0IsWcupNd17lPYu3ZaCpdCQtZZ5Ko=;
	h=To:Subject:From:Message-Id:Date; b=MnmfUpjxd+EnIiJUaUrUkdgzB+krbZD49IUWh9oon2pMGWBPDEdBLrvrQ6JxUZDgie9dVSja8RbQbi1jFK4uZPChMVglqAffzYNOzU6RtC7etVFKJ+/KqaVpPFkpx66iSHMg1Z6g7HBnKdcXlkkmNmKG5AKH25DgWz7h518Ijzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jqd137ZG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jqd137ZG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AABEC433F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 04:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709873296;
	bh=Bn8ovZ9HsoGdVv0IsWcupNd17lPYu3ZaCpdCQtZZ5Ko=;
	h=To:Subject:From:Date:From;
	b=Jqd137ZGvIHnYwzXF6nBwG6yelLkwievkkPdf1LhKopEpMg2jJx/yyg55DlZ60m5E
	 6Om6dwZTvSlFs+2iDbNndR4XcI03HYbJtGCmBH2HarillCoXJVr1CB8hoQ+PlwmxR4
	 opz0DVZuzilHkODgBl7IxU7IyKdqCatoqZj/azWxkyR8+dv0AijHwZBkJ8ruGD3eC9
	 MMevJnt+3NED0gguY9V2EuBKhp/AbXytnZgNbaL7iHvL474VKjSDphNOqrZblh04SB
	 A5Dk0ZigR95rhX9WhEvTI8lNCsiXbotiFcBW4eU/UWRTY+gxEhJKFl2mkuyvaOeRxL
	 9FXBS9QnKdBYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6072EC54E41
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 04:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170987329638.4806.13094294540140749860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77ec40f6d6b0f44e9debba9f4cb5a8ed2cbb0aced6d48a0e8376d173afcd8787
Date: Fri, 08 Mar 2024 04:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709873296
