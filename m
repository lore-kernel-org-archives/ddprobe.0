Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51E8A64
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783878514; cv=none; b=YscW5Z+ec31yt3coidM3D2uEv/V0BLZtnFLoNzn+Fb9Xo1DgooQotbiPgnurXGtvzIqxbNAnWxVyYkqMy+1XfGFwaiUBbQnjMcgt7RyyYUJ9G23p+5rEZ9QiOZVrZMGMph2/g0euBLuh9AKwgbHHdcxyJ3r886JvOKAbUIYOf3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783878514; c=relaxed/simple;
	bh=WNqw4TYCHHUnwQMZseZ16nstrpPpFCowNkEKPCXx0Jw=;
	h=To:Subject:From:Message-Id:Date; b=YyVQ2kw7MeJnbb97yn0Nlw+PYfS2UTmfZCyK8QDw+GLZVIt5w1IU6v7QTl+1iSr/dUIl0HSpLPrvEXkGwyffQKLvXv2L3TuoFBBxhHXntB2ibE1vnNxTKO59gkD84F9OJTXLer1I43RiarEahrlvTLfgo7DsgZrvDWamgKaNkgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyHHWINU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyHHWINU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E79C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783878513;
	bh=WNqw4TYCHHUnwQMZseZ16nstrpPpFCowNkEKPCXx0Jw=;
	h=To:Subject:From:Date:From;
	b=kyHHWINUuEpV2Y6Lvdra8Cv3Lvg2e+bEHtUgT33qRHHQYNgP3mlNCDLodpvbxxV0p
	 r5GYEsMo0h2FBs2GcAqcjBaDf+d+HZtVBGsTcoTB0Yex5K6MnozRXrBb0abpUvwAwA
	 zcd5nuIRvB3Lspy55ZRU0hCNHncBuy+ygwVpH9aFMOJQaNfC7Mp+U5QSY5uAcDN1kk
	 zi4chNxrMkl8yzg0q8VNq/rGvJ3equ4KU2OlODw8qCY/hTAsgnhs0Ru/Eqe5F13dws
	 rt3RlFU2cwkb1YMWZufrssgsurATTFc/30gHHandd81tjXWvC+2bhbwA3l1Y+6Bw9m
	 Iov7NZq0ddqmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5A4C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178387851368.13803.7391485045217710450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8763521ee1d9a1341d3213ea803fdf1b02c611a4f15881501393a027e55f02a9
Date: Sun, 12 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783878513
