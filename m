Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0265484D02
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758568195; cv=none; b=K2YdQT6xvVn23TB0SVy3Ijk5NQorHvIamqn9jnQkcXEQLNFrmI75o1J3RHv9QH4QgNSlmdTyASI8WJY1RICqZPWCByQe4sm8i9LRuUUfiq63t5OFjYHHFyc8IpOOgwuNqL4Z8IkhXlHwYOLfV89/Pn2459FAUScOB9Kq8BMFEfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758568195; c=relaxed/simple;
	bh=djicRG1hZm9gsGMTuPISM/TeHkQ6sNspRHQg/nD7N+I=;
	h=To:Subject:From:Message-Id:Date; b=CRDD/N3pPhcep9vAAx18iQO83W8RAWlOGUCy55ngI/NYELwYY42zAah4Xil7zgn5jkIMIy4ICjVeOdMfF243EQLyXF+YXdH1gRh+SrzRg3XfKIAW2rTJFqyKR2u//r5P/IQGucm3ZYLQa3L1c+ydag188RYbeKeAjig8OL1umnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D3EarMIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D3EarMIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0796C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758568193;
	bh=djicRG1hZm9gsGMTuPISM/TeHkQ6sNspRHQg/nD7N+I=;
	h=To:Subject:From:Date:From;
	b=D3EarMIXRBott0MFPfKetLLTRhLZaUG7ac6jYbsI4pJBNIF7BBiDGwiJPQxDmji9U
	 tU9+IB47FJDaxOBu/uEJVehOGub125NdvYEe34BU12B5atNrYf4bnXVYLDggj7oWlF
	 Bmayj8vA00BsTiU+3hVocAuHtukxlKReccWMu/WZjYNDf/x6lNg6rdV8+H9HALDedB
	 68HhxCitp22oQ2NHSKloszeWcrvbrm4gp9ZLuApB+vaAlMNd1BL9dN3TGJUtKda1b0
	 9BW7Kl3oGnvfY2vjpguLtcyuJm2XBXO9q519kPnAXYgBWKfBuls0RcL7C0hSWkXDva
	 iCBOUINVyy57A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D4FCAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175856819358.4852.7962313311546772487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac78f397ff2e089da68899b1631789f13f12c7fcbdf978aa112e59891f1ba88
Date: Mon, 22 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758568193
