Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261F71F5423
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773796494; cv=none; b=ClbXc5dxxnSPsaGJzzmRnYGum3/uxlyfAekzrkIw+jQn/GD23zwBatW5rJB4abdKeHsSgrA4ACNAxUq/3z0XBY+rGDaCl76g5pgYAp2Uf3qo9xnVfJx8wSI7nyocxIP5T/mq9f4+qpEwL18IqUHCm0ZlNFpM0dwLtoN8cHO04NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773796494; c=relaxed/simple;
	bh=pQoJA5R7ZWQD1NXq/HQvwncK3+MinidFzddr2lHsMII=;
	h=To:Subject:From:Message-Id:Date; b=X2BoeCUDNe2kuDsI0jMiJpFF7loBYEoMWuRV/JM79XkoBPcvIiFYkLgkZqkYbL+KEPGKtJvmg6HYv03GIUGfnNBIr2/Blfb7Iq2mBZDlc7BXYIoeu03gUJRte+GerrdQCSngN3mdQE0KnkuZC8eYjgo9AvzBFrq8cG1mWK2hrKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHDvLm6w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHDvLm6w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DE7C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773796493;
	bh=pQoJA5R7ZWQD1NXq/HQvwncK3+MinidFzddr2lHsMII=;
	h=To:Subject:From:Date:From;
	b=VHDvLm6wyGA7i7eeBFW1LWGGElK7c5nnT64ubWblVrCu1Xpxnjb9G+T264qqp14AS
	 Up4Uo2WX36hgeoGMUNuo/Zg2HdZhLLOm14JyHUF8d+wub1Fskm6he3082AjorD0IVP
	 KxUm3I5yIpQptuMeZVFhYO79hOSAhlMgcnO9Ha5zECsItsDnm3cvYfOT7mzUFbrwME
	 hhpn1+3QCvd8ezX6IN61Y/0mH85dk3J7U+ksev5o4XP5txu9RtHEOeJl8IQ3SdrGEi
	 1zVO+KpHwspxsjzqXalvlJsgAvhau/VxZyX8X/n1TRQtZxzF6NM9PtJ0D0V8wupOM6
	 oL+RY9oV4kEQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F5FEDA09
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379649358.22109.11774606471035413554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e72e26f8301035da9e16686ab3dd1ddf6c35fa40c72e3e4e3bfbf8032711bb0
Date: Wed, 18 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773796493
