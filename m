Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 769A14C8E
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738038954; cv=none; b=L0ZfV/FgFu4PaG38ei2YPqAXg7q9C4i5iL5L+STXRJde9QCNYeqewWGd5BG5eC7yi6EoOFo6duCwR3QW5h2VEYPe4IypCrCuPNJ6x8clZ9isFzjF8wVZozIJ3s2aLtKJ+vk7X4I/TGSxSIDUJmZNWi/S7num0MbgRbw4yq/PuzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738038954; c=relaxed/simple;
	bh=USNPjQpN4zaAEC0enwogLVI/02TiG7ondkH5xHgMvJw=;
	h=To:Subject:From:Message-Id:Date; b=ZuNnBFUyrNxBSqURYoRRS0ieqEPSTQlCvzFz4GbpbhBm/aiKbnHEiMoleZz/q7nUuzgieTb+rEpJ66yuaOJKbt8Rzj2JLxw9sFbEcZLio1Lh2rKahGg9TySV+vo9O0r1L86o2gkOBGDKHSphVmdO7WT5eOy6j7BSkgarOjXa7wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUB1TqOm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUB1TqOm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBBB3C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738038953;
	bh=USNPjQpN4zaAEC0enwogLVI/02TiG7ondkH5xHgMvJw=;
	h=To:Subject:From:Date:From;
	b=FUB1TqOm+cEnVBn6NkR/bJrtvdarV1dApSTJjkZBvW3gS15K+IQ9Ck/vm8EsajZRf
	 l0Q3A4d7U21OBekGV4Yl8GHmfVE0uMeGg7M1E/Fuz2Zbs2zAy6m5ezrhwjLWvpzNYo
	 e1XUKRlkdKe8NhVnjsQl/9O/pMJkY+zcFnHY8Dfv1DPYUsWEGmiTsKYb0CyR7+34z5
	 Ji5dSNhp8NpsekkCE9k1kJfKwFFBEsg9fpraoMYfdWHVRemSejewGAGzdxU4PfU+eb
	 GR18fX0TSSbhNeagX4Ub4DSmb5piKLvmM4fTfqEdqkJjWDaUFs8SAY5jYD3rW8RtnG
	 RLvGHsJgEspyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EBFFC0218D
	for <ddprobe@lists.linux.dev>; Tue, 28 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173803895363.21148.13263258371580168416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5743709f4f2258413d4f5965800b3d702340ce40410882999a12a5bb3dbc7f9
Date: Tue, 28 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738038953
