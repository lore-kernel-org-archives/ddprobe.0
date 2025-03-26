Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF3114A4E0
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743026995; cv=none; b=rrWeCyW0vIMDVKqyP7Q4k0Caw22w53um4rpP5/AR7hV6KM51B2HWhKx2cFQ7jDEBGL+zwqAk58J5LAWAuOa49vMSgvRFa6deMAwaS0hK43VItq0T7ZUEMOJwbx6/nNUyY0HcQNQoA+WmWmSSYFUIzJ8KSYHagX5Dnr50hRBa4O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743026995; c=relaxed/simple;
	bh=hLm2esRLNaUQlyjw+trs+pmOyrb4tBPCPKQn1WWss3M=;
	h=To:Subject:From:Message-Id:Date; b=Uu1swWav+ZXN88mN55jsOx5lT6tXO4Rm06EsZfQ8WXP9rFtOVeWmmQPBbZ74JYR6+Zz6ktQBIWMeWtsSduXY65Ny/j2Ix/3q01+bCa8VAtY1L6IwDMVrW0Mz7wOBSLeH+caWvVmO2faUuziMFJT/b62pDfx4/QIvS3UlOCQIsSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tyx19bHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tyx19bHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9242C4CEE5
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743026993;
	bh=hLm2esRLNaUQlyjw+trs+pmOyrb4tBPCPKQn1WWss3M=;
	h=To:Subject:From:Date:From;
	b=tyx19bHF/+RQgOwOwIkS8Gk0IBg7/+BNzQDSiiNgDwB3R6XGWW69ml2P/YDQBSgXb
	 ljGVNVRp/HYx1VjAasJncn7F1mAvVKB1qjBXCLvgPzAEfubXIc645SWcnyVOPWmlUK
	 7SFqgZ9UtpuEHfFmUclrMJa0uBzCvNf/gX3wzyEUyvJYRbmOldysou/35NO5mgk/jC
	 lIjFNdvezI271kiPPPl5wvdnrZkXAnZYjWeqb57KCmgkVn7yBjAOOekc4rMIfVRPBY
	 RAhoez1ckFkOhOW9c2j0FGL6v24GHdq45hKtREWTgck9LzPz0G7XtSYuzI9VhLuA6o
	 GhBzSek+C+auw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0314C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174302699368.1317.12242017387212524440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7254804f410c13d20b769763c0467459c4aa632b127a913658ea0607001f532e
Date: Wed, 26 Mar 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743026993
