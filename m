Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9A3433B1
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751588394; cv=none; b=Qnw3owY6Rt2eYz/PbgiE8/vIPcxoGtHl2ZnReewjYrGcBoFugz1UgyEkN6AZSLtffdhWZK3NEax3msnCO9uDt5FwCvubjvMDiv4VeIfSEZOq4NmH76US8TYemG+5vMtMisnnXhVX0T2jHXHDn02XZZRDxQaEKRaL9Vclyo8jHj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751588394; c=relaxed/simple;
	bh=dPM0lNfn499Ru2/hRBJBK7gzX31GiJ13tdGM0bjqKUY=;
	h=To:Subject:From:Message-Id:Date; b=uCMnh3/R/kGvVPGWGzLFQBh4YSlhr70nUfcKTrXyKY67KQSAPTBSgJd8HAZ5Tvtr/Zp4nUdkLNZuzgwI9GdkMd+ZpuCx07R9d8dDKpJYpk+g2TmLpTrBZgoPqsOcKzYOO5Dir/0oASEldSaGU2dY8P2ZG7dmSrET3z+bqSlcZ4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G2tJaziT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G2tJaziT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A0FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751588393;
	bh=dPM0lNfn499Ru2/hRBJBK7gzX31GiJ13tdGM0bjqKUY=;
	h=To:Subject:From:Date:From;
	b=G2tJaziTIPVP6kk9r0Ft5p4ahDtRCI5/KVuFrGuV0EkTVnnEtrr2jKUjWgzaUG6F1
	 MkrXX+XcO9sRPM5sI17izOIzjhIO6b0shM/8HVycyRhd8MNdbKv0+KiadTFHGpAG/Y
	 Ixvk6QqRnafS5m1CP/btlOgedtwatVYWlPOGubJKHZhe3I5+MslSsZzqrYRxh2oRVo
	 uKgGnwG2cgwTGFa//w6rdz5kdLV2t9rZ+E8wWVtqb7CVB6txoDnsTkZ4Q14iZsn4iN
	 qS63mq0Dmf02mytdajBjCXg5O31yuVU1v0KzUBdIYBRj4c8r4LhGD1z8nW0K//ebwy
	 Df9E8DxHe0DKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937F3C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158839357.25550.1921115091581301784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 140d4687dc2f715fb11ba55da864e61124be9cae233a4624912b9c82d18bd601
Date: Fri, 04 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751588393
