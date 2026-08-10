Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4732EACF9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786327834; cv=none; b=tTrdvzIzD95tSPd3AbbwhZPhHCWDoOXw56r3jL6Sfpe+CRESGRw3zFhqS/dkXpAU5c0yR4r/53N6fESaSwm5zU/Ws9a4+GAXhKR1A3Sl9xdjgMSy2mG4l+9yjbiDpKqUO5f6qwqH3n7IEsvpRs8/y/yiXHU+DlO+va1gEAho7FU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786327834; c=relaxed/simple;
	bh=Zy+mmL0J2P6EaOz4fxWU1ZPbL/vtK2v861VBfutJ0xI=;
	h=To:Subject:From:Message-Id:Date; b=SMLeQrkqXeqb+bkJ/2dY6wpW8Hp8BJk6g+Pkx5Dpa468lHHKermZk491nCPM9w7eTHbaSP9zABHt3LYsPK9ZftaxyclZgjTf9JiiZdKBa3GJPHF/mKbHmA7URAeAP1rEAghjjVOJeZJbFQlhQgeEl+Bm3zn64KhOnDJgMTz9S1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFWKIB1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFWKIB1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6BCAC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786327833;
	bh=Zy+mmL0J2P6EaOz4fxWU1ZPbL/vtK2v861VBfutJ0xI=;
	h=To:Subject:From:Date:From;
	b=bFWKIB1ncW0z75P0pyKlQF1bm+fA7vosefrA89w//oLLereAs9FpDJbPLg/P8oGnK
	 ldDgiULH3fUKoFy3y7NFT+EdgXBncHqX26qOB/x5gEUgfSRivvtxuy9qBpYIB5HnbB
	 7wjeC+kHkM5HwFJEWQa4x4RrjURUwkXTrqCEPIANtoKHK/KPT54luehFqkpLpwdTFR
	 qL3fRoIS3vcjdgKNsJ9xec5DdtT5rGZIJLWT6lYkLgQoovqakkecrWQ02j9hPRbxxb
	 hOQyoHjM2GdS5oAEbYCOnnGjrl/rHqCTRmhwwvSw2bGTlXOsfsfsxXT5hfG+0qhLi/
	 uwIokrt+fyysA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B236AC5AD5A
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632783371.16947.9666329724614878118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9d07462f70ccaadb1250fb456f20ddb6060e93fcc20f6eb2ef9276b484119a
Date: Mon, 10 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786327833
