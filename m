Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3516D15689A
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721820354; cv=none; b=iP1xMO0ujzCtC+AviWsKhqcRAdrEzFheNqonldETx0BLooq4LTWQFuIXLrrZPSILEXrkfJq/dQbpUJbT7dnX3IFdjrxD2BJdp3YhzOsHnn61o6pdSesJ7fdBl1QXtG6RE9x865U1+7Jb6DrIOA32UAE32/IPCDMP4rlhvYwf6cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721820354; c=relaxed/simple;
	bh=oejgCNGTLjIc2wh7QbUjyX5IhEURQEs1UCh5qtba6RM=;
	h=To:Subject:From:Message-Id:Date; b=jE+faYXrz/taNALwzo9/ZJvayscHmC7xfgEuGzSFD7T6I8k/UA77Ov4u70ObHXqMHBbmoXEtdkH8Ko7bZzWM0LglQjy7uTF/4GgdNzPRb9Z5BdA60Ru6siwnwZKKlMaGktlel4vldVDRlN7lAkKVEcOeTq7WSWS+2Tg7YaAyec4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fn7zfaRk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fn7zfaRk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4823C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721820353;
	bh=oejgCNGTLjIc2wh7QbUjyX5IhEURQEs1UCh5qtba6RM=;
	h=To:Subject:From:Date:From;
	b=fn7zfaRkGNkDd1xfr3MwdiP/7kr2e2hcpDoHEy4B+k9tUMsQpEbwxzhIS+6U2FQxr
	 NlrWMiRtb5UzqKIxS+2baQ0eRetw9tOdXdAPkTXRF4n+CBFVo1U5tVdWs8p3OjT3UF
	 2Z5u1nYP8IJG4C6dTCrz2ce7gDMk18OUTQJpcWK67s17fD6fOvUpqIsIm6dI4N5t9b
	 15Pf+JBz8infByR2lAjx8jYoJ54LJkp+VdEVqdqKvADSMikfPui3sfjyhxl86D+JR9
	 z6Ugmy2lnhlX0h6fy2BWnBb7SVV/3tab1RriCQQrIlq/PFm98QCpVPuYrACGItk2XJ
	 LrPiuNrrx75uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9333BC3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172182035359.7936.10719081238640764776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 830d9eff4cb4a17d1c7f0133c48f72588bfc5ab5205744a5c3935552ef509e6e
Date: Wed, 24 Jul 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721820353
