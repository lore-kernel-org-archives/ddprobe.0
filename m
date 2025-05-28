Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F25E27450
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748459994; cv=none; b=hAkzYiIUQKBDtT9i6uOdeBYcvq0tObe4b6gGTn8Ua0yL0kPaLalhDWyFsgHebFsyC7OkiDS/j/HkQZLaUnA+qDjmqxkP6tYwtrfc/Ry7BhwQOuJfKITTCp3dkSvVvDmSD9aM63/iHCk8rk0A9pbk0AxcUTJhzkowrf7wBc5rTV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748459994; c=relaxed/simple;
	bh=9XaZjFWvaffcCHdLmSdmDKMERZFXSwr3LCSGereUNXI=;
	h=To:Subject:From:Message-Id:Date; b=VymmwYK7QiSoebzVLjh/noUxJEvZ4qFnieOttsiPsozd+oLCNvFidkFtnKerP3Js0rHLTlUEFEZZOyEevMc1Ok3VaFsbcZHqLX6DrzGCQNuEWGA0P78yrTVixLPCNJzre6hMnR7nUwEZxldRBYdRH8fWHeVtQxRoESXY8zc0ABw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3WrgrXk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3WrgrXk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1267C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748459993;
	bh=9XaZjFWvaffcCHdLmSdmDKMERZFXSwr3LCSGereUNXI=;
	h=To:Subject:From:Date:From;
	b=e3WrgrXkaYN4XCMyO0fbUGrmhUihTalZA1kOkOT7+d3Mi0oXb88vpJx/GlBe/UsE/
	 GYv2IzEZ3c/YiJ8wF9GCv00T1jGRwe2aP/wlsKGpZAncmyF4pg4qDglVEUOruu+zix
	 iCBjP37Wyhsn2lIBCCIAw4G1O80zEpyiGDJ6uY9Mk0GfoTH5eu3JrbZY9W7lXMRZfp
	 VWjVfmzp9qYMtdB7KbyIEzq8YD9VU6VBIxE9AGIujGFzDx26nckflG7NQGd+D2ogXt
	 u0kn7WrH+U7ZW15h/VOTuGhCLr3DX7XblCHi5mTk7IiWBrDoXpL2/cegPO/Q3BxAJ8
	 VFdxelO7mV3FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E504C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174845999357.583.9594937300930402714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d272f8bf62dd4c6c5794e1cb93f8c60aaf1f975637f029c10cdbffeccf1ff510
Date: Wed, 28 May 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748459993
