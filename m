Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597CE196
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741437534; cv=none; b=fRgOEJQRHzERgOZs1RFOhe1P+DfiZcMerWOuqqKmk2B5XOLCuvpZVxtYqWLhyje82MMUAJNywjiDTC0aFrsjR3vnXsQhG44aVlZ80THH26zNm+CzAwFNmX6RphwTGFKVmSzm36o3uckbWzuRFp63ZOHnM9Kmeo8DxMgXmdB/pm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741437534; c=relaxed/simple;
	bh=Ifg3YhdEtf47E5unrpnI54Cc1VrEYlyMyHgj3ubF31E=;
	h=To:Subject:From:Message-Id:Date; b=UptZ6FDHCtaJfUuoPyGUX2QtmySVytQPtsU6X5RNvpHyCZnqoPd4siYwxrVyNcLXlKPSDGPdhninxAr4wggwZbmmTUFJiZQdupGUnFeJY1e3CBQI54pN1BgKUn6D7w2dOmz1TEkoOmap4jZVTSWQ65FOrhfvPYpi4e2LH1SfvFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxWOAlRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxWOAlRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2C3C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741437533;
	bh=Ifg3YhdEtf47E5unrpnI54Cc1VrEYlyMyHgj3ubF31E=;
	h=To:Subject:From:Date:From;
	b=MxWOAlRJxD3YcDiawj9zdy4prxlQQ724hUfIpqYKvrths3JKR3wHR0nt+07KpgiZM
	 jMPEyRlnR/TvdN4X7KP9k5tN1gASg6jJh52DemBVdu9GzUyicr80dlYNGGHaDztX5t
	 tR+5inFD0ZQRkOfGG6N1tYFin8oUuR6zrAJ6QdmhenVylGBjuLvqxBGmi7B58wYWyn
	 rJnkfIJ6NYrLB3wuP3+8PHPrdhcCTVx6B11JzyZGpSaW4Zh1MVsSC6iX8wQvZ5jqfA
	 6+FZFGlBDLQvsIh2KfTstZ0UP8v2dGwQZCsOUMA5DMwE/QFgwkesVBdxkFSLbb9Vcj
	 w0wGhk28uuPEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFC9C282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 12:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174143753362.20315.11699514715999495307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34fd5c60c6489460ef2753a98536f69fc39c82d914cfe45f631dc2da69f5859a
Date: Sat, 08 Mar 2025 12:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741437533
