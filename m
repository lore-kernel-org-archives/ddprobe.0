Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04749212F98
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763800914; cv=none; b=DRfe/MiOjCLKUMEkMJR7x+03/tS//ZUdc1Ma2pKJ7A4kZqZ0Bg4vkIoUc43pD3xzPcXS52KVFfDKVwPdwJOgztnZco1+xAloABnFD0bLWGBf7VJDwGnqRBnhk/kuaFRAJNYHGndc9o3Lbrtve9FCi9y2Aookg8FPj3/LA1w8cts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763800914; c=relaxed/simple;
	bh=CH9CCh/QtUgkXfvGcD89Wz++qMNVMjYkAZAu0VutKjU=;
	h=To:Subject:From:Message-Id:Date; b=qbLGnx011Y02ZzSEQYJbm31zNNTI2rhAS22CkY/UT0LG6faHqcjJQcrLcVy4+8+FOsD6zC7h73SHO2bwl2PDwm+ySO30owRx2xeNiNOf/rM+i54PwHLIK47CiRYxjBKlxMWNhjm5833taNbRLddoPBUHAfTkhxMCeAaZ15CiONY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=otepmKdw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="otepmKdw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A536CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763800913;
	bh=CH9CCh/QtUgkXfvGcD89Wz++qMNVMjYkAZAu0VutKjU=;
	h=To:Subject:From:Date:From;
	b=otepmKdwHS9UQLVVW8GL108k96BkJkxInQIqptjrXk/c/0H0NSD/aaSrz3EASFx55
	 Z5nHuO6grUJF6m8MxMqZOxnVzgG7BnWq6SNYMl2Lm/i77/6s0DMLdHvn6X/Sds69FV
	 R94B0Mg9ELWzwZitSFz3FrqyXbqGJXpmhXEYcOB9pQUUoxNeqOShVXhqJ5gnvjWZlU
	 kMxTaJINaGuVHHenkaz5FChhjzJ+waVuv7cRv8xpqY7TtDrGW2IsKifgjKap7PU1FG
	 2C9WTXl+SGI6zl2pDTBifBd6R8IjM1b2f+6wDQtheuO7pVlHOzXDJbwJgaPCByf0mJ
	 aJxRZcndYqR7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93475CFC51E
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 08:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176380091359.27489.4990760145458713072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d016aab02d5a5024f9e1b978cee1835c8150aa93f9ed4ca5ce40aac311e4e4
Date: Sat, 22 Nov 2025 08:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763800913
