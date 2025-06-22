Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337371BC4E
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750579194; cv=none; b=B6NJ5FtUWZF5A/HRX7lLW2QTTj9l40yL3O4pywQbtNWN3Q5PJP+0/DGkz9RxLHH7HOFVD0YZ6F7BB1u9eSAGtd1u3COcgzNpiiBwiGsRBlRkzPTIu18iTluKeJBqkM8gFLrllo8KvK1B1McCIUCBA7xrlKC1SXv4vAQ2kNl4JUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750579194; c=relaxed/simple;
	bh=vVYEl5tV4CAX2JBw0us+UNUt3kjvyHsvDi3MQ4zoLmM=;
	h=To:Subject:From:Message-Id:Date; b=fAz+Ez1kkHnRMjsDMi83Xxjp/4M0s441tKpS4phgmS3mkVQr1X8eerxRyo7uwOU892EXEu4GR0BWDSqAmhRUwNy4L9bMxZY1OeDUOdHJRPybVGNnEZ4spfGLnB59yDBc4coC1nWd4U9fj0e45AdEdqLs2HcM4xiFX6WVgJdkZ90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMagjgu2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMagjgu2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAA7BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750579193;
	bh=vVYEl5tV4CAX2JBw0us+UNUt3kjvyHsvDi3MQ4zoLmM=;
	h=To:Subject:From:Date:From;
	b=KMagjgu2QMwjZRyClEP1HOkpBGzDFZx/8QZZOhCPpD50DzfY7AeS/vEgg9bg4daUb
	 V4Se+6WtLwBj5kmosM4lTspuQXTkvdRF441vnhbzivWLFD8jkOkeuG1WkDSFIBACzu
	 25d9lB8WuLXaMARyYRXyuDDOTLtzfYPaKxgR3drbTQ2ZF0w788zeqQWYNobfDrrRt4
	 Iny6V+01G8LKv57ynFFjB4t8cLjy/dW+olh7Bs9b+GTj8IEzO5M+UzDDHtGB8H/tZq
	 y1k9FUAVq3qJDK5vCIrlLvbdIZhN+gxEsvufbolMUDcSTQI5IjhOpGC+bRm/8oOjYC
	 ozOuS32WQNfQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91911C7115C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175057919357.10233.5143935726751630569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257195c67c600ec1ec901e835d491eced3fe270a6ad38f484c5358604aa61838
Date: Sun, 22 Jun 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750579193
