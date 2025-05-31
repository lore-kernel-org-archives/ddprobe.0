Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D46128F1
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748651996; cv=none; b=RhjMcM2mCahoGfnUqtiMTVUk/uB+D+L3OcJ8C+tFaGoZyTv9bu0I773rz1/FfaOUwnt3yoVYXD+gc5p0QpTZ3I8lkfpUpqMkIvKHgH26j7bB0vHi6L/GA216qoZKXgRrUw9hw3d7csulTNhrTjRU+HW9e73+K8qC9eChHOc2+xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748651996; c=relaxed/simple;
	bh=ZP1h55p2qS+KublyfZfbxYjKVL/IKkTTkMNtN23/o0s=;
	h=To:Subject:From:Message-Id:Date; b=UTh7z3M7XVwn6jBvqCrc/eN3HjxGACjA2C18DrJyKJDPm5R6fADwoHopJxqY+/sTcCxybt/vmxf1yq1cO1DH3gGpMLDdFi0qQ08YWRTMnRaoPkRvjB8n86tUOZUsHua5yh+lKm8Xl2VnAZqnvmJwuYIsuU/FXwzOMB/6zIjw68I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ntYU1Vex; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ntYU1Vex"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2CFC4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748651993;
	bh=ZP1h55p2qS+KublyfZfbxYjKVL/IKkTTkMNtN23/o0s=;
	h=To:Subject:From:Date:From;
	b=ntYU1Vexvy1Irf1IW+FmYYKWJ++W21sod2bXoqw2W+5r0uiM1FdeeWpzT5mSkv7ec
	 hireGiyPFmP8rh8L7VvkbYU2y+SI3Zk9amw5OzXoo+jLZZl85hE9VeDDc25Zc8Lqrb
	 i85pvSkFw2S5ggteAQ8AzjfhESH+TNIJgNIczwSnuqXXj6Zd/KxCZBEyu1RScu0Awg
	 HzGB4k1Jm3xYSNpVvedPWXsUrUWNfhGI3JmhlT+OxrSSj0WrLsZKvSf0X3LZKq6jId
	 k7AdX95zOb8SyfKdvX5iccfrG5RGVpDsJT9RTAFtHcUhJYr45eyBfp6QVg3CtYR7gp
	 zZyA8LTwwrXCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECEEC5B543
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174865199357.12958.10333290190665423972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1dd7f0158067550db85f8ae09ac379ec14056a437dfd18e9c0e22871a08d59
Date: Sat, 31 May 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748651993
