Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D4B71CEEBE
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751732994; cv=none; b=nhxQknD0AhE5uvrAfAFCAW/XrlypSPk+XEf6mkbFiM5SkCmchcqcoOsM+LvTmca38KgGFt3DBgveQA6NCEjUG46qFC6MokwwzERab6D8k1lGT3JeHZnwOgLTe01IMVaDRjgPtJzNNoMX+mH3vVVE4kanpEJPFRQZQd06t3YV39s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751732994; c=relaxed/simple;
	bh=BoRgmmVn6XenWa9yoGHYeBPAf1mn862aT4wiEsXOn8U=;
	h=To:Subject:From:Message-Id:Date; b=gfEwG+dtxLuSVDaOzT7r52FiU0gYBI2F8zRiXfAAw3kl5gysMQ/aPcEqtcPg+heovYNQoeOLckPjBbXTuU0w3MfLnqOosufWpj16RVZDussP7eAIKG1AjbfUM5DFVCHDEDM/iLI27kzb0yjtPk703BuPsMTVHr5Vhr5MHvjCJxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UKIO2R5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UKIO2R5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3989C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751732993;
	bh=BoRgmmVn6XenWa9yoGHYeBPAf1mn862aT4wiEsXOn8U=;
	h=To:Subject:From:Date:From;
	b=UKIO2R5rzIX+88qlaXmF2qXjOTcEb+XACMxSz4dqrvlx558UiL8F0i5r7AJv4Olyx
	 n9huOQsABPD8egye1qIy+Gj6SYzFu/aIc4U0K3nibcP+cwgcGwUh7lAMhOWoqhkQoW
	 kq0o1hRfszVXzAX6jEuyOzaa8cxSgyh2mupHEuFhJ3U/aHrDsSMBRL17mG4k5TEmUa
	 nrmraFaRGpY3+LiPjKTs6Xtbvef24dM8afmA337f13zxv/kzFtxpmYS4Zm28kzUTcb
	 o0bDPSkBDJc8uUvRC3gwdA2L8fyZ3iw8H+Sl1SAYzjtxuLBNDlRO1vUilW6MBS3Qyo
	 pwit/wn74VIDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94711C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175173299357.19841.5991693395618882893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a61ed0d9e7f6682f4bd3c8faa94efee6d23b7960159f9bbdbac4e96ff0aa46
Date: Sat, 05 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751732993
