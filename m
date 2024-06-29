Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E099132101
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719677663; cv=none; b=OqTFps3knz551oHS2yPEF+RkOqm5P+ZnruksWZXuUsQZ7UEIvhpquU2/AzVXaVYWcWdUq5W7E4wyYk8VGbIw513I5RfU+MyEB7d1xp2VGP/n6vBsY+CrQ6JpeTIA16DHAydBAdmLoc2t89PW95Se5v49yuiai/EhoFu922F8P0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719677663; c=relaxed/simple;
	bh=R+V+uB02EC+m/NZbTFxLYEa99MfrZGplzbNt3pKke7Y=;
	h=To:Subject:From:Message-Id:Date; b=IZJgzYQUXCmwi+8Mw4xBxfZVD0CRub3Scl5WRWmNkJeEuSgLToBGTzINwkUKcCIpfFeMCS/jsPkGr+sviaEy8gnzzxLyYtvAqNjig5MCQ0eRcbV5lwlSw4ium4+8dv+ryKKX3njtjSD2xE9/5AsNahAvUzegbHvTXkOYn5oGRxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiQFEGzH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiQFEGzH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01D86C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719677663;
	bh=R+V+uB02EC+m/NZbTFxLYEa99MfrZGplzbNt3pKke7Y=;
	h=To:Subject:From:Date:From;
	b=aiQFEGzHOiPZ+zi1FirlbLKbYU+LAW1n2dLqo3A+NkJUA0KM8CnXZdVrzmzlXl5P9
	 0j1Af9+WVftWhQQAQG/TIUmq6f2g4n+1OFhLoZrhXQQMe8mgc51jeaj+KA73YjKtlu
	 dCR+X9V2aGkfzev2r313HnZzPW9gJ06s0XajImxJYqXVAjGJ+5EXxZVyLTsXJ5TwOo
	 ZzhHBvAmCmlDi4pAAU/Br/Rxh/Cp+eCylis4JGvnAineS0bXs60SeOMGbSoPg5/0Wj
	 jYoaJwp3Xmz4YWOnpiKe33bNG9gi8+gMXz3BNRAfSr3c5Nxu4Lc60befbDiqnYfnhh
	 R4FUb8iY/Hgxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1F1BC27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 16:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967766286.25018.8955072510537258714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78c97e4ab4d089399e04809986593ab164b0e6748ec3f947a926f69a5761e841
Date: Sat, 29 Jun 2024 16:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719677662
