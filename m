Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFA22DAFAC
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768679034; cv=none; b=FJ7vlSB6gtxB0CksVALC1QjzLNgSnO08cVuYXumiiJmmNxtc5YQDcQ2gIe5gKubBwCTqhFYeHOqyfJqEz2pjMjwz2fs/bc3eUEMufAhBbWvvrCheqJcQ/sLtRtzXm622BeFyNusJBGB71lBdb8mtSv3IwoldSf/NhqwTm9JxK04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768679034; c=relaxed/simple;
	bh=OYPcnrQj1R/xTtTXHfh6TxUKVvk1zMQMhrI86Qen1j0=;
	h=To:Subject:From:Message-Id:Date; b=kyY/7Ab/Eh4Rf1lrMym2ZvjUL0LfjjQH0TzqDTNzO3M6nMByybHKuG6xt1faBRhwY6xChQT5Y6EhjKGObiXEqbU7V4H6ipEMwNYCpPTbi1ZJy/IuICFFLtMuZjVv/Ysuse61p3YrHxwcG7SBPlgFsZPZeHqoTUy0MFXRF2Jzsyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QM1aziTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QM1aziTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A533CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768679033;
	bh=OYPcnrQj1R/xTtTXHfh6TxUKVvk1zMQMhrI86Qen1j0=;
	h=To:Subject:From:Date:From;
	b=QM1aziTyT/O8wEVYcFe1GIuuog+YtayOL8a3JBY1rdkRgHDuLE+gYe2KY9Viv6LUY
	 nXaWVL9ZXU9E++Tti2nrF4IVO/wRDIq2PnXC4sFvdunvzouRXnTGhoj0Dlwps8QEmY
	 OCBeGrBS7xKLqZyDRHy1jN4pKwdK8pEUQrovu73C0DxqRmDSHYdmgQzjaJEHHwlhjq
	 3w+RwlmCqAnPqkliBmlH4zqr4VXyBD0/IphsfESOqT+gffDXZCwB1oJb+49dqS7FjG
	 i8i0FcsPQ2OEKNqTQu0wxXeTtmXZX8LH+3mn2eNurf0skr1hv7UVD13QBxwyG4Le1C
	 6/3uEyns2obeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9269BC98330
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176867903357.800.181370599225333789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fce45995c7b462661aff52e8b8b8fda241dc8ef8ef1bcb22fbf4269f711a962
Date: Sat, 17 Jan 2026 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768679033
