Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3B014A4FC
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720461983; cv=none; b=n/j5Hqj0YJULNKeJyN3uF981D/Fe125V639nRMsBQsNgT6oz3OqEhf95Xz5+rBII0RxEFDxy8TIanSGKjpRzd/uhKGGdWw2r2rYhVp0x9w41U0E91fzriWf6RtXBtFDGzIfDp2Vh9NNz9RQ2Rftw+fZauvI0vXKzEhboiN7EHxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720461983; c=relaxed/simple;
	bh=ldIDgxonYxvPihms67v3ltDzeeiGocyI/faydaA81gQ=;
	h=To:Subject:From:Message-Id:Date; b=X37fGX3opvPu2VkgoW8XknfsOFVe6F1EYzzGNnLBZLeF6mnO31q2B2oLan5iuR+6beZPaCvKsxsa6jhLZYF37OMU/5V87sAma8ImR3CEGV/+I3NXFzjlB1Uo/Fa38UngIKTK2P68Prg2Gd7tWQV7IfZeG75BwRbfkZMBkjEj2VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpwyJdSz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpwyJdSz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6389C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720461982;
	bh=ldIDgxonYxvPihms67v3ltDzeeiGocyI/faydaA81gQ=;
	h=To:Subject:From:Date:From;
	b=LpwyJdSzFa8wWW45U5jv4GRbDNnudLXDgV3rM3nziCmI9sV/2/tDHykcXXJWxW48F
	 A6ba6RoQRiNqsNU0ly6DBj9SbGG3W3uGm90+wHvpeHxAMdR9w2UdYmEi1EQ27xGgEG
	 K1FIYrRwyeIxrOGatldBkuxJf217AGHkLBOHgmPPz0kzZJKysFdJ6h8jPGEzQqeFAI
	 XpIe1MRK9Ps7W3hOsypw4wy1N3bSJj1r6vQbiJBA/6ev1naWgOTgW+6Zs+9vDj2Gms
	 3+n8ANQ7MSdATZKujFjrIXVydPKBAtP6QFpPfLfdFJ9wQjrLL5QhB6UB0ofiwvcCzy
	 T1rfFtczQWYbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBCAC3DA41
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 18:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046198277.20499.946117671538378750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890112014a37f4dbff740a1a3cbbb9d02af07c16ce0701eb57d524bef675a5d9
Date: Mon, 08 Jul 2024 18:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720461982
