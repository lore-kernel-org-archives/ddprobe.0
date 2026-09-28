Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497AC379C46
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790565634; cv=none; b=lN2Nk5J5t22VZqOLM7J2658PAMLz+Gxr6IEZOx2KdzfLpcOwwlRyPIM8DplJc3a3CD7/lbuxJ3Jfub4ckSTWvLTlRjbKG7p4qGVxkO2e9JYmeNXR8MRgM4g6gYGEvbMfoD7x8cO9ov22i4G8BkruavOmR3sNaoX3nBmKtvHlF5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790565634; c=relaxed/simple;
	bh=C0ZEgg6PrZGRYkxL3ebjDhw0vwECDIINMzL5+flaJ1I=;
	h=To:Subject:From:Message-Id:Date; b=Ls6d11iWI7/ibS64Uj17gfLy8J0VP4H8J2Egy4QKQ0I0jVUgslZopcmw3K25fXGEclA/hs18MK6s2X0S5Rc7xRB4LbcCtBFHbeEogsc1q8Mh3GKa/dz+Hv14a11HtPyoqcbSGrT+pvNeUgZQQiyJawRpCaRBGije+vaOhKDf3t8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJToA4Lo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJToA4Lo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D216CC2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790565633;
	bh=C0ZEgg6PrZGRYkxL3ebjDhw0vwECDIINMzL5+flaJ1I=;
	h=To:Subject:From:Date:From;
	b=DJToA4LovK7idoC1cXVJcJ/VJRCLpY8srReDPIcxllIJrLbJr5pyMc7uK227/Oba9
	 Zy4CrbHhvqvJmOVb3eO/+qqyd85BXM4iqWvcgSzk+oIwGuVc17sYVsFeKGTkXLKzO4
	 XRCx3qT5IikjSSh1kPTnsvhNAR3YfOA3MCQJy7Pmdn1TYtuwGGfrEtal87pP8DVX3/
	 24IKWRDc1r39/Wq+BTArJ7csPbDcgifvxEtNc29zEVqN2nt8CN+vUC0ckSmIPbOGq8
	 3+Dj/Lu2FlNsdgAWO3hP1Mr+2wUJtShNa8BH8W4vu8edcRbhZBtFrdGD4X+fQMkVLL
	 6v5sEYyh5bbgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08AFC9830E
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179056563371.27943.1703133281290035018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f91a95b45daf9485a4d2813e5ffac2719c162f38d47a243b1c393d4c8165ac1e
Date: Mon, 28 Sep 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790565633
