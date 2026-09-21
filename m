Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BC2F3191D3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790004634; cv=none; b=otbMSvNMIJV8nAyGxATMF8GoM+ThU6pRDiQ1U9bh8d6jQTRASQSF20RIXbNZhzKdbWuDZoU9Hxeg8RbLiXX5vknSdmALJO9DlTLwpGN2EH4JRt5HTW9I/2PLW2BGa98RbiLDQZjJn3TqeM//LzvG4HHUhhW6iwx+tvhSEAaEU60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790004634; c=relaxed/simple;
	bh=ftZXSTewrwggYua592vkQo3PPPns/nyU+P2PeVQRYBs=;
	h=To:Subject:From:Message-Id:Date; b=QhdqlIXk5PAYtjVw2pF93+7ihMNzE0zFdgBmACXPY9w80Crc0O50IUB4TymtnLhfbjwTClJEhgouproyCD61LhIdjl7rcPlDhkoZm3zAMANPMR/wPTJcpgQyzqXenb1ZdpLer5F3lKWEEyxl4TtSRo7ztHE8ohhG7iLZpng8io0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGkDKWFV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGkDKWFV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0879C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790004633;
	bh=ftZXSTewrwggYua592vkQo3PPPns/nyU+P2PeVQRYBs=;
	h=To:Subject:From:Date:From;
	b=hGkDKWFVHEZhKLHCGtZXLY0lxJp3Bh97YPLkg8+wK1a4fzlWdeo87Fwwm/t36P7LN
	 cKllT7WlKEflH7aZp4j1ZAeLVIbA5bgQIELjGNPF9PLLWDppctVv4ia9qzv+a6Vgio
	 041kxO4wrldSjRMjZgFYYVjUwvulUCmjuYFcHh3s6uH37+lnC6ePfqQIeyTMthMGbS
	 FMpat7batLNyp82lvTRuSGfLezvswsqGmblggasrqwQzqh/pZ/YBtiDcLSQxTSDK9K
	 c1pnXGZdDG3OPwn7vTyQoGmPqSMJa7B8avfW0/ELBjX0ej4BBjBgRu6LrnheDmoSGB
	 5zKxkbvu8aQWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7587C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179000463373.1368.17394745733412663587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 888dd7bbf5b8e2f960767ba3f14bd7a128169d0431e12b78e154f20141fb366b
Date: Mon, 21 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790004633
