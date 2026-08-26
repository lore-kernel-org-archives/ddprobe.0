Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADB9395D8B
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:30:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787769038; cv=none; b=EVROeBoxcJXq6kGaMMiESp5SeBW4RQXbi7MhDmhj67n/NbHtih99eS/t0LbSNfxoF3rb2mpFrS2MypVvH+0bppdpW+a9btIWdvS3+EEwLYi0wbwbpwQDM1cVs5LLfnFwiFotdlBydBOOTU7GahaTGFjzG2TnBxPcKXCnG/pZxf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787769038; c=relaxed/simple;
	bh=Om8cWH7fluD2L4bRLRK8ZGn8LXU78XmHBtWaeecRwKw=;
	h=To:Subject:From:Message-Id:Date; b=ngokbrRcqVFXTQdtKZaUT1HlXDZetY8lIixmZ6EbluKIKzybhBqOpT2zBW1WGlLm4AhaFzNZkbNKVLtvqAk2t2FKOpy1OOKU9rCwQYXPICTkwHIgjTYlhvFumIQDYTwSXTjnDiHZ2fLcpCcB15eICkFsB0o4FDCu8oSSM63pQh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oW7/xtsi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oW7/xtsi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6DCDC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787769033;
	bh=Om8cWH7fluD2L4bRLRK8ZGn8LXU78XmHBtWaeecRwKw=;
	h=To:Subject:From:Date:From;
	b=oW7/xtsiRAqs9xfNJpi3OL3yoMmE8m6sFe/bseRGPhcz2Zi0JPZQG7ywMyEcjkeTU
	 SmclSHXvF/UObCJb/gsh1dU0iemDOXKTtjfG/t/dTRx8WVDPWpr5NwiNYtyHTrZ4HO
	 jDxTEsNyQGrclfvVJVoy9nyfCDifTTHy4eSEV4npwBBp7YwxEysFwQTn/DK/pfF74Z
	 GQ2AoSUXg9u5kTUunFw1V9ku6O5ydrQTk2Z7vKR9OCqjGGhfvMjICTB9PsetnRVrtN
	 h3DoYLv2pX/TJVY/wy9E4VDf6l6ZhgjJoTP17piCZx8kjw7IiDAhHS6dWP4uiSzrGz
	 fmfFMhKAfwChA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DEEC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178776903371.30292.14202506430075606133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545b8ec739bac4b6b4db2454683394803941f257cfeef248a3a955ddcf593039
Date: Wed, 26 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787769033
