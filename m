Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D27154774
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772504094; cv=none; b=DSZQwy6groM+/Lgy1XbqZ18gSuxYtwycxPWsWJmtj6YTk33it0FIYbBBHZzHfUBsBii6+EnfdlNJWF3pr6a0cUXqIivTWoBaZ2J0YhYQVktIPE8PZWBKsxpymEwX5tpGAUOchJ7x5NNb0LOeOamRc6mTfJMZel5MuaUXfwerDsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772504094; c=relaxed/simple;
	bh=PqcOvuLlhjJOs7BT5hBMw01whYGOUaBRfhS/Ii0RWaQ=;
	h=To:Subject:From:Message-Id:Date; b=c5kd+EvG/7YubA+pqrdGLyps7pfoq6ZhxdQOUnMzkvKYiKXvPXupQMSgky+8HBTjzVwTBmsocXvhNe0dnFS+ytOE62iyCo0AVpkrMAIkdYaiLH0x6OzmRZGnNGwF7nck8tShcQECB+mWF74PMF9y19zduEF0Nzp94gR5DGkCcmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gfl/+Tzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gfl/+Tzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB03EC19423
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772504093;
	bh=PqcOvuLlhjJOs7BT5hBMw01whYGOUaBRfhS/Ii0RWaQ=;
	h=To:Subject:From:Date:From;
	b=gfl/+TzsZHYW29Zn8x4J5V78BmuDnx9Ict6SsfWbqXG/V/qvAAvQnxrK4knK7xTzE
	 vbyreU+2u/aYr9xq8ltqbs1IvsBycpgY/X4h5dtYHd2LTpvdGXyg1fNtxX0sE1n2bS
	 GBvd9Y4konkkkZeX8nmzV6bZFKVKB4zbJJbFQngLF0ZXgHEcZbsetokqegXwv0BN6i
	 BCf/X0eJPqruR4iOpYRDkET7Kli9yViIXgRtTn8nzIVGX9vpEWW1vBj4HPIL9PmngA
	 /hgzdI32rKz/Qr8wR01BlE1nAr2AdPsjlkQn3o7dnubXVh6kaa2TNRsAFRvErQjboZ
	 BsqQd/qqSNmDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6316EB364A
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177250409370.30190.8694415918803214879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cefd858b89bd02a64be9b90fba17f56ac2d343cf74b97cededc0477f99c26da
Date: Tue, 03 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772504093
