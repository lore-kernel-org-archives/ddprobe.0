Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F3B19D07A
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755888593; cv=none; b=Sk+j/OVW1B8GhhdH8QlUedMqPeaGaROvZo/mmT42xh4b8VMZzyh3Rof3DfqKM+1rNKIOk4RD7Ihk+shzgBbWBT7xzIxJE50HBzsbenbebukKfZ8pPJHAlDcSItj4O0YKWfBYHUV+0zuo9p2uuSZGB5lWeYBKh4BVJN1L6ZGFKms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755888593; c=relaxed/simple;
	bh=6wZOlfiPwpd+/zTgZkWwqPPZLRqOokLNbkgth5dRKhA=;
	h=To:Subject:From:Message-Id:Date; b=GjZWh1PkLcdisHRHDwONS44vaNeLm0+VYQIHS5twZpXAuAblR2OmCmHP3SIoBsgM9CH2Jms60ZT6wlg15jgVKIPViNHYnhuFteokZBr70eMPI4OQRLn38dGyeTRpABtpEfOYPCmrmbjHXxmwb5RDYcg7IqFOkEH16sVvCNjlLO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fId7d+Gk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fId7d+Gk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE30C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755888593;
	bh=6wZOlfiPwpd+/zTgZkWwqPPZLRqOokLNbkgth5dRKhA=;
	h=To:Subject:From:Date:From;
	b=fId7d+GkursrvhpKaYdC6v7dFKV+5Ocawj/vWmdEkw6e0/776sJpwIBnbTA+wPwZw
	 YD1SraW32AgHurvFNIIt98tcL86rKpXGSHC2cpWCIR6+ZaJDKmYIYxP1G1Gx4/is+P
	 iEpg3aJ2ogN4+zYtxpqR6vR9gO3mpY+Hr9DoPk/z29FLNI5IDMROyLs7HylBQ8fiFE
	 4K82Fn33Td9fpnZFyZoBuEkH9J9GENbeocwFp0gyBA58rXvIr4ollnMBqtsKTnmo8F
	 4l0XiSRVWVwMDXZLykLQVoSptYwzEEPgcRdFmomjvy8lMDV67CsWv5330b8uKXXG7m
	 uY+iYVGlu0cHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB56CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175588859358.23372.15026255022225245421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 264f8abfbb16d92b780a8bcfafb28f847d1530bab5c2a875da8be8bd4146c8eb
Date: Fri, 22 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755888593
