Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153671F5433
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758917994; cv=none; b=Yc1T4t1e85b/54FxJjqGohQMFPcg5al9ByGiwaaQOXdLxtI2/9Ni9YNk3zqovNKT1jta+C6ahZb+enB0jf9ytO/9CUYFZh+JOh0orTukEKwycnzPwYuL7Up1OXG2d+weh82FvXeIXqB/wWzR6OjlCjEm4tloGcoruxaXJ8YNmX8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758917994; c=relaxed/simple;
	bh=tpgrkAYcvXy3XpKJPljd3fChTwREtsY+gQzLlM1N5HA=;
	h=To:Subject:From:Message-Id:Date; b=TURqk5TiA7Cox5lxa4pUxr8SJc+XE0YTXrVJ8zAmQaOByD5uqB3/Mn5k+lBnM/nR8s+jcxSan5z5DUOOGSKo2urgqJPOMPJz4E6hbi4lSS0aNyCgqLuUfZk66rqfL/Po7B9ihf7gySK1kfvWWGl8tZuoNYnienGihYmLFgpxZsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHuxjdyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHuxjdyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89E8C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758917993;
	bh=tpgrkAYcvXy3XpKJPljd3fChTwREtsY+gQzLlM1N5HA=;
	h=To:Subject:From:Date:From;
	b=XHuxjdyfAH9p+nDhGtR98wTgEtKRZi1daz8PVIjGtMPI3HVeaLXwF6fR0OvjSd+kh
	 3bn8u0tyrXLiFIfaCIt9O2flwCp0hCmDc5Ro2AVZGgjpXVz01b5DvnfZrpb1yv9aL0
	 3dpEVGUHkc+j1QDOAAtDwiJ4D1stA4TnF5L6J4fXQ3/uX4oJwpjbHq9Pn23QFAbOFY
	 yQ7sDMkGlZ1Ac7fgF0+Rt2XN6o3MdRgzox5TZz2fO9ZsRv4yuXEuZ+U6Lx/2yeFCs+
	 rPU499pJXUYfgQDDqUm7yPDZeCrbmrEB8zLAQl9SwEDcdJfiO9r0oLe1ecGgQj6QkD
	 IPaB63xulwO2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962D7CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891799360.9805.4190261121664206676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff45cdc24f7665980e838dfb3ad3cda41c5cd30e62d7eb4de2341094d0fb2525
Date: Fri, 26 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758917993
