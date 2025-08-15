Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C492BAF9
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755220794; cv=none; b=G5GnzR3AfPnJex9wzal1oI/nwuyXr1i/3FVTAoFMUZrXnwWmJ2CX8SwAAW8vrISOuiQl7wSCyPwa2C4h8Gu4LSsDxUIKmRTBr956w5rGz4srs4rUE/JPxisrPBfubgiZfO+4Q0DEL9vKuKFb81ONW5vyLVkE7RPxcRnP2V4UF+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755220794; c=relaxed/simple;
	bh=2H0+oacj3d5zvY2gebnDaPM7sj5lDegc9/t/AnzCfpg=;
	h=To:Subject:From:Message-Id:Date; b=mV85W55JseevWN0Saq4vN7gb1RM19Fym0oqBzfqQ4AP29gsC1ADnE5BdS8CpyD9gbD4Eon27X6Bsq1CUKmiZnbsVHuERKMDj1SDfPHaKlXTTzVHkD2EtXq3tqRkCjofnU62/IjOyRSc+b4WG/KkEAK1FI5QKgPDCxXhqr05IxjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MziDEDQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MziDEDQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F26CC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755220793;
	bh=2H0+oacj3d5zvY2gebnDaPM7sj5lDegc9/t/AnzCfpg=;
	h=To:Subject:From:Date:From;
	b=MziDEDQSYCxBWbYFGWIwjyvtGkIyDmyxxkhxu1jwGUnz0t0SeY0+2cMQQoOVFij+c
	 rhIGbz5QPOVbrmql3SgLn0I3RTiZ6ttLNu7n/HV2+yN5YVO5VrvivmMxZxzzcRAxDT
	 pdkeGZYxX2TrXtAOg5Y8eCw+PIYOmdry5DmO3Hzl9xgCexhc32ZU9FuMKoUapS07BO
	 c89DRTVWBrWTVUiUHTKjRXX0Oq775Nde+dFMMeKdBeU1iw/NRU3NznS82/KXRYQEXz
	 C6Iedz/EoYGmToM/4qmO7Mu4/7l0lwxC6LY8IwuyXxp+ulht8eYk6XL3RbClNyANVK
	 CYBamYkl+rF4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90345CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522079358.14312.4598676074246552278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a15e1b0a961e8108f1f848c3a84a843455b80ee200177ff93a3f6288bbc3706d
Date: Fri, 15 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755220793
