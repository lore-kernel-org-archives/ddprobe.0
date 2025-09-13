Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1919AEAC7
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757806794; cv=none; b=qzqxA0N3J6sqOUvGSxe6Pm/dUb7XCTvMTTjDj3oDO9OjF1K3xswN91BtinfG+O6LjRKvbG7dGOKmZPZ90zNsdS3dfdqA2PGDaGy1NZ45YQYQ37J9bh5mL3gNar0Bx+E/tAvBnPLf/ce+vqZNXcXYZQlSpDVHE+GvvVJs7xJmM8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757806794; c=relaxed/simple;
	bh=BG7e2YTIZmnzGACrZTnGFED8mmRzkj5OvXXuI3WjMsg=;
	h=To:Subject:From:Message-Id:Date; b=JCC3E1mcB+bzEGoFGqo+pP/936qarQK4pl3nKInzriM8xRB6GKGRQPLRLirJL+ohQMhvDAaLDJj6WlX++NUbcxQuiFrqCURpwI3oeKY3O1+Z2vsVs3XXogkPe4tXaZfkSDLYnbdz42Bt6KkGQePFcIMMBNMvZ10fUrwvH0Nasq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WnpyM12g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WnpyM12g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E40C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757806793;
	bh=BG7e2YTIZmnzGACrZTnGFED8mmRzkj5OvXXuI3WjMsg=;
	h=To:Subject:From:Date:From;
	b=WnpyM12gALq9dyQnwOoKqicFzA91n8KxuvAmAIVxWFRXNyzk4/EwgPzR/WCk33tqM
	 T8xe4FHxaGQ1rA4iDtySfiZeDruKD3VN1O0CcTbloiOhdT/L2Ifjv/6oXeM6PTyXzD
	 E1NketwYg8uC2wdj9wB8+vHJ0oeFx/XyBqBUFW9xs//DespaQsWPev/uXHnZOVCjzv
	 81UvlrueV47byg7ALjAQH7ZI52QYYoG4WdQbA38INI5grOhhoZlmTwRWkCxWq5tJEL
	 47QpZ9F+2AF6NMsZtgpIQ9EjNjouYx0z99iaFtKKAGBX/6aMIU9evNa5DaRycDSrdv
	 nAnsjs1zIK0uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A53CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780679358.8044.10854595774845150325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45ae7e0a16f71b195eae5e409ac034e9569f40ee16f63f02f0da860bc88edb14
Date: Sat, 13 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757806793
