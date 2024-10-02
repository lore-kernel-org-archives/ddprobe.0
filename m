Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60503621
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727828754; cv=none; b=C1D2huFMT61aptP/VU5ZTZcmI5lVThTCiNBf61f238uToIMuXVyTPVNSBiJDLlc2qWaLpRi5a1HnhMjRCYd3YLbMJRUsy+MkUB401aXxNJOo0OTrhfmimy5aqqK14zj+4eXG/AQmERqcmSuyoSTTNkNES6cfENk+erFR+yxt414=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727828754; c=relaxed/simple;
	bh=xuUS75RKtmb6/AT4WiBUGfUgXl+cPxZZuNV+ROoE0TM=;
	h=To:Subject:From:Message-Id:Date; b=EVrqf6TYPfgvYvEYkoyAl78ZTmrbmvRDcbc9gfqCyK7NJ3a8ChnL3fCVXk4WlnfJojdouH5UTw0ozA8Db3rNnsvWOPHRH/mrGjuHwgRyugz6eMj35qRzrNfGLMf9ZsaLxF5sxpUImrayy7Mj5SzYoWOIj0K4dQFnsFNnq4SmF7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+ORGJaJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+ORGJaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA255C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727828753;
	bh=xuUS75RKtmb6/AT4WiBUGfUgXl+cPxZZuNV+ROoE0TM=;
	h=To:Subject:From:Date:From;
	b=G+ORGJaJBz+Oa6CSUSdghV3yH4MhcRkOZBiSd5Dvn8FnP7dryjb/zeyWuTCWndhtx
	 YZkUj/TY9gNK6RR/IoFWuBXe9xI5Ys54hbyX+Nr9U55uk4Op8969ij6/f10Z75mrub
	 S/QPIJhq3Zuk51MMgSlzN0Bv8jcpkwMVN1+ZVxj04h4ybZsVCsZUaL/hGX6GiSyNPq
	 5Za2Tu/lPrV5r9RJHhHcTb8R8ICECO131EVBglzV66k/aY2j1D8dh+ZxPuxy2VqIx0
	 eB1ItzNwuOz0hOCKUopP1Gtapp2Jd4YnDuwkk1FsFGo3vmhZo5gyKVF1Cbf+BXzVmp
	 kM2d1LUdcEApg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B631BCF318A
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172782875373.6542.12482395884704731602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c286edcb542f32de97229af4dae457baf14a6e129853fc49e8c4e1fb2a0c619
Date: Wed, 02 Oct 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727828753
