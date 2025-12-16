Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0111528B7EA
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765860776; cv=none; b=ulgnR6Ut9qmvU/GMVaZa2EEmlbgncvYCfoKnsTdGv0M0lxecE1piYpkNNBd5pgFB/889/WdkUapIGpea9Iq99ODNsW19I6p7a9+R+Qk13C3K0h9PzxEOmtuJ3JZ0PmFVXJYf4CZCV7RZiezFC5YSFrxHyf1qZIfzJj8csQZZDi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765860776; c=relaxed/simple;
	bh=Y6lukfPiP+LPeYyWGZrb8ltuQT3Aj7+/lHVwhqLzczI=;
	h=To:Subject:From:Message-Id:Date; b=fGRBhWToz6EGWlFUEGiL6W6Ak3+DG1XHCHDbTZXxs/RQ/Swl+2Gnihg0a7iWTCJdpwPodIQGeuLA6mTJjltY49xbHTSw5B1bTybxuMKHzRG30DWM9saC8jpV0Tjc6zs8wXKgH1s0h7IGAmRucrCHe/0rcqBo+VfptQKJ16gk+LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pf8AeUUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pf8AeUUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB24FC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765860773;
	bh=Y6lukfPiP+LPeYyWGZrb8ltuQT3Aj7+/lHVwhqLzczI=;
	h=To:Subject:From:Date:From;
	b=Pf8AeUUf9HJ7J3eoENB471uGML98AC2whn0PwZFXXcnWPJdufdYwhIK5thu/ybtRR
	 w5tgCOYYRKPw2G4ZCR5OaDsU47O4bRGDDUrhyocoaL8WQH0jND7cTMC8OF9oGi5pwJ
	 2PqiSxhs7ENUZEQEufmTy93afnOmHyh58tiF+ZbWzHLpkbp788aypWXN3h3QGMCneY
	 ybCTW6aXQZSvyrVssfxd4NcwKOERkrtdxZnhLU0LwxzUsaN1ZVA0VuVl5gcVsRRrkH
	 5l8C9ludYMYWLahVbjltQpcOhlOjsWnhQlq0Ia/KKbL+ImJEGslJnT7VMzOubUBIcL
	 dD6lxEGbkPY5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BF3D5B161
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 04:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586077359.8343.1167212725582165796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3b09b134ff463916df04cb1c608ecea129a33672cb0c75f78c30dcabb7f2a37
Date: Tue, 16 Dec 2025 04:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765860773
