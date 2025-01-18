Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7117DA6A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737193554; cv=none; b=BwcgI+JVv88vdxLPCOv/NsNItH2C01LXNGQa5sMn6z+42VqvGXH+AElbYBdxsstSyK8GGUmm1q4QXPm1nOEPVOEV+LnGmd8gMiO6k0x6c77y14MOyUU2MDbKUL2Py4l39eytQmPfmu+IBaw77hDuE+XuLBit5jxcTrD2zhEOpFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737193554; c=relaxed/simple;
	bh=03hnqdC1wVBfrzjnwNUtkr1PNBEA/xtCpAEYr+k22GQ=;
	h=To:Subject:From:Message-Id:Date; b=RlITavUWMvELHVpJuXikHdx01iHtHKIiEG6ua8VjsnDvtGw3FqHxFtVbCUpOiMWRFKzYv8Xwd6/C1ogeUpdis+rZXWkRkp24hxBnpgVIIb5gN2d2K5UsZ+xwu2kExMQVuig98ctZhT5BNcCSA7zHztbbTUZaGm4E/A86Tcos62I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ut/89bBV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ut/89bBV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A793DC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737193553;
	bh=03hnqdC1wVBfrzjnwNUtkr1PNBEA/xtCpAEYr+k22GQ=;
	h=To:Subject:From:Date:From;
	b=ut/89bBV/O2+NhyNxFGc59GkT4CJoMtSTWe8HZd73MTr4EnJJrbd671u7sf0UlqyZ
	 7GzARb1FJQtF2+uSdCS7W/N4reAc7Q+lEdRU5WTRoFAoxWzXe9HjjwF3nr53pdyGTb
	 /e68NUouIcxbVesVF1ZTSjlngqTItERG/MH+LYUAmiE+peryLMnjRleGoah23t8e59
	 YxL2Ds7x4HiQKm/SJyXQ3InM4K/mUF2sPTk5lbMkq5r8wZusNu4m3NIWVQ+fsxF79G
	 e0zZzdbw/TnCgKxjBPLNEBwXJ1SjU/vY14rL+CxhSlAAv6Smi3vbnbit3p+4PJZpux
	 Rv8LFRJ6jgWUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931CDC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173719355359.14939.12643333135056981038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5243564492933ab37277fc0bff5034006edcde90182140d1ceaf82516f51023
Date: Sat, 18 Jan 2025 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737193553
