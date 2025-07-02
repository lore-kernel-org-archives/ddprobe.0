Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE32E2A1C9
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751425793; cv=none; b=rlqsDmiVm00mNUVDXwutG2ZcVJdqX7inKaCf4cwUbbx4+MShGOn2RLNCxxnPW6v9QIDPHghBrwMpQlL+6Qj01QvS1hIzV4K2gQVI0ryRrblAOcDnQzKv5BQoygUoyuKJVkqWmq4YkU61gYS01levQfmYGwwRmytkHhbEi1lxko0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751425793; c=relaxed/simple;
	bh=dlC6gGJ9Mvw2Ozzc12dtb1Gf58l78LLN51WlBU70VMk=;
	h=To:Subject:From:Message-Id:Date; b=Rl4Vun8j2NREzRB31OklxnG4lj7J2sB0FC1weVVo3p7jB0mRb7B+ZLvcDbiGCFUJDcAh5Ki8r28kN0iLOVIfKs/GEOw2INru6ldR8ofpAttyfN8fBlsG2Tb3yq05IL2302wM9lqPqs4P74TSqhBi4t8wIot8Wex5KJLyN/4rw1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0nNc/5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0nNc/5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A088CC4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751425793;
	bh=dlC6gGJ9Mvw2Ozzc12dtb1Gf58l78LLN51WlBU70VMk=;
	h=To:Subject:From:Date:From;
	b=B0nNc/5/Ae38cJqzGR8a8Urce/SpMzFhWOkJJaT40tlYqY+ni9+Qwi+jf9DN6tlyC
	 F9Yd++l4WMLuDzCgcxhVwubDmGypHVbDTLnmdO+FVKId7v8+LS5mYllBbQ4yuUjB7x
	 XGGqGQcEOtp0FNCXN3JP6Nnq83GcF0GIsouFHTBWYvJ1YA3Aie2Y1FwPBtvRlpVoGZ
	 z0Rbe/3t2+2HRTZzMHnR5sJXzni66ungIRUCvZY0E9la2kwsQ6osqc9semNoPCoyRd
	 Mco6LJ5+RsBLXixOCFcT2QRWs5no+ow7+gcn7Nya69+auZm6U2EMcgeiWhiLKuwayx
	 qMStfokLl5khQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F348C7EE30
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175142579357.28388.326676764122975926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c0997095bfed95cb3b6b2653da8a1f1533983497551cb271515f3556d638f3a
Date: Wed, 02 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751425793
