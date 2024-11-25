Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236702500CC
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732572954; cv=none; b=MiNDa2DJtnd9452QTd3L5RHPWo4VwTtx6IacybgMKwz4nQ+d3Sbq1eJ7ToDe1K+FuqmbVx5kmWAGaefvTphaPfhyvFTpgnQvL6HAGlGrQhgGX79gUvpKywBZMLHF46ddWZxl9zS1atpokVfbbOArCA/HBFXZRwONocqyAKeUB4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732572954; c=relaxed/simple;
	bh=X7OgiEmu18dey+c1XTrcHbYvrMK1jcDzG/nl/W+3yVI=;
	h=To:Subject:From:Message-Id:Date; b=fgtm2BFSFicxOGH8AqsAUzl3glHSNL88OPh3nsVuBXf+BN4cSLlXuNs+5Yq+ytuWfY1FOIVFsAcYmoDj91yMvzlk8GEHkoOla8ksRUfExtz9PYMtccO9wWOK445ZYw6hI2/K90nwUhMFAg+US93IY5LTU2aoIxlJgsTrsWE9Woo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSZRZbzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSZRZbzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7835C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732572953;
	bh=X7OgiEmu18dey+c1XTrcHbYvrMK1jcDzG/nl/W+3yVI=;
	h=To:Subject:From:Date:From;
	b=HSZRZbzdzJ89aJiAyNG6cG+8fX7+U7ayMKHjMW6VHTRVv4YtNLEiuRiQmSFsB6tsJ
	 LAUcpBoHEErwkAzSP95nm+OAi0QvUvIqcWhiC71yNxDIDxyu5FNd9/ZDDXQIYuZdNo
	 5rNncAKOuRbqYQ67f7pQSFtefe6TWZ9TzmmPu2r8a1vywI2I0hX7wWjVhZx1lfXf5/
	 pL5nBVzvD6FMxjaHggbSIxmTlgfcS0BZ9VcWCU/BNUhonTrllEE8k3vjq5mj+7qvEO
	 UpY0ioJPxpjp/U9oO1iUbpOVm3lszhekyb8+ZZacuT69QRkFwMGvepgh/jYdX9KHzy
	 O26SA7lkGJhHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928CAD59D7E
	for <ddprobe@lists.linux.dev>; Mon, 25 Nov 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173257295359.7799.2178334046379801511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3930c1ee63f75db47df4c97075d5a2b1bdd1d8d8a41bdbe657fa8affe299fae6
Date: Mon, 25 Nov 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732572953
