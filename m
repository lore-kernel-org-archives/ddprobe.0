Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D4730DED5
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772072694; cv=none; b=MjPV8aURecUC2bkP737YTYmWOp20uH2vbE/fy1moFkBqy5b6EoG3W1Q6yd+H+zz11JSFkW+fPQ3xXDQHPXMCSHrn+iG3Xgs+bi0qkDDmnFPInYebbffoPfZDLrP33wjqvzldWA9vx6R9s4X57uamznwgc8qOwqu8lLlJ46KtvFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772072694; c=relaxed/simple;
	bh=N5/jO1hXxqGdAEQJoQz9zABnPghATwjvgE+bSTEyoDI=;
	h=To:Subject:From:Message-Id:Date; b=ejxjdytqjfOfQRVB1qNfXyGerDVmS+TizczeP6YI5RYLL4T5Dv0HMvfgcVmokuyJBLCz80GB017ngny/yIdiPrPTIV8zX+2b+TxmnGw9Xbp5LqDpf/oB5rBLOcd78BOlB8PQy9upNHnhr1z/dzd+TwSfdXhpm1h48ajxW734puU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TyVzecB+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TyVzecB+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAE39C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772072693;
	bh=N5/jO1hXxqGdAEQJoQz9zABnPghATwjvgE+bSTEyoDI=;
	h=To:Subject:From:Date:From;
	b=TyVzecB+149kTI/UO9Lbl6kt10R0UUW5J+tacMGMcDC+Mbl+O/YmAsgX0LgY7XlbR
	 Q5fzqXvys0Q/VplwDATwIPVKH9YKKzQ82AQwjSuE31dC5RE1KXV/OfNdiPWYb4cL2h
	 aWMOooLl5dDa/X5GPKtTNw8FVH3DQW7WtYwEs+5vBL6MvV/CmsFEyy31zwuHui30Su
	 B/303dXS6lVH1EVjuzKy2jQu9ObgEaoQ35wUJt5ph/ztfMY/hJWUR9NoIROtJrQjtT
	 AVkog1ubAZEdXp2QaY11mCq9TBhf9MchWlZNcoga/UALUIMxjp0pFhWQWGc8s6zz+m
	 8nzdmArRuNKFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9603EFD4609
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 02:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177207269359.13631.12153128798818058136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d89cd55f29088a82c7d5294ff813f8f0c5e702d5f90a4677465987e6d717202c
Date: Thu, 26 Feb 2026 02:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772072693
