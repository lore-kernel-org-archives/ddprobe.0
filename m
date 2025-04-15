Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DE822F11
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744676394; cv=none; b=ITv6ZmEuiPyaLhnlobG0ZmdkcgUxIXvUcS97FQfKvU6LMKaCWBu3WLJRzf4M+34TUfxs1sA9QfjObe2RtC05ALMwefUQHuGE26UnlBw9sH5pTaD1HfZGD7MFbkIfIaIVosjBw2Okw21S9qQsSYxCaoteQ8G9Dxy0xIr/+OqiKtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744676394; c=relaxed/simple;
	bh=qbTthEbX5P5XxR1fUWqu+27V0mjZwp93k9T/ZoH/PqY=;
	h=To:Subject:From:Message-Id:Date; b=Dsd/NZryF07zWmEq961tFgR7Z9qNKZD8R78cfETYHNlCil3ChrPxrBhNKfLwOrQGWECc6pDKOCsVsYHE8+wWWyOTgeIhR6dsZySuIV4tT9VR6msR0GthDNb+7tShLu47lPmpl3NRyrhQ5dhWwFq1TjtDnm8oESI8nUj0ILDx95Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmU7xCT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmU7xCT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26D3C4CEE2
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744676393;
	bh=qbTthEbX5P5XxR1fUWqu+27V0mjZwp93k9T/ZoH/PqY=;
	h=To:Subject:From:Date:From;
	b=hmU7xCT7Vf5MdrwChrken+V4gJ3D56HmBO4LV5PY55q8rO1rJ6/iquwX2JFOCoaEQ
	 0K4ct2korWRp+suLYtNws1j9mJLhOYg8ms/hIviTA6meaHtpvIZRgUrUQqDsmSDbsZ
	 +s8i57DqRxJ7JeYS4MicRSw6NJPX8ezKaQSWaO7dmJ6iyqqU4YXQKSRK1/d2q/WMCu
	 OCSkCMTZwDzl49+4u4RU2saomlcMggA00tW0JqLzZeVt/flAm/pZNTDTPhIIsxPV8w
	 Kq+EgK2oA3Ig2kDnxVqqQxxrqJB9sJ828jIn/zvi4fYZqfeJUFG1e+V1B/gVrITyaQ
	 3sMuOPRxM63kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F640C369B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174467639363.25492.13276488226287481718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff93e17a1865c97d6d5c6dab78aa75d406e71f44270b17bf03e847ae0d9830ff
Date: Tue, 15 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744676393
