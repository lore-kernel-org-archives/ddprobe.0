Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E4CB67F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 22:25:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737152756; cv=none; b=UV07BAF6fJzgFJaB8rM5uYNYYJn7MqgdyxV5/puysK0/gan6ULsfD9FGe/wklV9RbNoEQZ3gV9u6fT8cCi0AkK4WTriyBFkf2V3SgDwYZbYgMdXAnromkfA3gT3JKy2fNkmj3vjIIuQDUeF6jP1abQdx1IfbzrHCUo3LvmQcKF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737152756; c=relaxed/simple;
	bh=cpqAeI3gJ2AUlpV17dh/u7vDhWYX9iye24Izr0NWR14=;
	h=To:Subject:From:Message-Id:Date; b=Yq7Kkh5qP4i60I5vp/lYbVoZxpGy1UgooxFDa289+46DZLxLspYpZCuEO9ZJICsp0TEsacTRmulGrEtWfK+734+Lmpd2wlMqszqdcrWoP1wDIwVoX7aVwObw2vY01tNzqokin0nca2GWQAcAY84XDEnSyDxgSJrhiXsmWSmNMAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=goItNX9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="goItNX9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD152C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737152753;
	bh=cpqAeI3gJ2AUlpV17dh/u7vDhWYX9iye24Izr0NWR14=;
	h=To:Subject:From:Date:From;
	b=goItNX9iNqDDeKjBh8Uu8nh1xUCnn9e7l0gAmZrKxILqx/3b00J8wQEAj46Nz1YJm
	 am23QTzkZYZkhr+h7BfNCuYQR8m9KOnvFccbQo8X7acCD/s0ea3kM3QLuHSGpL3YLJ
	 RJLwl3UfcBeKNvGSYYhwJ7gDoUnEufzinI0wcm2ciL+FNAYgcXOS9cPgE6SpxSMSxH
	 OO789Wf8RyMxfMP/GFY3ZfQEFDb4NuJfOEigL0v6kaU173CNNQioepNDBh+SgE6P9n
	 rrc0owwAEUYT8LJZPZvQJLzNl+zScaZv1FyVNrMR3Qe/j37amRyG7/nJfrM2ZzAao/
	 TsuT6dIpEweHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B35C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173715275357.31628.17117886127732844474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f79c777feeabfdfc5a88c83168161726ba4e5a1d4b631a9209fe428a6dca749
Date: Fri, 17 Jan 2025 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737152753
