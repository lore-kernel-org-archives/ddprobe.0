Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F80B356755
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789023634; cv=none; b=GUn5kD1h5VCa/WZbx/KSSa/7rKZhK/H+bkbHewHM7AgyOJdDbjMcX/Mlektna4YpdQWoulqkC9oblhe6BXWiFxkwf3re7I5UV4bVvGYfYqCDEhaU90TswpvcIbeX4VwMleGik6JgvU0UHj36ak98FMYiiyTphpWvsv3c7ipRFTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789023634; c=relaxed/simple;
	bh=tHqy9Rmz3CPXtrj/avMwdUoT/1QolrrVRCGOjxiv4YQ=;
	h=To:Subject:From:Message-Id:Date; b=Q+XXBOn3aiOA51zWuFH/zFK2xsz4t6Fzplzmfxx8I34CsRazYB9AjMVWrcyZIyGEio9PjjsrlNXN8hapjNAGuRMfUi+6loJaWTxtJSGAsrbVJ3Cs7U6hD2wamHshmS+HvqpOfLzC3lMGe4nPrLZ92tDI+nKACGv02S0HaQTQbKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uj6STjOf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uj6STjOf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9767C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789023633;
	bh=tHqy9Rmz3CPXtrj/avMwdUoT/1QolrrVRCGOjxiv4YQ=;
	h=To:Subject:From:Date:From;
	b=Uj6STjOfjZ0fitC9jRd232Ura1ykJ6ExbFrj+EXSczhuj2E2VDIQbam9bhu3Iq0jI
	 Q5Snv2Z8Xf1hr0eADwAO3s/+d3HWK/tqdCbmanx5163R+N/nQD8ReuM+hm8b74umgm
	 MvBlbcX/fPjO1NcTVRMhoSEvRery36eIoIWuADiPqBqBlfMQ1WzTLteNJCDYQTltyQ
	 o1Dr+HOBKsq+pKmFN6dIprVcedNs0eTRluik5aHjqYU0y/P+GuchFp30ePKBtr+SMZ
	 vEDZSdQIL9lXCD48SOm3Co7TVzovtkbf8bMaR0B/bCihGtieUPuZQ3DUdX2plLwrSQ
	 D/7cIpxtpnwiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA915C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178902363369.19199.10892543342238376085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6872e95b7c0bc659c1b4f626e0f024fdf809dec3df2c60c8a857b4e4c586574
Date: Thu, 10 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789023633
