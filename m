Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233712EA151
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756849194; cv=none; b=AEsjI/r3Qd50O6bHpfzZrUykTtMC9YtHBjNXDAe58QWe9Cao82XslnG+t0goGdX8PPk0MTecIpHk+WV439/CxJVNNNZ3fwvSae8jjNYkFlQo1XQs9Yn6Yt63xyUtS0XQLQRapjDSscuUb1MwvfBdYJ7jkoV87vcsiDenmEZd+7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756849194; c=relaxed/simple;
	bh=6n02+jW3G2T/TvmyuSa59LV9Dlg7T+kfwy4IUzIhyZs=;
	h=To:Subject:From:Message-Id:Date; b=lDtoq+c/Kg8NqbwzCjvlPUvt3GL0LjldUW4nDzjAiW+N21Pq2sNiEq3LWu273BFGhZcSgnqE2eg8G+bh7oFyogu3g6uwE4r5pUYCJgUliU5HcxvzDsNEpftRGJ4V+JxIPLP/A22jXT/x6pOnmtMafSiLHv/RURqfZ99UzkOKGak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ey70O5qt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ey70O5qt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0819C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756849193;
	bh=6n02+jW3G2T/TvmyuSa59LV9Dlg7T+kfwy4IUzIhyZs=;
	h=To:Subject:From:Date:From;
	b=ey70O5qtiHJTBS4bY2Pfvmj2yBbj0y5QQlYyU6fT3vxc/k2OC9LCqfMzGm7L5h9if
	 7ZC6FBEq+USaOgob3nbd/mzDPiW8RCW41+hNlglbgYjMjlg4D8qB41abUGjJApnjCA
	 BhVwVQw2B3YSagrYdo0XVURpZDQvhRNk3mgYgr4AFA2Hiu0ZHpMEUld054uIDnSpRR
	 K+IINjTqCs5Eu7Ht8Opnm1f8o+bhr7RiydIf0L7it7hpq89Rlfss6+qv9AZ/Lz+L9Y
	 IYdmmB7Fm6e1foCyYwMt6/53PcgMR5RBE1JdRiiCEFCnoV5OY1L/lN5a4U8UNHFlMU
	 uGzBdrYmRJoGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E66ACA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684919357.6520.12040117891016717854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46942ce50ce99351fa6dd35383aaa22993e4a0822d07c06b44ce7bd8374560c3
Date: Tue, 02 Sep 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756849193
