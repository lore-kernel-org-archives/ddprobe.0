Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53AF2223702
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787542834; cv=none; b=h5fttK/cGdBK7GbTi8jBfyg/82mCDO1vJSj8hmjLJwnk7M0guPYBAw4b7OsmSgPP0Aiv2Z5ogOavS9jc6ImFqugqfZRnwCqBmpffDj6ukbHxaor4VEy/+zyxiUhqYFc9jWP6L674uWclU6xMCvjJ267sVwmysAOgKhItKPtOYGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787542834; c=relaxed/simple;
	bh=vZ1sU2nDTIPoQdTnAWAUdeJytlM/tYY/ekbSWBbMhgE=;
	h=To:Subject:From:Message-Id:Date; b=u1ByYNbHezcSuGmUuOYkc9K+2/4sDYEqO8ApSseKnF7UHEpq12yDp7ODQ7qKiaS5JRGDHjIBwUVIT5xIvAgw8+kQyHCsJlDIQ+nrJqdktm8sfE0Thum9sK+h8x0lqHQ1OJxg1kaK5pDQkWjktO7fiD+n/gIS34trEr2awbOMm3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y0aovcTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y0aovcTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB42EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787542833;
	bh=vZ1sU2nDTIPoQdTnAWAUdeJytlM/tYY/ekbSWBbMhgE=;
	h=To:Subject:From:Date:From;
	b=Y0aovcTHNO5pJ8FYVXtdPxevD3OiAmtphbVm1KhDude86UA3/IjYx3BPeO6Sfk250
	 tzBO+z4+ZLe3JfpeKZenq6Udk0Er+rQzWP5hcPKVxScouMXxJgVNfK6lid6qmsdoVa
	 6JD6CJmbwGksltWGNekcqcxCbQU1OQ2yMTaDTnqD81Cw2KUNWFlIVV1ncHMStQpdXG
	 KG13n+h/+w8uQlbWXyJ8RtnnZwK14kYBb0Vv1rMaV6K5l+8KvlJ65IyonVEhBbAnJO
	 kRFgADAX2UrtlcBp2Sium5Qf0emAj7fEexhsH5RKESSJx01EnjP8Pw5GUPi4LaO0is
	 ZKjUx4XfZMM3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1CF6C5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754283370.22304.13109092043877733080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 708de7fb153c655a4232b5ea34163ad51656a7159d6e4e6aa45e9080d3d3c34a
Date: Mon, 24 Aug 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787542833
