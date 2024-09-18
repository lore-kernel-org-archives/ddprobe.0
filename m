Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2327E178376
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726656954; cv=none; b=FFLgIHYJlk4sMfcAxdJ2DP8rQb7TZCzDtTjPf4S07dl+gRbWxBjx0KSKdHjXh2vrTbXnrqw+jE0qS6lBgPZc964/RbEwbJk4qf2yf3TWkpgNXsHJGkDkkCf7LT00HbCdz3F2+Wq7euPTicBcYOyGZsqBAohZ1uUryMBSkypZBnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726656954; c=relaxed/simple;
	bh=F5v/3Y/gLM5tdWNkT35FfPpMsftiCKB5ddcofz4Rqe0=;
	h=To:Subject:From:Message-Id:Date; b=N7NLoCP0HLZSurMEsLQ+Oe8xNJ5KWuqObZ+dwTPXkt4aFuhXe63akf+LXTCB00rE9ny2Ys4iqZ8cL+R9oMZqmbvDTMqhs/pKJqG4boK0RFOnY9hg9p4mlcbZCSK+coSTrWGlysx8Ep/xxKbdQZghtzi4hAq6pXdp/9XY8qxO/ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5ZSR7n0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5ZSR7n0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A273AC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726656953;
	bh=F5v/3Y/gLM5tdWNkT35FfPpMsftiCKB5ddcofz4Rqe0=;
	h=To:Subject:From:Date:From;
	b=P5ZSR7n0fcgE1ZWWxd06wfmcskPKIztmJprATdSkcAZtdLKojJhSlLUB9r98PGjfA
	 E8xyQHZVujWnAjUwEjC0l8O8SoIlC/miMsjSEatQ6Bqr/L/6eHQgQPL4uTkS3fZ3zu
	 dpYhlfzqjhpNPWoY2ilBjodmoUWe9wryIuDe4svgDyiQxazUl5/zvbmMBVv60xnW05
	 NUCxcS4JhMPMlmGZwx/1RMFEgLRBARQdzxZ2zGknybLu66GlK0TWx4mxuf71z02avd
	 +qXbdPVh2b5zifb0jMzH3HbbkYUwHOnmgJnchGqIJLqbTtA/DijTW+HKGDwbEXfJuP
	 sS+k8zhP5TBRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935C5CCD19B
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172665695359.21237.17838394720762390841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16500eca76b7d9396fbab5a938a8cc3e5dd53a68ad57d88a3b93de45469fa980
Date: Wed, 18 Sep 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726656953
