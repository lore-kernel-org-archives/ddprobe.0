Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DDC52F88
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745452794; cv=none; b=XEihb4twKJRKs+0szIxcPwFrw1Ad43srZ1F7TU0gBycQm9gsbz2xccGQB4d0R7+cwo0AU50cawI+08X4unGxG5DWloRoRmR8U8juw/JpiBkABKqREboE5DB5bfehWPYXL6l0YC9ptY8dQL6tLakuH2D1kr+i/TAdICEV4l/PNfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745452794; c=relaxed/simple;
	bh=9cxe7jhnwrbwU5VHVHssKeoQqJl2+FsOl3afIMH5EmU=;
	h=To:Subject:From:Message-Id:Date; b=nIpFNJkds32jsig0RjU5SeLyhubhiJju5xUV7+E5zACO6MUSj2LzpgJLUdfOEkM1K9c5+PEv4GKLzeQ8Ef0rTMP1yeoV/mQJVNCiZSV/3MO39jxEhze5z7HbDAE2ktQlNxUFa5DSfO7gtJBUS8IyraO9UeoKA7PQSq/klVuNP7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2eczdNn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2eczdNn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FABC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745452793;
	bh=9cxe7jhnwrbwU5VHVHssKeoQqJl2+FsOl3afIMH5EmU=;
	h=To:Subject:From:Date:From;
	b=g2eczdNn/+mpY5JdZMK2bD2P2/VpQU+WGjxSJJgKr+FUglIFpJWTRMVGie2NHmmEG
	 WuNRf7vIYKaTaW+2uUXXTbZGxPe7Q4kHMlMc9bE8Rb4pAWMr3V76v04jDKBtGMC+MO
	 ZDnxxgR47knUKymhwZ5ZLhh3aqSUhBWSQM0T63DvVo5V45RSzEdhyeMwZcYcJCy9Zo
	 uFpcoB1UqYkUH5WpsJW0lTmjLf0FTxn3H7BGdk9ovc6l3ksVRF83879kBdEeu7nhhL
	 z06D5TyP5CKdR9cvyoOCRVdsJkHyhnY8vWv7X0hXasTPxi6Jl4bxFXlfpzUrGUjIfj
	 arhZ5WJrdp2CQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A31C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174545279357.29793.14428487641267659518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1660b7cd0b7ddf83fd4098d13693aacca58a65f3a9a21824ab3e48701c87252c
Date: Wed, 23 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745452793
