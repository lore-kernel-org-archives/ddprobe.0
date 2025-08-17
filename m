Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6763176F3
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755418195; cv=none; b=o4HydyEn+SBCniZW1XCKqZG4YsPz1P/yIT4FlaZIHBuXEXply6M6J5GQZNb5oprq3Kc51XoLWxUX67gsuXoz1rtpfgzu3uKBQtUz0dGZi5vPhgKQZqJhheyXbpod9QdNJ2ZcwpzC93ksPOW7sWHx98N60FjseyMhuaMZJw+bGME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755418195; c=relaxed/simple;
	bh=I/d88EW17kJxdI1jhYrO+JHFqiIDIENL/n5Uu6mgizc=;
	h=To:Subject:From:Message-Id:Date; b=m1iPKHsHKPEchyvESpEaHAE+h7ocuoUJ/OccMZrYTUuKJqycrE2CiARnPfvjgP784eReE4YP1frH8GZ9B8lMBlryDWIw1x3rkPlse1ka/ZE4ZJYByB/7aMQ0cV/OIO6pux/nxSMI5mgXn9IVPgsGGTpqkQlMOLIKWGqUcqi1XbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0Wvn3ey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0Wvn3ey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61D2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755418193;
	bh=I/d88EW17kJxdI1jhYrO+JHFqiIDIENL/n5Uu6mgizc=;
	h=To:Subject:From:Date:From;
	b=d0Wvn3eyOyr74ePTot3jH9wlB8TUUCfeErgvoNO7fJGoIx++Oz4qM58kFSygQqR6N
	 Qey6d//w9NVFPAsBoKsDGwWhD0n/Hgg3mAghiQZ8w3uem5tcsCjlpaCOoPCA6U/6/T
	 TqObXvWaXprAfKpWdqn+eBx/PGXVs6JqQ1LD3rvTAhwDsG6MOEm3p5cCr6zkMEBLg/
	 aQ2w2WMnBWDwl4Y+q0Ot0XPab/2Qg/7Zs4Ib+otq8gxIREv1JPzCrZCrfNcbsBfVH0
	 C0MaAH7kyhzqupNOY1W9QSq4VwzBSTZL1QD2FE0TJPlWmTS+jlzVky39xTajLnkOdy
	 91WyZrOmTo9+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C75CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175541819357.15323.13126452999096781120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a21e9bdc9b2a2761fb673440be6ea78bdb329f4bc3781bd858802d86ca05c2f7
Date: Sun, 17 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755418193
