Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CF441BDCF
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769247834; cv=none; b=QoqRp9QD631K/wZ6BomHEUBN8ADWcay6OSvjGwDN7aanYRHDzR2HVIJAz1aRdUXrNDOn2ISPlyxJazDcBT0WJCBrScckTwHO0/ugpfce3zUcZ1h71G2mNxchHYkPSwmP4fae3Geyd5OlJv9xiopihnlEhuBigW+V91aCkF14f58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769247834; c=relaxed/simple;
	bh=5slDxbqF5QobtzgGl4gzrnkW95zGPyAyrwxEHknyAhw=;
	h=To:Subject:From:Message-Id:Date; b=fpf45H4GxASxYcCWu/zPV+mTN9boeuYRPcrRzDbP+LNQINuJVRfoDevZXCC3vFzG/M4guDjoDtBW6eU1lOl6gQMEOO0NA06vaAeX8PcDbs1jahlmWm70WUg8z6MOLwqjgdUmXP0i41CBNPbNASvd2wLmOO0c3UaekmtE5mA+LAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdKsrFQk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdKsrFQk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BABC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769247833;
	bh=5slDxbqF5QobtzgGl4gzrnkW95zGPyAyrwxEHknyAhw=;
	h=To:Subject:From:Date:From;
	b=QdKsrFQkeJh1fzHHRGIdqdA/WxMQMz+QTGYBOnlycdt+jro/Psmqupg4CFREWNgdU
	 2sWFtO3xF0HcjvOhp9why1xTRW7xbLNHjrhGZz/v/Hqqf2A1kGVa8r/s1u6cxMtleE
	 ze3YoimVD0D2nWjzn+9uTeLSHx9iaOywKLcXzIBUSSB9qLqPoh/Pox4NDBLRCMjzHR
	 Pb1ViQ9nvoZk/5n2//heagNgBQfU9oHDA115Q9ErsGz2R7+gSCavoNb6RvxVW7g+Kn
	 3PCPklRGKoa2o/2gjk/YKmD8bl8ylTBRPUb0iQ4bROHqNwqAJ31MZL3Nt84/8Jr89w
	 ygT2QO6cp+f2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D9AD715D9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176924783358.28638.3370278926252267137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d15a544f8156410cf718596245ff6bd5d913eea7b228eb068a1b8baab5b48c5
Date: Sat, 24 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769247833
