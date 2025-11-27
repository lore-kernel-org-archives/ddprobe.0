Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3186B225397
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764204174; cv=none; b=O/Lbc+lbEUAWNfMjG6sDMRk2nRzzijmnk4LHQtVfQIkTuMF+5AEdkDeglrx66wbawaQPSTeM1L4oHJEsS1LnANn1PBjDtCoGDQ1iPNiIZfcjA36SzpTJnuJYmkL10bu4wchjVw4Els5MVI54e/KBX1KgeO3NGA84CUQoKlSJYt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764204174; c=relaxed/simple;
	bh=8dRzU472dziijZnDVvuBXiC5DMMwdnFJQtIiAEXzu/E=;
	h=To:Subject:From:Message-Id:Date; b=Gih5FOxhPzBb+XiHjtkgx0ywzbY6bDfmVpvMwSOdNrx7U2wMQGkCqoy+Zp1oXUW2QPXmG0bB5BPPU0D6T55K2TkuRbFMHYSp00an7PqVg5TFEN4uB7cMuX5mRpkedrzwMj9qCDQroI9EezEIITohUAxsR8dO7mRSZ1ztD44XQkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c60N4f5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c60N4f5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8C4EC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764204173;
	bh=8dRzU472dziijZnDVvuBXiC5DMMwdnFJQtIiAEXzu/E=;
	h=To:Subject:From:Date:From;
	b=c60N4f5mAgaBE0AYwEVLaoVqVVsZnhhzFWaHcJdRpFeZTzkV0R80z5GSgZPEsgrok
	 bJgw9qCKf57dS+uwTDNqROCnUJyK+8jOB+t0wTA3eXxTlTH089lC6wJewQI6fW6+eA
	 VIZ8HA/jjiatwEWz1lnqPXp3rxTCM/LbxkIT9KD9pTR53wkQujZCI7vLGX435799WK
	 DjkiSuk1C7YrEkrfIVf+kDzJAevDIlVyjzC0G/iquhFWYidycJWdxKq+m+KcncERnF
	 nrGnJS1lmwbDoD2HBo6KjJeTNT3Mdf3cEGv8RcqFiiZlJ71nK1YEeI10h4uX3fSU51
	 S3CHLPnYYoNMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92222D116E3
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420417358.30839.8093263514419047390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e80d2e1b711776318a994320462855f7e2b6e1f0450404665430c7d341253d7
Date: Thu, 27 Nov 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764204173
