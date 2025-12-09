Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074EA23F439
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765274574; cv=none; b=TsHWugW2vcxERgP2GpFPJcgAPCrAZjyOd+4SIQ+koHDBgift9FE6TRij2RFf31K4aLuXx8h8IMZbr0f2pcrH6GhpRmH3Ednu9lnSPPMc/TN8qIDr21qegymIetsQiEHRgOb9TFDOQh0a624fXlhaRnMyNZbX11OBH8OcY2h3X1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765274574; c=relaxed/simple;
	bh=JbAhaakNaCBU2DORh2bZj4wn1bojztk694JMgNMxe5A=;
	h=To:Subject:From:Message-Id:Date; b=sK/IqAwNIYZMnPzhmjAzc0xei1h7I5aTqp0FPLSaHgE0lYdwzsgcZDvnpSPz4L0Nlgy1R+ms9N0VY3QQoZnE/y5dmoZ51ymlWebgHgD1Tq0W2p+Ime2Agmm1IAW6q9R1v7duoywZ7LKyMEOo7WZSuZFWhoWxNdsGVLCqkyw5FWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecMEw8gJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecMEw8gJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04BCC116B1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765274573;
	bh=JbAhaakNaCBU2DORh2bZj4wn1bojztk694JMgNMxe5A=;
	h=To:Subject:From:Date:From;
	b=ecMEw8gJhuLc0AJ0a2ebkXgtyx+tnLlnPo00i70Wd7QZovCWGkJednl6ovCQrCuSI
	 rEuiPIHormiQdDIKteV8ZujohsfXphngOZel+YqIBJEzRZ8dtUnYHh+O0J5fG83gWf
	 qLSqNWsiHtEC547IVvWJPySAEWpTPLRRqhXM95+ZJDvh3Avru3RzDnQ22NZAr3vazh
	 Sy7OeOVZy+GKHNnpXeY4Klx1NGIZgnFjhRYx6NaL2nqmyLEvM67YDNK5dlYv1NqQ7X
	 3wcB60xrq1rF33YwzdCDgcc/YCR7kJGtUK1XrkJop6lRB8O94gDtmYG892FD3B5IdR
	 OQLo/Ckbplpig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B64D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527457358.512.15801304143937464496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a38bbae8792f1eb5c61e00fec89d5166df182ddc033bd7f236389ab5c67704b
Date: Tue, 09 Dec 2025 10:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765274573
