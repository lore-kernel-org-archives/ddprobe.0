Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D73113BC0C
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746935394; cv=none; b=b5oIu0ymIxUHWISGbdo18QPYlqtMvCZzUR4qhq59BL0kYLmoHqzBANOj9FfZ3e1iUu61RrnWUeTjGTTwWUnQNFg1uMWWaPaUDjIihD/6TlfMf3OkRNUHekc+LPoqAOEeYMgZMvSkrsPzJfjbY6FrlIGDb3CmoN3WNSM9RAL+AYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746935394; c=relaxed/simple;
	bh=Ya4EGy1W9MWIKozr7lJ6RulBVehaTUK052EiUcUK0m0=;
	h=To:Subject:From:Message-Id:Date; b=WGHwiEtGoA6tIGTe+a/SEdWRXctovyLLTgkhgmTT0bjJA9XxprMcmMGYaFYS+Nx2SuLQfD24k3U5kof5Po91t7xR7dKIhDfZ9VqjHaNTlI0+J6vJlIti8rM79atKOipjLsXLDqKNNzLqCTzbCk6weOMvo8ofy+dblOi2ajbJGxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kkk8HwLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kkk8HwLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D28C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746935393;
	bh=Ya4EGy1W9MWIKozr7lJ6RulBVehaTUK052EiUcUK0m0=;
	h=To:Subject:From:Date:From;
	b=kkk8HwLWN9P0jt77j9C6SJ9Ar6XXyXJ/UWNhOxiJ9EZf7COjD/+TXGtzA56JIzhaK
	 hwZTtit6Q1yoKfOohd4YbApZ6oYFt5MOnN9UK5mwAmKGMTD4j/AYUUa3fuWmbTKxKy
	 Fu5q0yFYtclwVXjdlEcINcXf057oTJ/jWPwFxqma8P4aLUKCu4cZlRF+9ZxAciMBcl
	 EzNm+AWSialzb5nKlQHO7rzn+8RkQGE63bs6G2UOTGYiiiry/dMJzUbQcCvGltFvQp
	 zOaNSVtryGkOxjHTQ9yrX1W+gRci31huzjMKzu1YiSeSFXAxgG4LJG9Ft97LQLvN8m
	 u4jHv5+mc2BnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9602DC3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174693539358.23899.15076580823059513164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a5bb24977f19b477521e73922bd3395851bf7074663d5617cd990494b34b09f
Date: Sun, 11 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746935393
