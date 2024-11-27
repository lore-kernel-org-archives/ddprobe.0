Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B406288B5
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732679754; cv=none; b=LvdZ8C7UREnpPdtlHMqqhX+jSEeTlPoEaw8LndC00pkiD5lKuAxytzjt2lesH2pD1d+7mL46NxkYg2Ssw8/4H3vf+afdM5vVyTPcFGjkDXaQGGWKcshDtMbsPgeJQOd4Eo7h5C5MEtHDKBfT4R51E2Zuty0JPbt5iFl6sV13ZTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732679754; c=relaxed/simple;
	bh=ZWwtVkCFSxsFOfW61WtCW5LBQtBOKxQZK2a2L9QBY9w=;
	h=To:Subject:From:Message-Id:Date; b=A+h7mZ4fbw3x69fcB/lfRnyGsHB4iUA/rf9T23/Ie0MblzFJl0eZjoU/D+L/7wxf1EmFnssBZW7tA2/NtbQ5jeT6A1HuoOZy1t0YEPKN5pO1b/pBy/VoD16MVhP1qIV43efeSjDRmvAXd61HeQt9NsWA6W8RUOuU36rIGgh0GWM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SetLomJj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SetLomJj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3B05C4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732679753;
	bh=ZWwtVkCFSxsFOfW61WtCW5LBQtBOKxQZK2a2L9QBY9w=;
	h=To:Subject:From:Date:From;
	b=SetLomJjO91xg/SHNJlvhX6VJ0LHS/1ZDGJ0uWJ+mEwQNqrVlP8ASBnoP4yh3KH5U
	 i3amBGDXqGqN8wFKkyFe5M9nnquYZhAC7tD981eHfCeq28BcuL/N3/zcJD88nOzTsX
	 6VrqGqKMhYenzZEenDRYc3jtCOMMW1H5pTjnwdoAp+0V7yDnBBt0GK1/QzYR4oOkq5
	 0pMQvGZ7nvdYT9CYvJjGE6+tr1BWuokGY2B/qVqBNX36D7EyREOGfL7zVJQzJ0vUZQ
	 O/l8iKnaZZa+R+ljGBeB+S3tWvzXLu5CPpgLg8LsV6AfjiutmvUDLON4LtQmuSH/ju
	 Sqg1Ck6Orrwrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE00D66BB0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173267975359.5035.7593424832299417036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2873b56e9c4ca21e1de7ba11fa6ad929e4e9465593244d4eef65b8ee0c559e3
Date: Wed, 27 Nov 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732679753
