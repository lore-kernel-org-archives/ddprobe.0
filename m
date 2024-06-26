Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A968134DE
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719369203; cv=none; b=Z1A40w2Lk5oQV2YPGPxJRNKA7zzPWC1Xr1VQd5NFRoGLsmtXKRlgYl7lakUmdXAmDSbfGqSbHfz0UnfLqI7PX1opGWDuFdmaEStpdE0zI84dEUJA7KZdl+OQjWUxE6g7DZguZA10DopC/FnfZhYM3gsgV/XoHYfL/rFjwUJfIa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719369203; c=relaxed/simple;
	bh=91kI4rhm8QhLtNuEgjHhdw9qetbKPtWV9PhftLfIejg=;
	h=To:Subject:From:Message-Id:Date; b=qMrPuD48uqpmXadlbB/nD8Pet4AziRsiFbzelEkzLcEa5ny7ZaYv2ezWlxjLCiAVPCDoABvQsM9MZL6706eUSVDI/4TwJO19bT9kK7XZAdnHtj2a7N5I2Lr57sl33ZRBYtaS4maCEmwCTDE8/euhLukvIseepj4hDskD024Wrp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=praGY4qv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="praGY4qv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F7DC32781
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719369202;
	bh=91kI4rhm8QhLtNuEgjHhdw9qetbKPtWV9PhftLfIejg=;
	h=To:Subject:From:Date:From;
	b=praGY4qv+B2sCqz4B0GC2ozlaz8KhLKgwfWOXmeFXDuuJxAWgj79Apw6WulAeKzeT
	 n6uGEuaAgZoMXoERwBbW82QND/LhinshPGTGgybW83lKClQpqnHxwWHhyXufANjl7g
	 ssnCx5cahkdn0VObtI0LDqFg1OFZsjpDXgbM0wO8+Aluk1yahd/RC4CdlOaktccOSM
	 x8asIbSw7dBwFZwWPuvOXCLm/91V57rKencUYC5PIN40+HwuDs8v/w6Xqr0z3IhLco
	 lqnuoipp9dV9k6GNgU5EQZ7IVFrKYZNi1L8+fPPJMUe5GVFraEBL68EGxcjgFlS7No
	 y3YyRwBAH7+kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF4FBC3064D
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 02:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171936920277.15088.11379974209361818953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd62afeb46cbb04dc658601b705303822cbcf4210103cb123b8b63a4045aac8
Date: Wed, 26 Jun 2024 02:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719369202
