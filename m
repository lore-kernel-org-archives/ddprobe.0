Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 050A0222584
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773967494; cv=none; b=T47XFwUoL0k1jn0VpCjajbfgmwwf18YEbCvnK6bdgPXGzJzMc1D6WHZIH+rQje1Mvr1YVXnSrHpiT7IjR9b2G9SEBRn/YwZxD+csQoJ1N6bIn4GC0gt20nfqoM5TF0VXVD2tObj9+wtduxzlU9VR99HqHh8qQ0NvMwGsxAVC/FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773967494; c=relaxed/simple;
	bh=pIDh0xyhMjxH9FTkuF+JeCzJbuhQPoBuEK5+Iy65d/s=;
	h=To:Subject:From:Message-Id:Date; b=Dmz4mcgb3qkd+4YYbOeBoqCmjtLJQLg6qmMM+2k5aFjwpmKYr4Aq0RGnkINMIMCYz5TPH6yV7+zolQPtnfymlmsaxrSYp8t/u2hNJ0FU7DcuX6qGPVO0N6sCOvbL52pHvCKXhjXa/IVXUwHg0bmnFWTS7KJyx5eiWJQfQrksTKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uNUT+zPT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uNUT+zPT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFDDC19424
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773967493;
	bh=pIDh0xyhMjxH9FTkuF+JeCzJbuhQPoBuEK5+Iy65d/s=;
	h=To:Subject:From:Date:From;
	b=uNUT+zPT3eKo5mSyUvW/8MTzmubAORvHSez1GOxK6HZHE3c4TPSbMujnCCoQjZydF
	 sgrj2WIPQV9UHVieEv6j+NRlcK030/Qu/TlpKYCcerTUw7cE2V6H6G6Fp/XD4u4ph+
	 9DzGDrZ+fl4dH/qY20seb1pEWif5FTPeSg5OUiQAvH+utvsW/N7FHFLXCYmFd7AsuZ
	 YzqLaoyAisKEtsRHlHMGKsTucPTJHKgS0C6WRTtaexPIM0DcUUMrAaXy5zWCxMJjgy
	 ctQKcKrdcvHUU+TYx1j1B+qBa/8TPb1H+u17wGKQmNBdTY8BMfbLqvsRsIQKAEL56Q
	 bcVpN7/YCl3sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE08109316C
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396749357.16184.5213443449362613984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a19b20c6c5f5680f4faeb0a7c804de18656c24e70ba77858e6bead80899c744
Date: Fri, 20 Mar 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773967493
