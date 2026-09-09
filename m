Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE2E54280D
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788956434; cv=none; b=PMun4S4PPnO5WkX9z/2bFOFSLGlw/ELjfPKkztxF8n3k+KoHhi9SmuB4xkv8BKPDb0n9DJS/U6zoyDeympenyVFkRqaeqqPXA4bFPkXDqrVTXXcL4Oozn388YSorCLEbqCeHbo9L1Ip3vx1SMADDPiYw1Bhqt3fp1D18OFz5ifU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788956434; c=relaxed/simple;
	bh=Vw/UbH+rCYcKsc67r4uJ1j3xQusTjkNmC37ObcVXx5I=;
	h=To:Subject:From:Message-Id:Date; b=mORzK9XZp3e5JwFAcBjX3LWxRFkO2DsYjbgvOtJxx0o9SHkHIg37NZ1eH2K7/0kHoIlbaMONJ94PMv4JoLPBkZtFUdR+UgsI0Nt2i5mTK76330BNHxg5va1EQfuJRwoAcKTaagbCWSFhYocas4GPAfNa6KPfsWST5cJ+/N/EEW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6JYNCoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6JYNCoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD6D5C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788956433;
	bh=Vw/UbH+rCYcKsc67r4uJ1j3xQusTjkNmC37ObcVXx5I=;
	h=To:Subject:From:Date:From;
	b=L6JYNCoIOM52bqXcFOBHaC5C6hVTk41rQGbVqy9q61IgvNZrnH+KNulyYAA+o3a5Y
	 pGV1VSdUdyi7Klt2XI6phyrSleOlusDv6+QQ4E0TMvvmvPJR2roJ7VkccrEwSS2E8W
	 12Tg1t5dWuQpbkEQQ1A8yilavZ+p9zJ/G4HpL0PgIEpFSzj9oyEpJQVQm5I4WlYiC/
	 emqTGrnSyidVjiYaV3TyxJf803A0WxfhwRsmkDDvduYCZdoNcnmo6FzYloD7VFeBij
	 1yMqWpsiIsuQF0WQr59MFl63d0YbwsLu85KWyUZ3/pctf50OPFWQ6MOqkO4AzLQLbZ
	 VEtbTisKT1lUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9CBC79FB6
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178895643369.3055.7886689103185978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d6b736c11cc33be11eff171838b0f399381fd4c7698d195f0acb973c5e2988d
Date: Wed, 09 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788956433
