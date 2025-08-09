Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2515835959
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754726994; cv=none; b=rWkhjP5bMFZu1Azbj5qRDrpmwoqKPdXVmbkT9TMxn/n6sO3h6xRDDsumUkS0bpVanXRsotV/p9AfF38oKr5GsGgYPsXHlzQ10qGOEyCLzaWNY7l1O3CVTRv96t4AMugpW1NAdRwniZrWFNrmK1P29+YSHml2qqzQVZG5W/3U/J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754726994; c=relaxed/simple;
	bh=D3ipjKKy4mLR1UrMOoh9VB9EzcY5WoS8eK1OEkuHcls=;
	h=To:Subject:From:Message-Id:Date; b=A8b+HJO5/l55Mkt2cVf6lNpLoByPyzpxDd7gpmUz/trAhmpgU3KzE4kg1aUrGJ5tLtHsjAmh0q1fTeAyXaysdPioZagoo76mM5K6m09PfPiHIMHBZ0krtjrLrUWq0sSIrSAPemD0GUz9GSl1iojyG//K3w+60sTmCiktitBVliE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bTGesZkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bTGesZkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E001C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754726993;
	bh=D3ipjKKy4mLR1UrMOoh9VB9EzcY5WoS8eK1OEkuHcls=;
	h=To:Subject:From:Date:From;
	b=bTGesZkh/fxpru6hPrzmxJ7l9/D0/QLGvBgznPVHuAyVFVL/3+EubxrsvbPKSVRj4
	 BNHaWK5NGcYFJpcTsPt/JTaLIFnnUaR0plg6tQljbI+aDlLQ6/MmRDLlWTcvGUehoV
	 Ms/1kCK/lM/E9qGiJ5ED+w5rfJlqXbtH0y9EQCtnG/UH8N7IPsIEe2GisxtHrmMTT5
	 t2f1VF17XPVMgsiAFcqXwULPpD2esGtZ/Q7DYwfWv92wj2m9auqPU+/nN40MNV2nRx
	 1TkHabNH3H21rv9TaWI57by+YJsTfQqRIaqhEPX8M2Ui6k83X7ryb6TNrqPLwxn9Go
	 cdmAhC3CPBPDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91634C87FCF
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175472699357.25930.7527051388808171063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d6e59edf879b0c315a14612596d206ca500a4d3e19f9bd02ae1b04db555099
Date: Sat, 09 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754726993
