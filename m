Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F50224F3
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761961794; cv=none; b=Z0DWpUhLLsVzhvMz3/ziwRKwhRVOXQD1MmyGu5cmv/1ZfHaBHrFtmC9kMzhC/L9TNMoF1xPZf3BLyJBSWlR/3xdtI+7pmEyFJsd5I4ZwQ0yaImNLCXRb8Ix32aaIe1/GfEU7vaDRfcIkob22a4P0Gf5e4ty2WBfgm6YMe3e5dC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761961794; c=relaxed/simple;
	bh=fCYTEd5R2ycIHZJyD7K7GCUTdf5E+ye9kJnT+Bvc6jE=;
	h=To:Subject:From:Message-Id:Date; b=StmuXO98RkJdstncNGFiMfMvD9li6AIvzK9QtMHqqofcHWFW7rx97GFhg7i9j5TjxjAgqwLDmm+B9NyKbPcBcdNupq8hx4SDLaWZ1/URIJvUDYScbgJLiTNQNXXE1jrnpfnBCNlfK6EwRmxeb8gSybidS7BH372juVpZVvoWgW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqKUclK2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqKUclK2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91D7C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761961793;
	bh=fCYTEd5R2ycIHZJyD7K7GCUTdf5E+ye9kJnT+Bvc6jE=;
	h=To:Subject:From:Date:From;
	b=cqKUclK2kz1bpL7anc15jlFreilw+nIFI0+xcuok5XNdXhgmeqHSDmAmv280pdVwv
	 JA2W7HV+gVpEopU6NK2DZ37WbZIeeK+qN60PnvARNSCDNRFhO7DnfkBPVmG+Dggx4n
	 CW82ouaozW79H7gleu7HfdiPXQahxy3T8CaWUr0qWUNLIFc7X8lK5M+F50FwOMFwkD
	 53tSH0E7q6+zKXdBJ3SbbCCYecbGFKE5scmb62HCmgpTaSxFtHS3nWKldP7WfPujJJ
	 cWTWHDuIrPg2dMJo+4x6cJKfZcX4Yqd+er+mjfUzDF+LyKSilQy8muSWd9sPpL0RWg
	 wDeGeb1DjuViw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E81CCF9FE
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176196179359.5183.15882384587446738907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c7d527308a5e9dd8723d835a3bbb9bbcdcd1032a978042881c825417cfdbb5
Date: Sat, 01 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761961793
