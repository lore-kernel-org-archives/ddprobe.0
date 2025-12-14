Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2910D26ED3C
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765707774; cv=none; b=J2bn3nXcgMpG1mkot7ViM7aXHz/G6VcWZq4ujkh7yqR1rYIFdiscK3ezNxfJflx1uxHO/Lgri0f3kyDlDxlxr7cojL4pVEiSQy9H7JW7E8+hw99D3dB4dE6OQcM2TI6onvobpuikSHSGdwRmVdUNLehfv2dzZh1Q60UVrovUBzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765707774; c=relaxed/simple;
	bh=68tQQu87hWbRl8TUvQn3uQbXLPf/rd3GjqNjeJIaxsM=;
	h=To:Subject:From:Message-Id:Date; b=nTgfK5bIBk+JvP9QCh72AB0KFC6/uzTkQUsTyYS3HWtztzPvCxBb+jcSpwQqSrTw0ASkSOErc+/W00WZlHspb9SdTzDFeIbEFOHFogD4/yu2eVjLDmWzquL9WOl1/n6oPwTr6YwgkHAvJEyT2phJer8AI5kYfh2DPKntVAb0Hmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eGkWkg+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eGkWkg+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCFE2C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765707773;
	bh=68tQQu87hWbRl8TUvQn3uQbXLPf/rd3GjqNjeJIaxsM=;
	h=To:Subject:From:Date:From;
	b=eGkWkg+ocwaeXvGo7SKkyV0A1Mn8ri+pXliZOnEFHPIZzloIjUn9Wm02WgCv/Klok
	 wo+cCMPZ0N2hlyF6MXVhDfx7gCpBlN7UGejgxlCQ71CW9rinaPiFsAADrNaRoehsSE
	 uV8va+bCRO5dsAf1GzafachNTluUSyr3Z/nzvqGeYYi5Vd06SEaLDpLjUoTQcbhn5w
	 /ff4IqfvApl7NpioeROGuR4TPF8TEof1jB4BPSiZqQzJf6Ucl2wSU2UJBvqAM+/fO2
	 SVKnHZyeaA/YkmmgHuYGNgxnmBh+x9StrS3tjuicXiSy3AYaM1orbeYSvYHPNrMJ0e
	 +V1RHgjTW6NvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A55FECFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570777363.2006.14911835350536616381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4082f88d3c7a19afffd5404ba647262a9272cda9439c5ad6969138342cf3b51c
Date: Sun, 14 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765707773
