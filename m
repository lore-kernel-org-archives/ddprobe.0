Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0292857EA
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780866274; cv=none; b=O8k2c3067/rgIvz2d+fdJSck+pCljIfIL/x1Axm4hNtefudBHVT+B4ouZ5AC3NM/7mdr3Ow6bjqRks1tnqKF8eURcMHNo6ulkNzIp2wi6lApzzHZMqllOmduT2ShkXvLWKEZMlAw99tFMyNEat6RypVoO82QetzPx7yNxIrTbZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780866274; c=relaxed/simple;
	bh=qheFNTpbr1hlbUKu2lBQu6TDXxPbO9F/085U5k5xxiI=;
	h=To:Subject:From:Message-Id:Date; b=V3rA37fUAi6NE4BmHpa2ndjyuFlXnmsLjyiWnJI7zdrtzHLXVgyzLysq07zNdSdKXQSvIoVWZad3poV4nYOdOpI2RdNHc2HF61JEeOf/4moTa5GC5AOYrp66YPW0Ns4wPEjxNvZ3xG79CJ8wOS1AB1X8DbFcp5eAjV9+5AlnZdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbKI58eF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbKI58eF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECACC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780866273;
	bh=qheFNTpbr1hlbUKu2lBQu6TDXxPbO9F/085U5k5xxiI=;
	h=To:Subject:From:Date:From;
	b=qbKI58eFqK1/hROp+4BJ6QmIX0DGhincturNGObyN2uXACPhKdGWhcGOROpFdTzrf
	 ux+spz9cjrb6wxNHjX9rhooWtNsSIJXtHZHF7Lt1Venune1ulf1dQLRxxw3W/6BUk8
	 74EhRmYnf14aztOO/h/xwpGT/BBOonp7JYBu75c/PYzRdRNV8aiP4YUC0ozeWh7zgO
	 ewYG8UjJBx80/oE6LhbBkTZQDcC7Avv6O8cpuDZ+t0sypzIQGiB6plzCuIzNRAwGRf
	 9BQiABhqLmJSJiM69RSw3iC4imUqPfNVyKr36q4HohyqrBxv8Isa0jbHjM5oniQGpn
	 Oa6Ydc4v9jlug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B53E6CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086627370.8794.14556187317754116910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382052a39be59489195243542a75e1c93b893a015af5fa307de0ff733b788c62
Date: Sun, 07 Jun 2026 21:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780866273
