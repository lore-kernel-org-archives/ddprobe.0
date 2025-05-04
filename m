Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E6B6DCE1
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746382195; cv=none; b=HoZ0X+Egx/Um8XTjimVDaQua4gsM6nuJddcPKxppWLmpEw+6qUMX2A0IhTxco83P/zV9RXu/HeTXGF4H2+/XgxSiueYBBd8/W//O4XPmWVs+uzd+IEUZSJCDGs6JZVYStzVIq0IreUEoEvnnm0Td4FIVW4o6Kqz9upZ42JDMaFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746382195; c=relaxed/simple;
	bh=NazI60xv8Z667B7j+8Y6fJE/WxWUbxshzk85gozr838=;
	h=To:Subject:From:Message-Id:Date; b=cH9Cwxl70HS+JrGHu5rUIZLLdCX2wnxKj0wfn/eAyRkTTBvXjZFMW5bMaxT9dNswJvfBWqoIs4TIIsfl2nDmBC0Hu9qxPaeY6PDfgk9fyDeM0ZLDtPFqF836wv+XfVVMkWaNNvKZ6+7nWFFrvGmQirNTd3hW+1e+s18KB76UuHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G/deDHcl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G/deDHcl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA3AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746382193;
	bh=NazI60xv8Z667B7j+8Y6fJE/WxWUbxshzk85gozr838=;
	h=To:Subject:From:Date:From;
	b=G/deDHcl2m0SuLqPrhyz1q0cWH6OBetS0H7zAdE0poqgEd9JdBi9++1aGUDIiUvIl
	 nTBnitIuaOi4zvTYuN7Sd/6x6latGb4XzZmb2uGYG6maiuxe02GBnBV6sZ4XQsNMC+
	 wHVtZxKuVtdGnh463gkSDUA/oF4hRzW6Sf2j1IdiPtigfXyq2VRmt0N27KUIlSoyYY
	 3OPypdWYIMBUa8yZm35mAM0GEhV+edEnaf9ze2fTYacLJJHKwMBju4jr+6ImC0qxg9
	 5fjd4RtSPOwmLKKMfTp19Ocxsfa/1cfhOjpkqrWjpGw4xz0KDyHEvowXA/JdIFso58
	 UUnpq2XpQVTUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9555EC369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638219358.8139.2747428213026363024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66c8e6b2489d60e8c039b720288ee310b925b0b79ff6e716199cc02052ee83a8
Date: Sun, 04 May 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746382193
