Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C6317557E
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789788034; cv=none; b=qOY5TGbMHfoRqejc5grReUUV+iCQv7aOsG2fJNxQQuP7VFZFeH1pg8nct60Oypl60e3GlygNByTJR4TQRExciOJUaIyHUB/JuEFnWuxaE7vYzFNOtXDhPvH8FPwQfS1hWs14XWq+CqXa9ZeJIeRrmGoetmzWnYJ146MHwF1opHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789788034; c=relaxed/simple;
	bh=gyYobmupqk3It2XsNqzqtUE6LeIOJcNYPyPsSgHFlis=;
	h=To:Subject:From:Message-Id:Date; b=Ex4/TCbRdFYGSbXcr/a7m/Uc0vo9uD0Zxk3taRs2X4pVh2ZteXqrQKsTt2d4ZD0ESNCL3YuJLZNzbCloswBQCMMGb88HkZtIS/8ltZiCB3h3LT87BsozVV0pxR0utarjc4m4WR3L12AwoSOUAjOnepSrIOrv0JKFeI0t5Bs64SE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCW/xcV8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCW/xcV8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB564C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789788033;
	bh=gyYobmupqk3It2XsNqzqtUE6LeIOJcNYPyPsSgHFlis=;
	h=To:Subject:From:Date:From;
	b=NCW/xcV8GNgSPi0i+HUqSBodTNB35+Sh+vwjeSAsCNGzUiNCZCvW+5o1uHA9wPzSK
	 JbvSvdvthXmiNkzHmnVm2/FbJhxrlvuFV/l3bBBcc8jlJlQ7k7GxqGrJlAmlxwfcdA
	 28zPovTMgDKbo9PBqQDBdkaAGmwje4GupeK129fOSjTfplqa4bEhURVjuOzTzSow52
	 f6dxD9wPd7nXiLATYJeIPUHlENWDt8FzzRw+r22wlJ91i6VrZbYBg/rUm1f7YfYSsL
	 sG/488Ig7VTe/oIJ/jQN6bRxVUWyLhHD0XwEJ1VW0+NUQqA6OV74a9EHyMDwtk8dXY
	 90ZKsz8HQZiig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40B4C982DE
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178978803368.20550.8845484584607836455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa6a5b38797845e872037ba6c0116fa42c876c22b3a5018ff18305a911984fa2
Date: Sat, 19 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789788033
