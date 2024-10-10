Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4390A204945
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728547554; cv=none; b=ekE+BB8GnbxR5U/FwgbNpWtbYh9y7CkblFVEBegPIPyfKPu9G7pr94XD7SvqAtHNbWx6IhbzMT+tm2DQaM4BLoH/BYjTOWBia1tQy93ZMi43riJMZtOgWRsp8T+AYxtrLZSCM7PG4yKS2TVtecbv754slUPyhER11y7QxLuz9Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728547554; c=relaxed/simple;
	bh=MmM7PU4tk8BBcKIVp8ksN8cZ5dSykFUuZu0Db2BJeR8=;
	h=To:Subject:From:Message-Id:Date; b=i8gQBTA9prkwoMNmErutU1dImCw/qYge6lwbHyP1lQXAz5ryP018/P0cBRcLaESCFBQKDkU/9+9ryY4CAFIvExJX73KRkeq4fu35ac6t/VWXnlHPltCuPBd3AWQvzC8ZzQmOGyLzfTD74ZBfkJem9Mw+B6oT0dUfoL6A8vC8LQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwN5C8Om; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwN5C8Om"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3D1C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728547553;
	bh=MmM7PU4tk8BBcKIVp8ksN8cZ5dSykFUuZu0Db2BJeR8=;
	h=To:Subject:From:Date:From;
	b=YwN5C8Om1oXQJfXZw09AfYosdJVVSlaZ5wMUH2eAtKYZaGxWmmjqIBte5SX5P7XB0
	 bsIoXp6wP7wnVfmnCDBKEdcssmZj8dF0wlaxyLawezqcjXptcUqpnzgddFO+EpNob4
	 6kSPjWHZQZmdb8K74oB6WitwtEJtRO/U0c3J7oyv/U657g9qchO2c8wjyIvHJRhUQZ
	 vIrwi1hIDrl4fyCX/a6Dwh17sSu1031SOU10Ldc9t8wQwb6CV1/q6aeE6tc0/0OTwS
	 ehGcXH6pvLHMrYVQxszdhxY/Hb0tRNUWz3KDwIfKbqyCuS5EDn+VzyIiEHtfI6cD5F
	 Or1sbQjN7ERRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E62FCF07BF
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172854755363.26358.320578004840597656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f6ae98a7be0b5a6f1e2a9e76989c8d2dbaa73f2b806e8284e294175529cc68d
Date: Thu, 10 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728547553
