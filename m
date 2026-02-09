Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A773783DC
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770643434; cv=none; b=mKs0JbF8mWox62XfuFzDr01Ruv+7snuZBboU6s1eMPCzllg4R4r7IA54LFEAkGeNoJI8Ua0zl/5c9kzNTlS/BR8BOsS0koYcmhaZOuj098fFiLZhlN+yMitIQiearPR8cUtBgmvbSIivri/A7OId3chfBJRdFg8hbHE7RGSTcY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770643434; c=relaxed/simple;
	bh=SATn9cGPnikDKrrgn1U1FFsYFRvoWHnxqsSonXV0Alo=;
	h=To:Subject:From:Message-Id:Date; b=tzZPb6hg9OrWbnoECKJrldZjZxT3UFRu0TAJ3P9rzy1cEV4tYD8TC/MIpqv18pMAkwR31GhC/KfoslpCxOkBCh3+Teg3WHeZyj+Xx0dUAdglC8ShpWRK2i1/WHXITDbOzf3u9noC944clCngzJuJop5CVQ8hR5DtpH2anB/WJOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRF/oQ4/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRF/oQ4/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E2BC19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770643433;
	bh=SATn9cGPnikDKrrgn1U1FFsYFRvoWHnxqsSonXV0Alo=;
	h=To:Subject:From:Date:From;
	b=vRF/oQ4/Lo0v/MEavQrkTt+NwhrgHNmipoJJ6aWh4EVnm+jPorNZhe0kGMasECxRY
	 Ag2NXq4RhBKBWZzi1Xqg23VqjrvuA3gpX4BalaaVMEm+ek65fpf1iMkOnoAdI77l7v
	 ViD6XhRv06jMWF9/fxorfb0g7QyS26EPTPS/8Uj7DGf8JFEXceUbM20H5LSfTnPySg
	 wgazesqv6BhC8WzjYfXOug+GvkaAsnD1jWrT8MCUzPYsxKQQluZXSQ/1zh1H3DeJjo
	 AQyl2RBL3ORQDZRTdZrQBEk4JDnySA9+JdVi2TJa6M6fHYKrv7aALebvpH0LtPcHvW
	 iCIaQmIw+kyTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97734E81BC1
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177064343360.15752.13222837413590277320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b7cbab74dfce3b649438cdd8b232751a79df28fe63f2cecd02722a3a9acb1fc
Date: Mon, 09 Feb 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770643433
