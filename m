Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F783EDAA7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780410274; cv=none; b=R00hgtxVSnd2yGRN6HUeHexclN4hsAMbJVfU7D3LYVNIp8HBUWXyCqTyjnIKsC2LzSgk3H/UI3z59pwZxnqYTHtRtXNqMYkyRMD6C4TIwiJELSIFb5J3tvrM9BIX5ysnBEGILT92YP/hD3vnEyaA35Aet6uFH+uXc9BMpA9jpHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780410274; c=relaxed/simple;
	bh=0ohTYEudgEEdSxprspm7kYFE8wgvXaYb6ApG0Jh+u90=;
	h=To:Subject:From:Message-Id:Date; b=kp1cLvBperSQyMhhNe3OwnV1xzFuJ7tzw+NoRj59NX+qmuK+EkmnVLoLCFvFf3mDgkOoTfQ0embeN/lgBWI47/8U+TYUHW3iTMQhDPHqn4ShedRgbxb+q395w/HgpE1LIp2sltV62Wk1oODzNp7Kysv6tmoAtgvQTanjTVJm3hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fh4Iew0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fh4Iew0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B770CC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780410273;
	bh=0ohTYEudgEEdSxprspm7kYFE8wgvXaYb6ApG0Jh+u90=;
	h=To:Subject:From:Date:From;
	b=fh4Iew0qnMCKIF/zdjxhKVfB+gNQkUE1W8QKKzsiVJnJjsZJiiQ9CN/wTEOhgZEGg
	 MCEX/6DVaV4XKByUC4TRkRIr2sp+fgGmwjwduKgKV4yvmkf/npOQen8yBGk6xj4nP8
	 yQS2VUG2ZFab1Q6VkGV0MneJI32cxCOyPeWBNONV/VTD9wqdGgrc1xnXO9Iu5Yi8Up
	 fmfF6xElt2bu4umywJu7wqgEgiyjnlktVx43M6GP8AT6/pApj+cu1xWeS/1Tn+9Kn0
	 RfLtrOceyE+2fubkyEPwPUlJaDJ3pvBigU1Wt2d5FIl2vKBIniOZoQkaZvR5Ukd6+R
	 dMFlD0kGy7A9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADFA8CD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 14:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178041027370.28877.13365440877653375637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da63bf4cafef6df7fb2929fa7ce2ed23cc1d0eb9ba51c39e73e3ef9853b4fe6
Date: Tue, 02 Jun 2026 14:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780410273
