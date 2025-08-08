Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5A67FD
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754611794; cv=none; b=nkV+is5Ccc1thCbJ0XzL5FIVXrIL8iEpYnsjPE46bYjy/3Flg8BvUVMEaHr/BIpYa7wDEtljOqvSEB1SP+898I6/MNqY6m6JUR5dptMkbKkYMwl3a14quZi8Mwx8SKoxsoF0z1l+aL2Ou8dd8ZlHMsBoJpNsIwUuxkM2SJ8MalY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754611794; c=relaxed/simple;
	bh=0WTAd41SgJIE2kbwagrML1bpCgRQr7g5UgnHee+WD8Y=;
	h=To:Subject:From:Message-Id:Date; b=IfuFSteOVbpTdDKSOUwgCsNo/EIe5c7pnVr62XoZtPDvwiR39N3yMyTe9fGnh4m9GiIXrYWp5+3i1SfMsAF0wXr9CdMNEx+fK6dFqzFtxJUxInCnqZgxsDNLxR0PMwhr1iJ049cPzO+Ouw52I/EbjsvtfzdK6DJHAWimlJwlJuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KScfPP9H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KScfPP9H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BAEC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754611793;
	bh=0WTAd41SgJIE2kbwagrML1bpCgRQr7g5UgnHee+WD8Y=;
	h=To:Subject:From:Date:From;
	b=KScfPP9H/hGdAqOWt0+JvpefOXq6lNTy+VL8R97r07G3Wt6qaT0cPsTsmWdVmzaIF
	 7qbmq42Szm4s+hIBH3kcceG34kurPaOlIiiOiEq8aCY+eqpG0iVCCKCcmnbMGSvt0W
	 vIx3RSeZfRxsj2r2Dgrpb82N2x6HbRuucWZz0PK29Ajnkcwlh4ucTagXGKJEFB3PkF
	 9S75KdEvBGNQwVpJlNYZ/3+54ZB73XIA+Hh+cezgxaLh1Dlou0kS+UUUayjrijx5QL
	 ErPUwVpdiRKAxOUMNymU6uUw3vzeTgRVv9+pncWkuiAXhTAL1ZqkQ7BP1uM46kJIgQ
	 W4WgQOv4ThZJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F233C87FCF
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175461179357.29132.1643851087594023199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eae39a5c5d108006da87da38e12c3726f0daebbc26a2133f7636c631f263afe
Date: Fri, 08 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754611793
