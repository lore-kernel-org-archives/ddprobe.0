Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38059224240
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754594994; cv=none; b=RZZDLryddBwPa3/eDmyqjpmWJ+RMvmblP9kwbjkKHbeDWtXTNg9Lu51SkZaqjLmAEBwAAHkS9DQ3+QTQd9MGxY21asc3gffmBD9OeJqdkMRZOrg//bgNizrWt4QJIP0lcPZ/3uJ3q2BoA1rYQutaGalgYqyfblUA4ryH/LWjcHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754594994; c=relaxed/simple;
	bh=fWxsruac7+SRx/NSs2/iwOqdKZyk6DbH4wZWuOmfZFQ=;
	h=To:Subject:From:Message-Id:Date; b=nbkGqUkibzmSlazv6UPoRbdlPEuVcJ+Ntwsg0eTyWNrOQNhGgRCu9yZ1fX01F1EAuO0jGrYRwmMCROFND4xVL5IfiXBMP1YzwvMZcvEbDfPTswaXf5T5k64bL9jfbe8gw1p9Sw0xP0n+8AC1pV+GblAXOp6+A2fo3CgLdm6IKos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oze57L6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oze57L6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE1CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754594993;
	bh=fWxsruac7+SRx/NSs2/iwOqdKZyk6DbH4wZWuOmfZFQ=;
	h=To:Subject:From:Date:From;
	b=Oze57L6L9K7TF0hhm7pm4iKP2JZYUfijpTl3PvZyeFnJqeHM5CgLsTGpcls1ofVTe
	 CfGGooDmJlbhHq7PplEugTcvDlsrYTbMkIqmez/faUKH+iSn2FaPpvDGF67fpxbc0M
	 zWv/srTqr3BInti2WB6a0+F1yPps0bPooelyKYymwpp9isvX0++HQe9aHPGEYnzChH
	 ms05j+XJr2QwM9x08+P8q9xLKg++yxH594HKuDH16SAltTRcRadEONKMiG3kwmvpCp
	 Mw9qUp0wWZUtfr6tsrHvkXq9mtq4qyAeHq+fPD1VcG6lXvoktd9Ms+sGMpBY0+coym
	 gX/wk8EyzpxfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932F5C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175459499358.12205.9835676133048017118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c6b5315bbe295178d564a1a157a1f4654806ea8c49cba6fe844188633842ea6
Date: Thu, 07 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754594993
