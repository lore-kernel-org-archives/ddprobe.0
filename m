Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCCB27A45C
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758647394; cv=none; b=Qh0loIPtIx10nAcIont3vBQPhM7UJfjkVLj2LsEhsKmWrQc6mmZaxQH1dSkUxd91TI/IKy8NwxLjP4X0XQtyRNmN+XcJCH7TKTiDNJrSB7FntR8hfo/wzy1kshf4jl0iOw65UH/KR91xsJeuu+G+1U0O9msGYBi4Bs8OmB965UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758647394; c=relaxed/simple;
	bh=On0MZCxiQ/VlfTYWjJf8zZ1Zf51XGFflxTd7lf8JbI0=;
	h=To:Subject:From:Message-Id:Date; b=h0UdtxXP72Rm7iYGc8FhYEYSIBlKxdgTWv2W6ArCHAcOIgzk1vosD8yKIDTTjbRjDEsWgluNEPnRSkRnb/J35OCdSnFnJqiI5BH57M05njIDPu2JYDC6Iq0FhztEcRSLONsfa9+wCZSS3yzaK6FsW3MGk7QwrE0CCM4FhSrRuLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WjDoRX0y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WjDoRX0y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A031CC4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758647393;
	bh=On0MZCxiQ/VlfTYWjJf8zZ1Zf51XGFflxTd7lf8JbI0=;
	h=To:Subject:From:Date:From;
	b=WjDoRX0ybpaVwK9hSmlSWbT6h1Llgf/uE4tOy6GeM/N/dMPs3Sg1VrWamqqFYWrct
	 SykYakChYpbsghLCFrNdUy5Zk+osrr5j/kEy6skMx7uKJEwM9QDsg2k3qx4E1fos7t
	 pdfiz1hHR051Xxe0VqAGF22JzpoeuH2sjrYcvHlL8yGF5sq4bXWa2v+jeBllqqhcs8
	 wxXJ+DkPMUkVg4MQOQ96oLukJ5NPxbwGjZVvqW1Vlv8UrYTmLPGEgL1rcgMpASLu2d
	 Lmzs8DzapUPRuJMgKj1BVP4KuZpliFPkHcv5e8Fu8nxLR95coX+imZMVduXNLrOVTD
	 uW/oxZEQ67eBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E4CAC5A5
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175864739358.20678.6427964543716735259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f78c7ff6b189be5b4df05996ec6cf7779d0b8355ff17a92c1f4b470d77d41e9
Date: Tue, 23 Sep 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758647393
