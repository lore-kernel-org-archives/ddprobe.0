Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F0BC1C3F36
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750871394; cv=none; b=idvgSgH9Titr56t7ooGmsJj5UuBc2ZeerivHEcI75U4/u9m3WDab24Uk+tWP1dlta7IWzPJB7QHtWakNS5Sl3lRy9vGkZLqwlVO0CZi9V6RM6GY4P1pqoE8+zS/Kzls/qaOkU19bC6NqlLlgYWdVx8y7n9EsExp2iMqrjDRczP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750871394; c=relaxed/simple;
	bh=ww7eLeMuArnIxY7FKzwQROXUtC3szN3jfXSvIpNyp4E=;
	h=To:Subject:From:Message-Id:Date; b=CnG/cjS6NuXIcyAy2FOo8CG0AooXA6yWAlJq6nwVnZCg8RCOnhM/k8r/v/7UXYC8fTq0y1rS9Cbwj2YxhGSGOHCo8ps729Sw02PplBieXtXMqeWjAByGeIkS9rgEXvnxd0YyraQS/l5h14QzZIx066Hu22kOf/vOZSv2F98xNrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCzOrhmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCzOrhmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1698C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750871393;
	bh=ww7eLeMuArnIxY7FKzwQROXUtC3szN3jfXSvIpNyp4E=;
	h=To:Subject:From:Date:From;
	b=SCzOrhmIYnTaHeH3OM5I1mvieBoi41UxNUPC8Yze0rPORpD8SCNYWsoUh3tmIq1dq
	 e2AhbTAUQIERsylOFkg5KbbzpN03k9rx+zMnqLduh4jv7EeSxmj3IwF+G1iY4OqO3N
	 oYIZXkCuvsVP3iZtXuHG7cQq6iowEVziSmoNwcqYAHTK3nP6kq2ZVzQE/uWztzqYqp
	 fQ3H3+8S+TEASGqvboJ/XotWAUPxERMCDqZfudW7BzketCQ/pnIl7AwbKzbgZuaJjv
	 NY4Gdw8+5jj3b6RbMjRtzfErGHozQ7vlXmAZY4I8hpkGO9BjjoGLqg0aieJ4WQ5wpE
	 ed7Y8xPIb8IpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B4C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087139357.10883.7668620762876218446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc0daa621d66b2b9877ce98fb4a914ea37e58ee94508443d4a7d23b31463b59f
Date: Wed, 25 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750871393
