Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4066414D707
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714075343; cv=none; b=hLe5gBB9Swax43dORgGVq9x1t0FdFphxFxt95FR4A+3MzeGr5JtknjqJI+Dt1ZORKFhXM4iR3H4g+4kOnHqkQJuHh7a2r3SKQRwTzYSHqmXKLiY7ksW+nVa2c9AM7TlGYcjeOieh017UH9BhdOngyE+VXAYe9W6SFKtd5wtY4zg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714075343; c=relaxed/simple;
	bh=Z84pxPbqoFNMR/uuFbYOEkHnykVH25aGHW3nrUNN2+A=;
	h=To:Subject:From:Message-Id:Date; b=GoTP23D0Pw4oR0ojD39pq9iwaaBTj+tzcpkrzSiCHwYJEYye6l3Tw8UhSgNLZMQfoYXTGucDyp7aoPIIxwTj3mCV/efLlpPgkNUagUfuEDAY60FEQawbPE2uDRR2nPf7YDRS4E0qQjha2XeVdgWRLVLdkpGbsenidQXr+b/R0i4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVG0r+qk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GVG0r+qk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEFDC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714075342;
	bh=Z84pxPbqoFNMR/uuFbYOEkHnykVH25aGHW3nrUNN2+A=;
	h=To:Subject:From:Date:From;
	b=GVG0r+qk9sWwyqStYUoX9V4cvbqBFhhferw6scXmRWAgmb05TEDGZ80fw8xXNHTG9
	 pZnf8DPIt1lUhXbZJZhW22FgygBsSS5TMe6PTlzflPizrhoE5YtOu/b4UchBJwJX0V
	 RD9VToLJzPExhhGVyzgQKPdGchB4W22njpPwDlNL/z3Bd3Z3bA4M8eWPgccusB7G0w
	 wgPvgNXzmUobkOvQHSLAqDwGz6D0T1RErLdKIQ5Xe9nZDEmdMNGei4y2urpbEAlO6n
	 YkgdAPy4HgHug7DOLAfJrPfyukuy3SuzieMajAH9JFldMMsONeGk3wj6tnr7P1Ju4s
	 04JxAELEwTSGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C492EC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171407534279.20300.2643927237351094512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c758c26ec3e74981987c62ea350d0423c60967f0549f360886065f5a7f6664
Date: Thu, 25 Apr 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714075342
