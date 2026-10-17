Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C8A2C11EE
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792227634; cv=none; b=PQYm+hVte1A7+d/DdCVlpxYU/2Y0ubKP+IQgQX1l61UxLI7QfkQ7OLlaPjD0RQpOOLy2p7Z6yhUE7UVdSCGNZ7TQgxi1len3wObQnF/nl+ubiK1oKd1BTWGMpNwLTE6Vv14m41AFWqUb99530xu215p8+JPu/6SItHdLGzPseHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792227634; c=relaxed/simple;
	bh=AZXLMRzc5Do1jMpZTP879avt8nrGPgYl1KPV9hDmFVk=;
	h=To:Subject:From:Message-Id:Date; b=oA5GHn4bhzu8Y/OySsI9F79i644oQn5AGJ9Oh+03idUl1wWEQzWpCqI22VAv64i29BnoQJvPRy3moYPEXVKGtz/Uq0X67jgm77G1SVCczYg6af8xy1CyzsxuYGGBzQMCots5tk9xOLxzopQyOldIRpN7ByDyUPPx67FOrp7VtDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cApZ+Ppx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cApZ+Ppx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BD5C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792227633;
	bh=AZXLMRzc5Do1jMpZTP879avt8nrGPgYl1KPV9hDmFVk=;
	h=To:Subject:From:Date:From;
	b=cApZ+PpxV2i6SmUmWPgwJr3mk4BBsyRPPbkiP/YxnxdaEXFPC/c3RYWNK4hIPxWPN
	 10WMMT+TKJ/VJFl+6FN2DDdnbEPjaz9SmFXWyHQYpzUXPpJmlQE4w3NlXSy303QKGl
	 n3Omarm27bx3LTJunnUMW7c0S//Tt1lWOxuqH0ZT6Jz12S3A3WOwowA2kLLA9DXKhJ
	 Fa74j6ry3S2HsMw44mSNFLvLS0cF6qobgVmIYkNQvpZ27JrpAX419JgBmFnHIFqVqM
	 CY7gclOZAfye+3i3sks/hbLHqvfvb6xc1BBCbom2qk/Nv+fCEICPtWLNchvATZBS2Z
	 lE1bdfz/U9dAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCBFCCF2C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179222763368.16593.2770207542852798369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 725cf7601d4f01b223dd937b4735c7ef19890cbaf47b2f5bc6b6e3f9773d4622
Date: Sat, 17 Oct 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792227633
