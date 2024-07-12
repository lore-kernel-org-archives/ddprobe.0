Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DD56172BD6
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720805963; cv=none; b=gP4CuosPNOKkk5q0OWt5UB2/ba/SipejygL7jY6StLKlh1Io00l8RG9vWK0UGiB4bvj2cX2NuIH4jvuFinKepxuH1SVtuqaYjs75gAhCXwcMNWTnSUPfLu51JPBB76RqtuDrUjUwn+RZAuh+WG1CDkH1BGmT3290wJV3P+4eBtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720805963; c=relaxed/simple;
	bh=R4wKugdysA8X3HpH10nuwATIOGkQIZoeMeX/4kIzVGs=;
	h=To:Subject:From:Message-Id:Date; b=F1wdtGnKwX4CTJ4jRGmV/LwZbr9YF42iTh4Rki8btyKhncEBrfGiYCZLK/OP/maDScSdh92GTLDasv4ZzGTv9AoKb4Zq3Uo2ljJjHKQV1aEDbRklZCruSCmDcWWK76E/i7EqTZ3hDVliI9yf31c4FqPWXg/6365Qe3iS5fDn+GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhN81eCJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhN81eCJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02077C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720805963;
	bh=R4wKugdysA8X3HpH10nuwATIOGkQIZoeMeX/4kIzVGs=;
	h=To:Subject:From:Date:From;
	b=mhN81eCJ8FG4ZzsZXOg8KUxAJoiHhiP5uu/jfNvhttHpWHHkt7aMB78em9mLY8apH
	 m7rqB9J1TWVTCfUDOQaBXKhviFXrXGgHKrhjVC0D9wsT7qsFrOmMh7ehHZ9J7/v8Uo
	 vEnmkRk/xg6xhdgsoxoPKWM/fAfyoFnADbAv+QsFIt90SGpD4TeCGJy/q8OxHV+1+H
	 iuk6maxJ23OXmZax/y/CZWK3iVBvd5MDJUg4RAJREDh5NIc0CzelgUCdFCxowcR7NW
	 M01kRA9w8O78c2pwXoChH+w7hViKDlgQsxkiMZk1V/iVBbkcILVG0BxZkBDoJmwerR
	 Pt+PeNrPa+vsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4180C3DA45
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 17:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172080596284.20773.13661051248415958390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd61c4d6b4d70d55f8303067f9d8e7efeff1b0144c3fffd80db1ae24809fd00d
Date: Fri, 12 Jul 2024 17:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720805962
