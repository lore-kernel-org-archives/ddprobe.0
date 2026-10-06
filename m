Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4507021CC5A
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791253834; cv=none; b=DQF5GaBwwVPQGHKz1uaSEW5K0VJ5zI5LhKlrSA+t5lFGaQHxJxDnsEsWDR+yGYhpi7ie9xJmdMn1PciYVhsg1L1W7CTnWyWdhFJdaJleZMbiyRaNQf9g1iC6FC3FBXdynz4JarWOyMvih58YGMsRLOIq40fb+Av8fefAlXw2jDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791253834; c=relaxed/simple;
	bh=9gJoLlWRkt7FgQFEQcLKup/oLrhkHxXSjDTH0RibBJA=;
	h=To:Subject:From:Message-Id:Date; b=g13eyl3LAXrgttgMUsKZFoa5Ew82wbcvsDKvGjsYoUxld99d7qwcIwpmYEtnanmq396KnD85jRxuF3im/hxj1/Uqrq3Gx4jpEYZNjPKSKLrgq+8q3d4Y1Dy1A/YjHsHVQMwBW7SFrOl3xdyGjKnjs7VVvu+8/NnZHP9AktczvZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gAoBatyz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gAoBatyz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8385C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791253833;
	bh=9gJoLlWRkt7FgQFEQcLKup/oLrhkHxXSjDTH0RibBJA=;
	h=To:Subject:From:Date:From;
	b=gAoBatyzXlMNjis14M6h+JemtxK935EsaOQ1jJGf4nueYmp2qZzZnYLYddYKippB+
	 Zsy0718uArzazPuCPJgMioijbb71KpVZ3isyDxpBuWWG8f5SvxwYuXGqH6aXlR7nWW
	 aUzfc8rEEERUiuZ2o+cEEiPvj2v3VLt+QbmwUacVoO4ik6zFaG4F90Y8Xfzh4j3zts
	 0/myciNGi1496H7u2d2CEc/6vcIitd8Shc6iD008/iA9L3h4XgiO7ef0DWZ9SfXxca
	 Kfre7apIpYQpE6rEKXaL+x6Vluc3ewPSD2VxkV6GY/YlnFGJeAeEXRQ5QlEx0rhN6i
	 YkbkOdrvvXNcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01FECA5FF0
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125383368.13883.11673172711392396157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4db8f2fdc8c108a924880202fcd84e3721bf22f22dd3007198a58edb906231e
Date: Tue, 06 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791253833
