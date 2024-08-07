Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5441A288
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722996954; cv=none; b=lZOGWkAVWs2+fP1F1x+Z1Mwr696yJGlxImRlFeo1XAuSOzbDanXyEUC5DWGW2qsrhiXToVPmWNkh9Bj67LZrTDNVdMNKtm0YkfLaVeKE8ub/t9Qaivd1j6gGNMaQzAnHsExOuqDfDeaeRFEUxC49tIsMw0k6zF3CQmmlfC/3vMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722996954; c=relaxed/simple;
	bh=+I3mHqYKkdceXSR1SEfPrEyM+OoW5Q+tj3yezhxB5FI=;
	h=To:Subject:From:Message-Id:Date; b=Nw1KUEG7kxF2BUbhd82rjZj5t5MuHVAmYYdyr35xiDogGvzLk/ef0IiGsbz7QTJsj7glahiYigMk4UHYXnxHmafTxG/iZoTlw8mbHlZhUQIVaHsEA/wMkhuvCjlyXOP1Cvozxm5pzfzodaTw4I5T58wxM2pbAGFWY9vgkD5S9P4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RA+hVioM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RA+hVioM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFF49C4AF0C
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722996953;
	bh=+I3mHqYKkdceXSR1SEfPrEyM+OoW5Q+tj3yezhxB5FI=;
	h=To:Subject:From:Date:From;
	b=RA+hVioMby95ZG48P4hihUb5w5OV/gQXl53Qb97aX0Qa1Dv2mLUy5MTlIlKEeD0ND
	 Wt66hBLiXH+CzrxBWOQTUOQx3SxiyZDYsgumHPXhHoqXn6fxy9z9+hTygX1/UqZ9l9
	 e02QcI+h1+l97SUpgCOW37z3N6A1vyFgv63qOdfghLtKv+Q7pwIQSNukaRdNtNCi4e
	 j43wbxpP1UXhTu6iWQu6kPcmQCBBQZPmATErHw4FfFi8ZeCEmuvw3BC7569NXzAog1
	 M396O0DlbD+v1MVpvr0IfyfDlMIJQIoRX0M6myf1/hHfOsc/ORlJ6E3FWz+zf8pOzZ
	 2MXzSk9BLhBTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93949C49EA1
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172299695359.3768.5915534459629434008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7136d0f407a88f5ba0e9de2eefed58ed334227562c5260256ca9515c84fbd500
Date: Wed, 07 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722996953
