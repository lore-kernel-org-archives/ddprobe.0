Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E68F13A27E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718402303; cv=none; b=egupNYhW0Zw9Z2guAohgvBT/82wmeaeAozoY65dwUP5oP6I2jIsBNKKoW8JjwM7qYKz8NibLm5Db8f7R7yWteluWDXwE7inFE2mgqImSsttOeil0yB7rHObFnA12/NbBj2UbOxMzWffG4EY/5Oq+yDP5pDpGqPrLrf69IGTzZp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718402303; c=relaxed/simple;
	bh=CmRzWmHFxXP+UB2Hp/DZzfQqaR2aKz6PcRGQKTlGg5I=;
	h=To:Subject:From:Message-Id:Date; b=g6sxfDrU4goSSAs2LD2Ow4nfLOZthL5tecskP2uWMJo8WqWSllkuvYra8rp5cOjXvgCu9DVktSxoK+KLD+302xma5jLsf51TLavXoL3NJwulp+RRs0umuC82icFBJvYWkizJf4u5JPkLzc0N4wSLhFfxB9fhqTqu1cLYHn9drc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agdPH/TZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agdPH/TZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1692C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718402302;
	bh=CmRzWmHFxXP+UB2Hp/DZzfQqaR2aKz6PcRGQKTlGg5I=;
	h=To:Subject:From:Date:From;
	b=agdPH/TZHfSf/0AkgAOSWuwpcH5q4AN1bA24t9LhuwWPZLAGlOIrgaImWjvUtlYJK
	 bb9762mgu6E7scYaWhsznAsYjayhThX5LZHl0Mydo0HxRyYD1Lis+yrhx8/+dekMaF
	 O9PTA4lyvwxtw+ZyD1LDMrJvOIBRTCsexVf2HCVAhtebjZIyu00nSk+tbvOCxUXgNw
	 x9ZzRUjLTVD2pWoFQlLRJCmUASaIw/U+oESMVKyPk4uW7MbaecnzXnEB7qU+SltLoo
	 K6IITEdGC33IINBanTPALUIGqcqn0EbUINmpZWD7od8u0E/DI7aCyVIQA6kTCiJh++
	 wERzQPQa6sIiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4832C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 21:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171840230279.886.16529433635385015316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f09dcaeef85e83ceab490c74d7a0e4940446e9ec73eb24426d4f7367829c359
Date: Fri, 14 Jun 2024 21:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718402302
