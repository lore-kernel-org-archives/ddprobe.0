Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682383806DD
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788078634; cv=none; b=Fs5k2ankmt7bcAwikBGI9dS2JxtyGgyQWozu9ZPZwtELADmdju73L8qAxKVeWO+QVo5nLQQq1WnQ39REAspb2yKe9bOy2lnR4b2ylnfUh7AaTvtj9tYPLLCujJN9TlWhTpzloGqMWoD+Q7nM331kw6Dj00CE8hoVaBKPpQWi3eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788078634; c=relaxed/simple;
	bh=KuI10lL6Cg0JBXpB48I+bNCHjlf83kCcwHn324BpvMk=;
	h=To:Subject:From:Message-Id:Date; b=Mc70jiVWn3XZ6oCzoE6Vk18kpnTHeZpkeeqTXytJWDc8DpjRurFJkMfsjfpjU8Xq3IHpEKdh613EB62eZnZeBfLpZv9SiH3DYMmX3E4/wp1oePjWuRZdpgi69USE7ZI25Sh/NezFt0pjsGLG7TuIbT7fK/2PNqqJQtG4UyMfSRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kd1EpNrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kd1EpNrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D45C5C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788078633;
	bh=KuI10lL6Cg0JBXpB48I+bNCHjlf83kCcwHn324BpvMk=;
	h=To:Subject:From:Date:From;
	b=Kd1EpNrqJo+lFy2j1OqR19N2+N5nqUMiGFUmoR+T8EfgUibYydbvSos44lkR/ej/e
	 1HfvOMAxATKkcjHo5uoddhUqzbIYfbQIk+nn5gsPOyxlTdOYfayBFJZ4noALa4T4Ph
	 /sc7hF2TkP3x3cAUXdVCl3kAASfj33hgtrYJmxA+GuYPnzi4L1TB/622RgmAm8RNsA
	 +rNO4aNi63kQ5s2MMWzDoKrXDcvAkJFJESkcRC9vabKlRZM7Gxje4fwqo+AG1l70qX
	 aQJzAYy9Gf3JOVHpxs0RIV9oQ6HT/jIO9yQMEYDm9udEHyUridEq5gDzYrnBogPEvC
	 /7KONXVBo4ZvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0897C61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807863368.17035.7740990526215557842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 797def8ecce74a97c874a90ed49be01b53d750ca707624e4a0416874ae677a7f
Date: Sun, 30 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788078633
