Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAE81F3BBB
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743005394; cv=none; b=aH8sTF75eDiPuiRIZv8MwvO0TsJaRUFGwnYBuIcJV4MXB7PAqlioyT0ws76HjbhRZ3EclkOHJmDsxT6J9E7T96EHT57TwWDrfF2c5F0h3Y/9u3Ulb/9YgKfY8ddbgOxOIrknQ3hTo/wJbEKu3+xbOLCv87/ntvajUA5mZkJ1fXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743005394; c=relaxed/simple;
	bh=mMyWBwFlXSHA9r4wBjAA78XFRMLWDsKWPZ2orHFcFho=;
	h=To:Subject:From:Message-Id:Date; b=tmdArg8mZi5Oa2e1Mr4a1HNpGZLc0W075/mk4rb3KqtPFXJyjMVbA3HadO/5EZmdV4PhG1W6mOC0K77Ag4HAmEG91nqDi8Yh/JvGdqLld08avnpr4K3ewOF4O5QWOZS6zrgivDbZWPVKk89mxZRwd9/92ocw2J+oCq0oaFBp5m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAMUEkrR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAMUEkrR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9233C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743005393;
	bh=mMyWBwFlXSHA9r4wBjAA78XFRMLWDsKWPZ2orHFcFho=;
	h=To:Subject:From:Date:From;
	b=gAMUEkrRjK7qpj0CzmJTF1THpjY4POGMEUOb3UrmUbVqFZ1JPkVuIxMIsbKtujsw7
	 B1yE3W0iVO6xzFmLNkBJynK0QOn89xvm1Am+kNMByE2hNAnF0aCKTwaPwLjn63iwaJ
	 4Ai4Z9ElIYlzVi7bmJHl99tdAZlCsrct54WNH27RVjleYFhSAH0f9SyvfixPnq7N7c
	 6OWa7mcbraB1m9Nedi0oRWrUMPP4wSfoRDED4bgPl49Wj/bn/bS8cV1a+YVcHN+VRV
	 z633yyjeU636EsiPyptmpXgPRBjLmJXA5Ur5mXuPVJNo7u/FRVdxX5Do5Dmy2gu18/
	 lNQ7am7/hK/vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945FBC3600B
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174300539359.4462.15354643252465063441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45512e01a448b5514e80b4116cd23998a5b493f54b654c4167f04cf0d3cb9baa
Date: Wed, 26 Mar 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743005393
