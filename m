Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6592E92D5
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753279794; cv=none; b=AJ1XtduY7M7sIdD9gDbIU1rydw8DJO794YHtlcewUTb9kbWQAyhTZdUda4pVIDYuHocldr94FYOeBl8JbjWu1IQNJHfaFaA+yF7JKVseeIXUa35mnIHfkwE5nB09PYVR4YsFLZ+v+MXv62ZzgSLDhsBp6csw4yQZUaLMIGhOKr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753279794; c=relaxed/simple;
	bh=X9NIMU9UAxQusOHriiyW/8PIATxcxuydFMbVKe18I5w=;
	h=To:Subject:From:Message-Id:Date; b=PvAalJgBH+/ayHkW405dz9u3DHQruQHkwvGiLH42TWLq/mR5BVBzpZ4n2UGbiG88137oqZ5wK7KCOGOw+NieZmx/m+e4YLjp2h0uipKh9PLEXUhdBmrMtenFJXZZ8K3b2Dwi0/DszgHlsPoMn4WsKw3JmNVqiwth/pJfLcGVr6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtJwUCwc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtJwUCwc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E27C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753279793;
	bh=X9NIMU9UAxQusOHriiyW/8PIATxcxuydFMbVKe18I5w=;
	h=To:Subject:From:Date:From;
	b=JtJwUCwcbMNlpZ/WMSC3tX5UNHJ2hyjl3GbzMmu97DrJzDcE5irLgtrD+psnAEcjy
	 fD5wRQnbbWbBuITeM0LjeSHG9gpNhE73IUjnVoPZycmO+RlrJzOXdJ+ZpBDd5ZQkkR
	 nOLqn8D0rYuElBU54H/Rn3HRMyOVuzVgYvqr3rwYBqiMAIiFr1RoJgrbTh8wz4MvW1
	 9W/a3S95FegdGveBpDmY5HTJUCzsbN3ILxSOKsA8sOPCIlNJduphMrNUw6FNx04eM7
	 KNFGqQdB7O5zs5ZEv9eJsJVVHJqNJuUKk8eXgmlnh4Z/hhQgq0oMP/7JRpRaMMkW/Z
	 ZIOhcA4+yJt5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFCAC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175327979357.15318.13951860596430315268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 327f7d6e73dc19ea2dbc122e2e7f33fbb7b5e9e244803205d2ccd518495abf37
Date: Wed, 23 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753279793
