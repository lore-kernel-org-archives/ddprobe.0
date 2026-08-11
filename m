Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DECF37267A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786471234; cv=none; b=RlalUlw9CFVAi04G1XuDFm3y5QiuK2eQZMyvjK0iKhJcL+HqeuZgrM72tGzK8jscM46YYQZx9c+IJ9j68UH+gs1f5GpNcF0XHhwCH5xZZO8+rISoOz69E6G7I8SO6CUXtz/vCSF/nkMC3jXC46timALR7oRWhqzi207+VNbEbxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786471234; c=relaxed/simple;
	bh=DxE07rWrBgw6rVG1wD4prtTih+tZQ5TTc5flzb5XBvk=;
	h=To:Subject:From:Message-Id:Date; b=LxZDgxtQcVgIoFKxYduCBfWVN/1+iJs575IlFcQXF1ICcJoOcuZzFOHzQycOxiDI3oli2MW1R3iY4P0zafcblcgGhaRJ+/LIVIG0jgOYHsAIVuzYX0b7OMILa9tWD3mmo0agIS+pHslZl2lGwSq8Ql8QuMkQzngdXHQVtkUB68k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tM0nfmYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tM0nfmYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB881C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786471233;
	bh=DxE07rWrBgw6rVG1wD4prtTih+tZQ5TTc5flzb5XBvk=;
	h=To:Subject:From:Date:From;
	b=tM0nfmYB0j+Ih1XY1rceZXc1cz9M5f1GV5MT20ozsAsNSq4k9oioS1A64t8IhoxCL
	 eEVDV17ikW0G8Qf56dt6i7awg7KE+A/SvMHVief3iBF+8VTfI4rbGPV/g2LTUOrFH+
	 EdpYyC10Ex9I5oSqhb8hrg1UJ/fk7CPlG5eKUfcpRgHirm95QVGz58wtSIEKrnWxhi
	 yhboMhzsHC37+rufjjd7As/gN/G3TNt3193GrW7EINRd/R8MXEJYIQSNLAEUdzb/Fw
	 icqrnt8Y2ywCb7b2+FKRWJIvIbsoKGC02W7fCfhgSGJbTEVUO8DWiQ2kF9tQZim+ps
	 8tO6AROB9onEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A88F4C5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647123368.8317.14819302041456324855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b811e842ab7a35d51af2381edc8f1df1a207edd5aa5cef36ab98c699bfaed79
Date: Tue, 11 Aug 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786471233
