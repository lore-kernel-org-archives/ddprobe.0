Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A6E72621
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788841834; cv=none; b=XeqlRc5IpuBZ1f/7DheVN9dA/X1GMqOtVcyKN1jptkgnWt72hMYnF6AgUEfQR/PYCi5QFplKJ6a8nXHUbcM6n4y51JaiOve7mOQ/GCVITM5Bdh9eEPaAk4grTF9mn6N2JSsPObTzBXUtqpCIBN87a3FXmQdyjwGFnV9FjQiB1hI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788841834; c=relaxed/simple;
	bh=x1PycjF/k6HBVaApaaiklWfvZmDkph3Qh7YZFCSdO1Q=;
	h=To:Subject:From:Message-Id:Date; b=RzgcXYM4POHcN3H4oyCCTBpqPEsbDFVnlA8ZYUSP1/vRItRu/lXnzcz6xEvy5vn4jMFS+Y4KgJm/FkgSDSCFs5WzR5fNNQZGpE0EQjrTnRbUjuiV3u9CqKeld6otcAMVguzGkCPu0DvaV//kxzTOqzZwi99m6C6zX8F+tc0l7Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpLCu7lG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpLCu7lG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F66C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788841833;
	bh=x1PycjF/k6HBVaApaaiklWfvZmDkph3Qh7YZFCSdO1Q=;
	h=To:Subject:From:Date:From;
	b=tpLCu7lGDh62MrvjrALPwMCXUHwnEipuZ4N1SWz6epRnC/qF4aqHuMh3/zmVWccjO
	 ixcUdvuleJc+07It8Zcu6TzzLliUpiT7NMNGr+8i8IFMHXpaaYzIQ3IOY3G8BMnuau
	 iE95Ur+p8Zbzh+ywjgrByVLWe/Lmyd4zjf3yr9hNk3CJIBfeV6/daCmxDeSIt54yYO
	 liXQ2SaSc81XPYRBtSTUr21BP4JKg1V7r/vuNsiFMWQMM6bFD1+nxjit5Kds4gUdk2
	 Y2KDOQXqI74CO2luowubDw0bF9VGf1H91hDiaxZR8misreingZ1KkO4hIFtrqN2Yun
	 YwAOKC8OG2h6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0EAC79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178884183375.17784.3798519077424076939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27b9d8eb6b699c8b8deaeb07c148ff7295d89bd226acc5db2bb6990f226b4560
Date: Tue, 08 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788841833
