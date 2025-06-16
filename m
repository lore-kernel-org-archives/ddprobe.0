Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302D72E11CF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750045794; cv=none; b=bWSQNMVD7kkE6YkAc/5pBvX2UFTikCF8qFfqylNnOyxRsguOcktZmnkV1OKcB6j1fig86up4Z1YDiW0Z9h4WFag//FRdlq76sHt5Q3huNRNypVDU0iHJS8LQmQNDnYWJISQs+xJAoNnYkBerBErym3lYGtro8zZ/iQLUoCUPK0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750045794; c=relaxed/simple;
	bh=Px5WOpb3YuqumBkts69pivcy/Wi6UmPBoMYn8IKA8nU=;
	h=To:Subject:From:Message-Id:Date; b=BwjM9/pElYNk7N0RY5fwGnDhA2suRaPQhSWcQNdYjSQFe/U74HXQHEANPFd0FaUSKdBHtP0Q8vQV0SO26d52nTAkpG9LWsMdnhxZ+roLblr6ZowcQlnlsT1k/2a0Yot3pvh4Va2rHl1JUvNCsl21SDAluBzelGk16cAu9Fc0KtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2Qs2v6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2Qs2v6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C54C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750045793;
	bh=Px5WOpb3YuqumBkts69pivcy/Wi6UmPBoMYn8IKA8nU=;
	h=To:Subject:From:Date:From;
	b=g2Qs2v6cSaQ97wNDY93cr2HSTtSCEVsU1kweY4qNjPWGQ6/0KreTF8zVWjGlqyUMh
	 /FlcNtp18sNAVwuwBjZBB2+7Zy3d3WrbwORJ9+hBDU/mp5JyNytO361qZyh9bXj4ew
	 51x+pFD3bu5VxlpkY2d82pYirG5/XGlFQDBzjRwwV3Nl1n5SYlzqX401+sVE8gUhx3
	 ZSZx120T8WIUQtpSbni6/etyAFtUDqCy4PDNoLhaFPubJ/yIjWQi8Ib7GYIfiuio3x
	 QslsOVQL13cteYz+L6ss7k+PcepqbtAzy607KmYy/XHwAlr8tMngqOZxF7Kow22CUW
	 /tt6vgWaj70qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932C7C71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175004579358.8821.5509272339481760410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642eda2d2ff95e9f06b2378767ca24168720409e882e754814b0f968f51a039d
Date: Mon, 16 Jun 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750045793
