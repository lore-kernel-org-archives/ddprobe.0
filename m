Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D549155C88
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760012394; cv=none; b=ZdBYiP6LCNxZ/vQ1qtkGxyb8CNlF1CkuobTq1mb+h77wFzoTE3L1Sky7Ci9pcP6RHqdNFPZ6ssjTY8+Z4KScepc45qD43quk0XvOs5twm4NIZE92QStiJrD5jS/5YU4wdaf5Iub4cfs3G54I/U3/NpiSK9N+lqVtNJTSfRrk3Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760012394; c=relaxed/simple;
	bh=NSLmS/UWFdodxYj+J7kUaca9MInvS4eGB2KcQCYCPNo=;
	h=To:Subject:From:Message-Id:Date; b=umuwu5R7Oajf0mzKUZNvDqn6065z+wfRykI7zAR2v2UYG0E0s/RP8H34PjxDKkx9QLAKg29bMT+i6r1kkc1MI6rKAolpYtkYBbsqtboYVEzUtviYBaRdleuOeazjPcpp5wTXhaDprTMf2dTi5T75JmWSe+eXaD7YPBB+TGTK0xw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uyqUKe3H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uyqUKe3H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B22ACC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760012393;
	bh=NSLmS/UWFdodxYj+J7kUaca9MInvS4eGB2KcQCYCPNo=;
	h=To:Subject:From:Date:From;
	b=uyqUKe3Hf1eTygGODrN0GG4DbmB/MGkiV8pkwh5khHyCISGUwnP/DeZMu4qhsOpEf
	 zQxDv4rkmK6HS02xoZP6hadtJviGYy6Q+c50Z6pYI4jT0SBmNwIzXl8KmTgUfkWVdQ
	 69wzjgFPD2POmuTVa6dEtMHWgdKn/c1d8l2wp/b8B/fgQ/Ak0xsLgsJZEwp+WwIykn
	 7hZupHydLBnIRTSaTAgPQQucR5cWMUtCzl6PcO7JjCMMw2xcX9LBYd9ksz8g3+GF6I
	 gm/k0N8T0wtqn3s0reaBiVR4zOxYTcrD+67DHTSpJMzzAGZ6tYIS/np5T1euVwkqy2
	 S0AhZWSl0YkBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990D2CCD185
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176001239361.11847.8580795731390151397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f31046db4c29f6dd1f99e24ce014b532163d88ec7cf2a14b4d3c6bd0201343f
Date: Thu, 09 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760012393
