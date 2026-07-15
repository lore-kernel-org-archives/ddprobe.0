Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0762F420460
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784121515; cv=none; b=jJYGkKxs8E8lbgDvYsyvU2aHeBoWq/p4ieetj8WeX7Jjpow4CZ3iH/citRQo3dQG9SAcs2U8FSfretdE8dnDEqmAsV61BNKsKy+PjI01RTo/R9/W6Qjoo9wP/4fb/ASSVbeIpdqOXbRykDvfYarff1lp+f5SzOVWP1tYSsY1X5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784121515; c=relaxed/simple;
	bh=l5nzVzSP1t7rXufxbRUU9AOoHKsdDgkCeI8EMuG46Pw=;
	h=To:Subject:From:Message-Id:Date; b=caHPA5PutJtIh+x2WrIIVuw87aVTAYfx1SmarFV1Rz14+8eJLnWs4V6cZO4ynMzm1f3flVWPlkMaJ1CTHIkuGC6NXLvsoTMOW8N479jpTfebxaxmD7gyRus3Hyq/OXVx8fYT2jd5YPVhDCxp4EoWMAkTjtsgTfGaOoo1WL3QoHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P59H14Rn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P59H14Rn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB540C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784121513;
	bh=l5nzVzSP1t7rXufxbRUU9AOoHKsdDgkCeI8EMuG46Pw=;
	h=To:Subject:From:Date:From;
	b=P59H14RnYo0inKhY7a/vOwIIoFoxUalIenp0EpfjjuYuyPz1Bt7U5HUALOG4ilmGQ
	 9/C+38HJMSl0O64ZuF+nnLDJyQrfivbEqrcsWO1ItHWia8fhHeH0iCsXTisVRr7kcU
	 l20hToSjNjsdCSqwC6j+TerDitTZeJkn1sGS03Seu/cfXwlg4pGIP0C1WgiMSUOoQQ
	 qfnLOs6pPZ8ZdsAAEfimDbPzeSqmneDot3vyWApTnDBt+XRt4JJ+8XPDtPTt6UlLix
	 lkV6mJ54oFaYx1nF9NK451fTYP791DyJczQBtppSiQnVwRv1aLaNO5pLIHaPUkF1vz
	 jc3pbBZqdCxvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A97F7C44508
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 13:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412151368.30944.13754149720673775329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec271e67390c635368fb3612a9bade574be6966191da7a7aada254aab278c54
Date: Wed, 15 Jul 2026 13:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784121513
