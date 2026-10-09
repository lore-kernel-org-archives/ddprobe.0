Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80ED94D9F9A
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791549634; cv=none; b=qqon0BF7LkbQhugmNLD1IcX76JKx4zZQRprQeGHQ8a1fdjXmT43UP8snmBi/ggwTMCBpnZPp10eTRP8/cO0e+0omTnZJ7EPjqTb7g9UiiLv0OzO2p6Cp3g9gU7iubMiQnRXC0ogC8tZriOXOcUe94/cz9yzgV4SztqbZZD/Xs3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791549634; c=relaxed/simple;
	bh=ib5aQnpErmKtYAL3utYr68HgTl/2htZVcoe9dJ78zBw=;
	h=To:Subject:From:Message-Id:Date; b=johGcpPnh8OfvPj7NCl1GLHyjEWkWI7fYGZ5Q3lrh42Se/GEyECiB5oaDOrRAJWRxF/Hmy7rX5cSZ4eyV7NVue21RmaOdbjtgOhaYPLtWQtWkD+S/O1hSFU1JunneRjTJSL9bFpXWAkiVDTa2Q5Zt9iAKNguqKvfziUmRWAi+kU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MN9EJsMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MN9EJsMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82DEC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791549633;
	bh=ib5aQnpErmKtYAL3utYr68HgTl/2htZVcoe9dJ78zBw=;
	h=To:Subject:From:Date:From;
	b=MN9EJsMV94YXciDPl8XP+skAjgEdiLRgZUIUnr+aBnAlFNNWwxTI8znYmg02VoTZ2
	 dGZhm/zFyrPZTGd2ugzQnRiE4IOcmWzDnjms0jv4yQtrVtZ39TIydig9Nevq7FIunq
	 +PPjovnH0NPp3aEuKlLNrxtxr+tUUae1zteUW3j0yWkVJ9GlcLk5gZhMb3yALEbln+
	 hANCjSlqbvyHWijoi59pBy/3A6tYjekxVh1DMCgblkMZTKwn3zHe3jhRVvl8kNssIi
	 YxICliZaAPNS7YR7DB83UDbuaAZld/Vcl9lRVot29yd/PTSaddVl/FTAvUt7izU813
	 2adxokQGQkSXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4483CA6019
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179154963372.9372.2797867034385255566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4802b84b09d22274c48c1afb709c8a9efaabe11d70034a8c31811f317803cb86
Date: Fri, 09 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791549633
