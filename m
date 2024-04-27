Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73DF036AF2
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714183343; cv=none; b=hFFN8fu6z1hRFfJUhwnoKZIZXjMYajkShBLzN0V4Yv2SvVBxGIHeIXxb4Moq+0LVgKqkeJnL+eS0+ncBUs7LszrUGztxZ2zJlj6KjiEPzJMj+DWkANVf6MjeSLcDKhgJnnZayh1liSeWL7/4J0iC0oFul6kyviXY9nSUd0GGJA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714183343; c=relaxed/simple;
	bh=vR4Eoj5a5AIiiYjyhvJRobBL5XdFjeU6eqORisDr46A=;
	h=To:Subject:From:Message-Id:Date; b=eqxZKGx6+o7wX5G2uCndByXv3h6voQr0R3ESK30Lxx+zoy1oQfbBY4wlNKnSP7x4wzZEYc5Ul8CiNsIuLJ5ukRhVglMyfZNKL9alpHWl12WqpG81iF2fpsY8zJcwhK+xgEZJkdx04K8PHTRmTxA84czorVdzH5n6NupAu8GGBik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfNCLrXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfNCLrXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F313FC113CD
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714183343;
	bh=vR4Eoj5a5AIiiYjyhvJRobBL5XdFjeU6eqORisDr46A=;
	h=To:Subject:From:Date:From;
	b=sfNCLrXCbuA0g+PHJs7lnyC3btbyBGut/TXsFiyMrkkn5RgOw4oi2NtXEb5LdZbg9
	 Rl04tLMIQMDxNq2IIyGkHuSZZ6wSqvn6X7UbRap8yOSJprEiKLewLlgGSmLdv02/B2
	 qee3HRRpsBtQbanPeU6F+O6hvi74iHTiMhiVIrk/0HI0COfLSApHq/LroBPYkdk9Iy
	 7oBq+J8GJtzGvqHF/oAWIPrqESr1J32Da2TkM1tZRyBdKNt7F9Y2Y3HHRv5hHc/+K6
	 zDQsb08cRdvGne4pYkd7neymSHBzPuD4pJwi2ubbpCk7h6oo4N0Ky4zRakgL0o2Ndk
	 tLc3z41aj/n1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8CE2C4345F
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171418334282.2842.2095618871684643076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb7df23a74fdba1bf6aade1071f037027874527bbda15158b8dd95375f516d0e
Date: Sat, 27 Apr 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714183342
