Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639CD163
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719878723; cv=none; b=RkAkBPTlbDMjAjBoUYen4Us8DAiqhkc4HQYhUFF6Ao69F0r5rnfI8Wtuiv5Wl4JvmfjUlpIotpRL4Enx9qALgKsW63wkpVSVxwbKJaj1m2+tj40SG37ItlObyA7YQkXxf40U0u4v8TOpxp1tbD6kqxOPhbHFC0oBXq8H9zXjH5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719878723; c=relaxed/simple;
	bh=F5iy0PcyrOqHphJrqtI0cRqvaheUTMb0KlqjHL3KBiw=;
	h=To:Subject:From:Message-Id:Date; b=bkDithwpirW/pR2fhA1aZ21XwiMSGNvuChQSD2kbXG82dPT/1gvXbizxMniwRMfL51uwjBBLLg6s9IgUMbuIU1mTAAjUfvBJJ55munOCRe1DW0Kisb2Qovwh8reSyHAmgO47CZ2er8i27+FbLkEvNvNjeFDp7W/YYp4bP8I6b9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpiazWG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpiazWG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E33F1C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719878722;
	bh=F5iy0PcyrOqHphJrqtI0cRqvaheUTMb0KlqjHL3KBiw=;
	h=To:Subject:From:Date:From;
	b=hpiazWG696CGAzc9zulD7xILvx9pJ1npOwjcnZi1zMhxsPMhvxFWtPh/TXIZcg6f+
	 /X8kB3AAO+W2fRtIQ81+mjX905rzO/22MR/nNHwLOO4IIj+ewd+iOtpMgwxIZB79sJ
	 6A2ficrpYr3FmAgo/p4on72Pxe7/0/REgyAoDnpfXZHB6HAPNQw3oP0yI7xXu9qXUW
	 nYGB5qKpiLod5h6IriVB5R/ZgS+kwyDKA36h9azdUPZdGG+14PnREjlEtCEN6M8fY3
	 hbtRMAqdMkhyZQy0Vf8DRm+vxTEsNAZLR2CMOhD1/hmNkP16WD/ogOhTfxO56kRLxf
	 ZaXtd229+kd5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CED6EC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 00:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171987872283.21630.13670369645728601465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ca053f6cb53cdf1c27df1dbce54c76b050c5321ee34a9aca4519b8d53b90f42
Date: Tue, 02 Jul 2024 00:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719878722
