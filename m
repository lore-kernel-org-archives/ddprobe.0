Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476A07081C
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743587994; cv=none; b=Zv6Vb1ikGSeKfed1YgCQs7bi6w+wr2p7pO0XjKetuQPYU7643Ebu3qSygoverlyy5oNOeZENrkyDa371AioYGhESUgjb36FmPbBC6HRRwjXi6kB/l8mFfIvdO3JtnL2l0sMhw/HugmDqA9Q5k9P37Q8Ph1tQofHjHoTsJUrMAN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743587994; c=relaxed/simple;
	bh=VbM8yxZEQHUshe/avkVd39Il47/ImKTBLwHdR2F3Rjk=;
	h=To:Subject:From:Message-Id:Date; b=EL+vDv6FYYIGnVBDJDR3sLHDq84MMNDrdYIDbITN8SmCMv3RGF2qQdU1SZ835Luf9mHs9u5Sc6hJfT7BSmsSzIPICSZPctZ0AVXFR48kLuFF+sRqFvpoWm6Ks2u4QQ/iE0BJjQCxjD0HmUfREQMo+skoRBOfm9bGz0YMoepPU2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p63r2j0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p63r2j0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EA7C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743587993;
	bh=VbM8yxZEQHUshe/avkVd39Il47/ImKTBLwHdR2F3Rjk=;
	h=To:Subject:From:Date:From;
	b=p63r2j0EjQ1mpCuQCeP69mZM6DRVJqVPnFym2RtdSJ4ytb/adHj+xaasfSJhnyfIt
	 bMNZLk/PoM00jpFchVd2pS/kibN6TpI9y3gq5siWhDbBP0kYSv4VRIMcajL/NBN5Qk
	 wM95NujJ37T+P5BwWdDWu0OTdzmQWHNkcNpd/Cc90FTw9bwTZt9IZBvQSBFTsjNU3E
	 kiCMhkLOON2gm8xXXBPpmIRCqcwuxMJx8nB4C9+Hg7zHghgdXSNxg5RksyfkgTk7sT
	 XOm17wJEPyDLTOaA+QUE/PPF7eGbLbmJ5pJKNp76K9wXr4UosbnDJUHx0Buxi3jg7p
	 NjAfzoLr0+2Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CF5C36014
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358799359.347.5349892815252566193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5594f735a52f96dd1bc8857954c82c3272433c1127a56beef430e74884e1952e
Date: Wed, 02 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743587993
