Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC0B2FFF91
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764935574; cv=none; b=W6AA733xlmOYsjOw3WGK3rjg9Ay5Nd+R6lzzfBr0tYDt9Y3AfcFIfzWrIkb2i/d6L+KEIEePw/YZ9+4QDSJMcIDOdqJH3BxJaTg0jqn7mEwL2M1TmJ3XsUDuYwTsqHe4YGMSCZSWeZRrcV2fh3qOf8X1txWJrHLJ4M4z/Vj/2mM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764935574; c=relaxed/simple;
	bh=SeSfgY54e4o0sA5Flgf7XeQMHOy98Qm871g9D69waa4=;
	h=To:Subject:From:Message-Id:Date; b=SNN/XziTw4WmwXDT0+ceR4tnhkULoUGuiwBy+8IyRlAKO/3nEBONhR3SlQy9uidJsPJV+RPa4obUksc+a0L/j25MjJnTMbEsHqKQ0fvtDtyzRscPMnCVXDBIdSyf0tzBeKgItM7OlmP79xl2tr3InJkUFqlKls5clLwX0Apk44o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=naiE/cPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="naiE/cPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF89C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764935573;
	bh=SeSfgY54e4o0sA5Flgf7XeQMHOy98Qm871g9D69waa4=;
	h=To:Subject:From:Date:From;
	b=naiE/cPqSri0ocINDyRp62mN2MmRH46eiKvw1E7qyoeeb+9ODXW/IUhWBgqiqf++B
	 +zOAY3NYCg2noB8WppaYAE5oLH8C9DOrZJHQ4AUwON91N58h0P+ncnzoHWsU4LMryv
	 rWMvt/jX9Oa9j2pNYijVHbgw+/6lwcicaizP1086JTmqwHcoILclmy5xj0z4ZdyZ63
	 EnWwZlyb2mzHUwi8uYJS0v2YVF9fM8nuCMS05t1LkU78tT7IMyPaNiyoaLrUFzYSdy
	 GraFoyqsgTNjtmUV+DrcskUkVdruHzyCFrel/c9hkkC6kIvTtnchlFRXupE/rBpng3
	 C0Y4GyFv3KTug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F7BD2F7E4
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 11:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176493557359.16397.14289850411032046019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da2517f7f1f165e74993f7d37650bf38735663026d02932d9aab9bc8ed92d9c
Date: Fri, 05 Dec 2025 11:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764935573
