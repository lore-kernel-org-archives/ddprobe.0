Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355F82652B2
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757747994; cv=none; b=mL9gvxiih8VErIc/FJQua0aq65scJqN6Unn82bp9cqvCvHVb5EYqJ/TC/AWpgDkmLtfx201zbCY839uxsQ1JiGlD2FumYXcasqCywoBIYiU4L3aYNWf0idSPwLKdn6F8fn3IU/kS8uJCToqOAxyLCMvRVjo22AKixABI6YS/k5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757747994; c=relaxed/simple;
	bh=cwHYdwpaqbktcZ0xw6JfZhSBYzzyCQ62Ev6F43XC1c0=;
	h=To:Subject:From:Message-Id:Date; b=Kz8MvZacdl4p36Q4xrZxrxIMDy5MQmoDaEWYUT2wAFND5et89AG/6Ko+yVqxB9UP0xa9/LWSxhc80Pg1i7g4r7jMS0B3y01QNuphxBbewbeWqMyFPJ48HkWpJODnR1LiYzfMZ2J8YfnEeXAlmb6XVoT0e7xnj/GnPvh8uZkOWmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYfKiQsm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYfKiQsm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2FDC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757747993;
	bh=cwHYdwpaqbktcZ0xw6JfZhSBYzzyCQ62Ev6F43XC1c0=;
	h=To:Subject:From:Date:From;
	b=pYfKiQsmZ6APSqJM0MF4zXsstwgaataNYBIovHCqAQAG9uHPloLcJ59wFWMCa0/bw
	 Yl4mUZzSotMjkvz+S7mOLMovYQyx7uiuG3Fl0m/ZYQH+Z9Jm6l2j8wmHwDoecSLl92
	 sY5YIravMHnLNjeYPdLLdZehVBIHz3uSRkZ3NZbWSmxqx93JJntF250uTuXuKf90rB
	 8RvkzFLGjS7Qwq63E6y5KuTQo8GnNtgtO+E1kgkACSUuJZ5St9hg6Z1EtsihNfEHWS
	 a1kwOGVfX13xLaHCPGG5gGHddhujRzZL7d1AaDaXoSKBTFHcIUpmU112E4ynimaUaN
	 B0kVqTlw60iUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9129FCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774799357.8041.137754831849117067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cab314235af7bd75e62893b021fcab55cacae4462ed22caf17783851026d33d
Date: Sat, 13 Sep 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757747993
