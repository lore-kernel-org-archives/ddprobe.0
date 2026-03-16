Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E34C3B2BA
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773624294; cv=none; b=QMvAaarhD9g0BsK9qv9V5Z11hZRZcegJBkUF7EMUIuoSiuE71a73UENHOJfohWzjxWOs64CU7PRHdyW8cHrRLrqXUSIckzvxSJEdjOcev5P5gApdZ8zSPct5RtGzsWvO8BIFQ9EehDRHBVJFb1hQw76i7w/Q/wU8qLuo0S0Uhg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773624294; c=relaxed/simple;
	bh=jeLpbPSZcvs/9H9X33D5+nbHUgEUJciswOPK3bl1eig=;
	h=To:Subject:From:Message-Id:Date; b=EoKlmotwdGW9MDxO+glPwqU12FCQqmw7/Opeup43NGkXxLu7pr1sFMgz901maGp7ww/5dxDxXEVXOao6YEJF/wNLDKIRXOjfRRUjkLV57y3Z33cHLLa2a63juzqlGC/WJ2O+74mElTk5NKLn9z6Auospb+FwNDP6qWEWqAjl7rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEN2IUII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEN2IUII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B241AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773624293;
	bh=jeLpbPSZcvs/9H9X33D5+nbHUgEUJciswOPK3bl1eig=;
	h=To:Subject:From:Date:From;
	b=iEN2IUII7FuCLcgt1hOci5KgZWnedp+tpcFWP2Z0Mv/yD2xpn/Fh1gS2Z5QhtDhzt
	 Ttht8SK1T7/RxzqllTtWXlXAQySMvK2h4QLYhx5BHPX10eYqsO32Jyl208eYIyZ29L
	 Eh10bzqYuo8TgEgEWbHZlPQ7tctMavMU4b7WU3zruwC+ZW7wQDBPVqhxJowCRBwbsb
	 KWOgV0WDquUyhZjpuvaeuQelDONM3/9QYx0jLnkumjLX7pyg1jPiLTUGakDtwOkl8p
	 OwVLXmzMa/FPl5fFysdhtxe/Zso6JA4JzxzWWAZobjd2EYMAw3gJHleMnYIHHS5oNh
	 HVdS3yBLreyhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA7DF30297
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177362429362.25520.14944519376197182676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44637a2efbb0fa2c614afdf4a6c5ce5e4078f2bee503cc17c5967436c3c2a88e
Date: Mon, 16 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773624293
