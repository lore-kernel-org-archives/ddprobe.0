Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDF978C6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718785163; cv=none; b=N+jynXvwB8KMgpkH0iL+xdo4S+XtrhQHHn4IEi05WMG1P4stCAL2uXHhtO8NUpHowRJxo+29QHzxzJdaduw5ezn8irXrlZtj3kfsxBS/IabHJocU7c/F+PKs2NiQdVUc44ro+trb9qE5BFsYeOCc4U2JzqybbDI7SW8FmA0YvNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718785163; c=relaxed/simple;
	bh=3DctS9I98qo7IQf7TNx8N90zSTCqoKltx2wh9VvXNb8=;
	h=To:Subject:From:Message-Id:Date; b=cdAHsJp60hWfPjwhsjn1RW4Y0G0TeIoyccQJ97Ami7ytUwO6a4B49mtD9SmIp0UL0LV5DTVFDruPDByCVRFmYnqmzrVby6Vc1pDzgSFpmUZu/fl/HpWDjxxt8t95xxFrUYmTVFccinLvFfHVJhbkh/bSVVyl3DvS4fpAwK5/+8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rp7dEWUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rp7dEWUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D37B6C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718785162;
	bh=3DctS9I98qo7IQf7TNx8N90zSTCqoKltx2wh9VvXNb8=;
	h=To:Subject:From:Date:From;
	b=Rp7dEWUxY01zHIe5q0aQo3Awmh8lU7Le4dmACcgzdSq4SwW+AwdayEAw1B5u4kksQ
	 MRpgkaoSjbiNNoLCiU5aFQ3PxSV+OtIUOBdB4hlnY6Yq1ZtjCnozxzk4/hIdvjnZ1T
	 5CSeBanD4hPPP6/73wlDfAn2MyiSByJDO1dpqffQv4D1iVlQ+BwTDCnJ1MBgHtVCx5
	 jawauwAgWsPIeShNmJoAYHCSfoppM9oSxcZJ0HZovnPirTAKleuX2fzFSduVhzg1uI
	 EOruQpeIhRI5mdBCtJ5qvfjqq7Istry7AVDvXiv8/yLTKWJgawoCysNToI3SDuEkw0
	 AzrxJEgJe3hGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD6B1C27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 08:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171878516276.8191.3848225231938822449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e1b2c0bc410ff76cfd281385052013463960a4a62fdc5d19f418994f66cf879
Date: Wed, 19 Jun 2024 08:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718785162
