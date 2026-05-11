Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2A337D136
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778532034; cv=none; b=L/7Wu9lthxMBhdSIQgUCavGt4jIBSHg3N+TVlKfvVYQFsPj1J6pXHsjgLcnQU/WlPjnS1ftSZl0wb0SClcLuSe4awwN9AWRPGqO6rpaKEP8lhraA/2jqIVl7eeahGPY33GYYsDRYoFpAC+g90xG6ScPjLWcaKzi91PNjYi40OZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778532034; c=relaxed/simple;
	bh=/m9MTRKjD21bBIu2DD8DO1V1UAv/7F+7akBinrLN6qc=;
	h=To:Subject:From:Message-Id:Date; b=DRAzKbyfzf9SdkK9Fzoct487NnHWK9ikoqOww6G5CkmxxVL7DTrl47psGa7zu97lDrKDpYxRT3RTNHpCQAer6CxuIxdsR0Qu7VaShsSwlCmGqUxGCnmh50v29Q7IlLQeHqHj5vyfp+qRAuK521S42zBW8leR9a8Speyv3T93/X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JDVRuLnC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JDVRuLnC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24D3C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778532033;
	bh=/m9MTRKjD21bBIu2DD8DO1V1UAv/7F+7akBinrLN6qc=;
	h=To:Subject:From:Date:From;
	b=JDVRuLnCXSJoNO0Oj4euTNPAw5Yz7fX9fK6exACM9Ab2sYC9JPy1HAYJHBAx6DBI3
	 qYnQ0CZUw1ncAidPBS6Du9L7vp1KdvuBFSvoqlnJrcPYBVJ0BRz4B0+773M7I7O/s4
	 SHQCFIRnoWrcxSokfY2PKvIM3Gw4zrcCWKYO+4nNrorbQ8q4P6pGMvz/3bccQmzzyB
	 O1U03WwBBEe8DQNvZM1i0cNXRE2Bk8YrJ7p1lIyXkoUwUM4AoKcqTnbsKm71OhVXNi
	 BOIqoSdHSF2ZSWHD14IZYrAnESiZHGEAW2xuYt/Mnhj27G/JGKIOhBK/IQj+Hox7Ya
	 leEWPGFV3fh/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6E2CD37BE
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853203368.19782.3308070270201082371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a79819493b5c5b79cfb4c56822a8f1559530b69bd727f409838c15d9583c81f
Date: Mon, 11 May 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778532033
