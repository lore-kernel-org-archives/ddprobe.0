Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2C8112A142
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707995896; cv=none; b=tjNRVUtazTDlB6xz1xz9Fco2ttjK5QCnhx4BuNGmH55Evx/QBJI/DrGgd3OJXjm+JjXXQt/g3vy6o9UhcZl+oC2xC/JpJ7VQC1xLr/ZOiuqgUp+9xdOaCpvkaBdb3MWgC1KYF5nuGYUPDYh8LiYOgrkCQSni5YoA0ZnSSZ22Njg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707995896; c=relaxed/simple;
	bh=N6zQEXCzMUMHx8nBO0xmC15CK2GALJCZx46+V6duNNs=;
	h=To:Subject:From:Message-Id:Date; b=j2PsuwDzr97686R/7fxpSJsQ8XPy1Gmlo9ZftHQUcvz1gzrTeiRF7nxWYxJEahH377VfmCTe81HAM0kWKnay5zHykMwwO5FlUD3qN2o0U0c1wdmnB851e2tWyTqzJcn+SFgtV1iqgnj8fiVK+qiwmmbh8/0i99Pcq92S42hu6Y0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auSZdIHJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="auSZdIHJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78996C43399
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707995896;
	bh=N6zQEXCzMUMHx8nBO0xmC15CK2GALJCZx46+V6duNNs=;
	h=To:Subject:From:Date:From;
	b=auSZdIHJ6Fm9VZKfzMFB3/dMkXAQcqX9nwutKgi4p9hKz6rnxQen7canJuWGUTBG3
	 eVLJ0r7dXtf4HKHTVZtoDQhLyE9JteDfdqDBNSImR2LrSWvPR+ciE+U6a6k8CGbuUI
	 MssUJ6RpNiQS4e1iKn+AqXQKOsw5NlNnhEaSMbrKscM5c1YZeVzOdir8w34yRRWa3f
	 g3sZQFSl3Bh3YwcEX+15xSwaWO+ZmofeQ/XoXSwMtJGimcpMcvXweoUB1sVRyCh3qe
	 PsHcKiAFJizr67/dWWf7sk5KHtYQusZ1cN99sd/9xjZjJBTLSE/LM46Dh2nvbSmJqZ
	 ZO42F9qUNyqgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 603D3C48BEB
	for <ddprobe@lists.linux.dev>; Thu, 15 Feb 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170799589638.16701.13714249152864468558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b06141f9d36558ad18c16194aa9a54ed8b46f7fde002a9eef27badbce9193b37
Date: Thu, 15 Feb 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707995896
