Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2C745D5C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792321234; cv=none; b=OTyPIStqJOYyHTstDMpmwa2LNmv/gZA4qBzebTe+xxtLMd09nD5/aUnCRftJO9rkgOcETMk+4FxGS/2prxObu3eg400X/mRhozl/Gapv0ALb3h1Yk29+FAWJQCWzEbr3h/iIRitAF4wo2bgwxfZO1ejCenIFmwk6qpp6DYx0Pc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792321234; c=relaxed/simple;
	bh=czaEbl6tFkrpukwgcMavLd+N8ZCaubJ4cuxsURkHZmk=;
	h=To:Subject:From:Message-Id:Date; b=sTUJk99HtMsevYBqE1t7dVmchRg7dznAzs4jcV4iFUXlI3g1v5IacR3FYG4+wFBOXP1dTxMD44zdK8gTaA8nK4zLG8aoeST02JM78o9SdgBS/17APCTYMM1BKaTyGIxSq9kbYvzruvOLQxhmJeUmPRvUlUmEMY6ERqe5ydR0H4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3cAN/79; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3cAN/79"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9435C2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792321233;
	bh=czaEbl6tFkrpukwgcMavLd+N8ZCaubJ4cuxsURkHZmk=;
	h=To:Subject:From:Date:From;
	b=B3cAN/79bsRDXn4dYdLqn7uLh6AGhHAOYGQgyz2iADmG/D+Uo4uT/uTQTuHpwfXIu
	 uTKPXgTnMOeFbl8jzUsrznxaHTRew5WyS7eAm+c4BVoJXsSqHSJML1A4xU/u0uyUO1
	 7MD7+Ycw/PYMqkrlpseZ/Oev1MW594JxjCVhEyux8ifBicbf2Pj+IGSQu6Iif2KXyz
	 mDLFW5HpUvgvOPizcJhuD1MSjTGSSygXP5U3Amwz5LPcvbt1KTY9+6BRt4wegukK9r
	 sKDPD0wWAo3tCFBBVKyhsTQDwU6DYMFB/5EH0de0VAEmWyswKvtZJdIRHXIjf2R17D
	 Onzl69QIUggHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1365CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179232123369.5693.12751259867231797665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3799ef33f834c47563331ff705f0657a80c6775626cbec714c0b08a8d4db6c97
Date: Sun, 18 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792321233
