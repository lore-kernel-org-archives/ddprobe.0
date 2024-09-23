Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EBC71A0724
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727115354; cv=none; b=kjl9yP8cB1YnHaKDLOVGrUsWhtfoVcu7JS9ngLeLIflSJWfmgOaDfS+Ej1XKdFW+OWE3tJggP5NhdHbhkPoVaRcMo4yh5hMxduZZ1aimf6URM98KaHXxs0gQ2J8ZDYeISc20p8gJyLbXs/qZoUO/qyJ4b0SlNH9RtzdmK6iynLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727115354; c=relaxed/simple;
	bh=MJkTQnLcixv5IH36ik7xiQB/iAFzfs1dy+rpkPqGLww=;
	h=To:Subject:From:Message-Id:Date; b=liCc+19bV+5r4FcBzo9xS9lZQ9IVsaTkPl8ciCW4DvWDK0rvG1jVaC00eAQIEv6cVT9Z1vu67O8cDw3xq0F1moC7IdNcxbnuUlpoA3zmTcVA34FV45xIC9x1WWUl2XDmnh8cWA7nlC0rVvAAYcsD0XFog3AWJWbbMxs49e9arwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krINMI7z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krINMI7z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B99AAC4CED4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727115353;
	bh=MJkTQnLcixv5IH36ik7xiQB/iAFzfs1dy+rpkPqGLww=;
	h=To:Subject:From:Date:From;
	b=krINMI7zorot3mhs6ZzN2RtsntP3dCU/E8P2HqbVNpP89SYYI9s9XgVQOf2AcEwQW
	 bLn1yon9EATy25Ue1f2nmCSpgtX2r9lvjdiWNmpv7BtvIIWAtHxlmadvmDCZMUCFV7
	 wvr36c5TyRYAkdCoy4kTnUGif0c4av9ePyWGadoU3g1Do/lQpCLJBiDZav042k/+Hb
	 7JThWT8YtCTn/BmSFXyewH8+dPMDXMiiEgMNH0JoBoRMp6p2sVrcCw28k6aNJz8fH9
	 sISukeXjxLz56fx+wlM1ZelAKTPITFTCIhgJjorkwUyS5h+CGZUwUJebPFnqFf7w8f
	 EMbjDULosSstw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CE3CF9C71
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172711535363.10302.17324148180029985654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea723825c322bfd922959c970c05c6e53235fd283aaa0fef3754c461089b335c
Date: Mon, 23 Sep 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727115353
