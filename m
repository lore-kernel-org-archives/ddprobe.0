Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3017523A6
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727496354; cv=none; b=fnVeBN6c/9HXbt1C8ipNa6Gw3gDZWH6qda51XUnXSvUEe5YNdWO2Siz5+r+x/ZXEBJzLjcoyA7oV3J4okSkI9KUKh9zMOhS4dazm3R0eT8fOLZfRkIQH9wCe+rmCz/Bz4K2SqDPqBcThQB/Q9W316RYMghv//Sdz8Ldhez6c/Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727496354; c=relaxed/simple;
	bh=y6fON/bWZ8UMA7tLm3HB7gqaFADCC9uLkUxldi7Me5k=;
	h=To:Subject:From:Message-Id:Date; b=paoabfHi8NceZ0CkTTfKhlcqnaMMG/J/k9MdWWKVeQ3qd8Y/yo1xuGoUiax2B4GUjJMzUIN/e8lRhAffTKGS/gBzM7USbEjYZ9FRYbEvD2cLcgzJkVRATArOkj2C4MPvbv5BtxhwF3yNlDsCJWNtW+AeI1iqguio47LkRRDj0Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/FBYsyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/FBYsyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DBEC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727496353;
	bh=y6fON/bWZ8UMA7tLm3HB7gqaFADCC9uLkUxldi7Me5k=;
	h=To:Subject:From:Date:From;
	b=t/FBYsyU0/6dNWtGVHYxB6qQ2H44tHFZih1iM7bQW5MiBGfYDDz8YZAVMgX9f2PeJ
	 n/hviZIl/4xYaOqYHLU6oWbTjnX3VZ7ejiSyhQ7FaKQKpXc0ivu+fBfQLZp0MXv3f9
	 E6pP3gtYbinDBS8MQOiXu60UHwBvj9Z9LZ5OrN+JEXe/wOztG/Mt7p+tDxoXeb/9vV
	 q4U613D291PbUfZCMf/hjTP1SwUK2FVvD9h5zC/BquLG38nlQYhk4+g0H5azc3kR4p
	 mmxqx3C++9MGb4bVU6QtI0S4Z1KNySBn6IGbY69tW5lZ9sTBE1vPfw12k8iWqVN150
	 DmI57THOo/+Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A57DDCF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 04:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749635362.27915.18392763692136901906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1940245e27aed4ef7f7346ce64f185463a894e2dde7abee5ef59c2a19697397
Date: Sat, 28 Sep 2024 04:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727496353
