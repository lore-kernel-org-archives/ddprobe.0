Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D32A1EB56
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729440954; cv=none; b=pC75GZLdplaUYMpDB54/kecQtR3hW6vO4cYS4JNMpH3RA8SCbPzl4ESgbHf5vt3ZAq3lOLqX5w8A/2/5Nn/BIm3X49o8508jDCtsHAGrXjZ+EKLplDbNUBi3TuAaTnQBI6XgxJ5ubZGvElCWeWb/OJAFyS2+3vbjBHqMAEXb+tU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729440954; c=relaxed/simple;
	bh=sK/VT388uD0Ul4OW8ObNxDPmOaNs/kjBwt02A/FMo50=;
	h=To:Subject:From:Message-Id:Date; b=FV6BIaBkpT7sf+nh7QffENAOGqnXCfAZ9aGiAWO9fBlsHwhcxjRP5QkO9ChiBEeVHCOH7FQ2La/aT0P7LbKiXZWdHcKEas7/Se117/caMw86/mUNUuuk79YUMWAhdw+YbROEzHMjsm8VgHMXhkI2dIQ6wQKR9kRdnXE52g3Nlzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLZ130iI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLZ130iI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A56C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729440953;
	bh=sK/VT388uD0Ul4OW8ObNxDPmOaNs/kjBwt02A/FMo50=;
	h=To:Subject:From:Date:From;
	b=aLZ130iIdc21r91crGN+18axWG31512DEzNSZaCu76HOalsOJNJqEWXXiRAa2cKIt
	 FRW3k5KD3Me9uj2SxdPmFfm6jNxRjuDspAzA+MEx2ciizII8q00WReGPRNMqqBZ7qs
	 sT213S70JWCIsaU+axmT4rGFurARVcwFvdXr3TcrVQLeCTPn0MukSUkDbVjHET253E
	 7Jjj9fGkAEmnZOsgl0ajWCKC8EZHuca9YvIvO0JnXYGWBFsjXjp4JdVzTdTvCmY0dy
	 7/wvWAs9TP9/pEQZPhDgyHID+rLzU7eC4/ymAKwm6Jr++qC0m4XAc+dlp+DLMbMDEs
	 kkxSo8QPodtrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936E0D3C92D
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172944095359.26683.9317245795815902931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea91a448567c314e42bd9a20cfaa649902bed0c34c7cffbbb9c5e25c09812494
Date: Sun, 20 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729440953
