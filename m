Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F5D351C27
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783610314; cv=none; b=obJlvhKC/01cruzEvszjM3LqbM9RGVtvrIgu67DvEjgolldiUZ22+AZxjRPnT2+8+1bbi9Y0ePOfSkUyNplhzaspy4gAPHXsqwAWCA+zjoJ2jEfNmCJZqc0qf/cBIoOOnLm9KqrxGjmBy7dIDRxFpZCcQfhF5qMJGHXVRglMjwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783610314; c=relaxed/simple;
	bh=pN7hpeb5QC1i1LHlLYs+O6zMZPpaIoWhWSJS3zEQOow=;
	h=To:Subject:From:Message-Id:Date; b=t+iWUW292YilfivlIimjx0i/cKQv5vSn0CRvx6xbNnJawNzy5n9FNcZtYVVlqcT7KhdhKBzankQNmjw0VADiC0naBCCjPX6bXObqA053EYZlNp3p4Gdowmo5qn5c3Tv0ZkHjhwwvykTlJGqCPnmi9Yy9pmsod+03iq+WNIKEt+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzZBhpHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzZBhpHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC253C2BCC6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783610313;
	bh=pN7hpeb5QC1i1LHlLYs+O6zMZPpaIoWhWSJS3zEQOow=;
	h=To:Subject:From:Date:From;
	b=rzZBhpHjV9zQl7CrTImE0bqdr0FvbeBcDEY0gJ/XYXcTedlLNtgrvgHB4G2YyzQjV
	 4zB/rFKnE2sXi2r0sAySw0+wOIitTA0cH17nUvgvyJfUJjKp9fD5sQlb5zUSrRlzMI
	 ut9VXOa3hvyksjkZEIDnuNzkvGa0UtOrEwSp+OCltq4HjR3Lux96EHc/3f+lunrHnP
	 zYyk4NUlQyLX3qz0z7if0K/37Ju9AsW0LYYpzAWyBmCzw42mVLTy5RyCf4nChmPAKQ
	 DRUz2v87OGhdiSHOrUtVHBNyQrzqtQF2oz8xhIyYvhSvyjQgALSTsOMius9sWVN42E
	 H4VSKoGb83KHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EBBC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 15:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361031368.14368.9996799805778359841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0fafaf04c943d3883e4d4b157466e85544785ac679d2ac171f2a7a07e0c38fc
Date: Thu, 09 Jul 2026 15:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783610313
