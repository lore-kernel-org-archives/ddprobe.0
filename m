Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0CA8836
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754138394; cv=none; b=fuCiFbhAUX2FzOSTQWx3HvzgG8YTm6alXcV32YE3m8/QlgtihzNP/nhglQwQG2WMBgVvrsXjMnOrfZ8bSsXhRIP7CWIDEO8PXEOndiYYWA/JdkKSt6un5nQRiUGGiiot7j9I5IUncWluK8B+2CX8yNW1nU779/TDu5ahXunsZYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754138394; c=relaxed/simple;
	bh=2D6FK7IaiYkF0UykirLvtzesfVEJ2hKFx+evS6UBA7U=;
	h=To:Subject:From:Message-Id:Date; b=fccJTTm1CEBj1PNx4cHp7WboSmLb4UxoxdNSO1PVBU14KEt88ByhqfP1jLNQwUvPNI0fR3U6xTXL1FFZ8D6OCy8bX69GiVanUElt0YjT+s1BxgIro3zYhXb4FTOspECl8l5keTYsRMiO3egy/ywvYyeTmv0xHEt5ZhToc9Vgx7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtEzNswi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtEzNswi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A6EC4CEF8
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754138393;
	bh=2D6FK7IaiYkF0UykirLvtzesfVEJ2hKFx+evS6UBA7U=;
	h=To:Subject:From:Date:From;
	b=rtEzNswiKLOLmRENN47e+OVGm0BwIret2pID4OLSXnJkX76MBISF/GHKRNVvOFJM0
	 3IKyNbz+BvvC3IU6z611LuS1ALQXn8se6QToF1S5ZkU7tHYcLtUxvMErxWP+OtXnGK
	 KdoSAtV+s/v4bbeaajWJ5RGg9XBJBZ7GQ6RUmIP45ibL6vlUs3509KBtPa20XDa1di
	 9hA9FoCbjBNiRwUG+HX4x7zdT1k9gprgF0SCumx7lIWwm0TDO3k9ggvrPG9UYkll/M
	 e4DIBGXAiWWHFyuQuaDwg0QvjHpoAZla6UNXq7wltebY+J3dFsCSPjRKNMwRViOjfR
	 lJs8s3fZtLDSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA4DC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413839358.32490.9073573001295974900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dab596684bbddfd8ed46127b021940f57141a4bd0fc2a18fc0d559b19eb7458
Date: Sat, 02 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754138393
