Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 388002C3271
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748939994; cv=none; b=Avlnl4WUievMntp40aQu4NOibl22WwsKeDl1cWwIb+FWRj11Yrc0srye0Qxuwyd9yu0Qy3JbmkfmGzyqCtXGbNjLjZsrmNU4F4f2wLGL9dWanrcmWzGzifmcdySL02K0+bzPrAL+/czd2yL+Sno94It+dEVySzK3oe7vIKdgZVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748939994; c=relaxed/simple;
	bh=REt8sMf8hpliCPC+l1K2qvW2scdbez9ovbQ14VyMQ/E=;
	h=To:Subject:From:Message-Id:Date; b=S+6ILB88w/chxHIjG0rBMiKguoEfdyeYAcVx9PTg1GJIou1HQ/+Io5XxayhGsQjLo+j/MyfAmo874oUCM0RoWaL5aDhrVyNm74h31rRsJEmvK7lMswssLVJ2BJnACaezb9CH8cLTMxwXFqGDzV3B0vfeTPIGuU0LxGIl0t2IpCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQmbqA9o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQmbqA9o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5614C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748939993;
	bh=REt8sMf8hpliCPC+l1K2qvW2scdbez9ovbQ14VyMQ/E=;
	h=To:Subject:From:Date:From;
	b=aQmbqA9oEeIDivWh798BpkivzOuyCEhGi42B0sMQ5Dd90QesFk7nvRuboP7BZYU3F
	 xruWsTc3pWGT5DXbNvZl+msr1xZafu31pv1EwSfKe7pNjqbIvSydEqKRj4AOfqRGgS
	 lltDy5uxqBv94LLfBtbI3WmB73rYbzbj2BGh1UBbrUq+5UO2ES60KQjyW/cwZ13U9j
	 iJDSIRPfsa0MmjAJ4A0rrb4Qu7AJNMFuTHaMhE6Y9wQ65Rm/+OmjGrGFKvZbxu8dbp
	 +WkCRTdr3zUIufX4ZelVJeQix4PIXDViroU3EyNJRSVm0vaVxDpZe93zZ8B1K9d8Tf
	 +yRJHWxp+h+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB67C5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174893999357.27448.4653721642470363541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66922380e61b3676913d7c79134777f18c81736ca6e625da3abdc4d13913c353
Date: Tue, 03 Jun 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748939993
