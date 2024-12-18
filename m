Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A57612A177
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734537954; cv=none; b=KwyCkOnW123iTGRAU9Y1DUOa1hABDuLF+a+0vC4cS6Ea/TS+yq05khzJeq00h2x4jAyqxA7HZfoHH1NtPKStojUzWZmRMqXbrLdzax9z+IbNTeYhchOjCkEXm8hEoc6ZehBFPjns+RLTTW+e7uM3mbNQxoVB02nWHK4tOA1wG1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734537954; c=relaxed/simple;
	bh=Ox/blwYyD275T1KOjwOGkiWJwUHcYU4ZzwwQ7jJMc34=;
	h=To:Subject:From:Message-Id:Date; b=a1tr0FcpgHOlk6VoDE5uo+KQxgWtj8YQmBAcCECoYNqUfEl1wgSIFCRPjGdCkpFEjZbW91a+dPLaRJa6bJ6yn6s3CJI5bRb83iTQUZgUU8TNp+0pIqkoZt9rNxJZ/lQvWHzkfoEFBdk97qY+FFq8Ec9a+RQLP3jg5Lyl3ijxu9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TltFaJVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TltFaJVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2322C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734537953;
	bh=Ox/blwYyD275T1KOjwOGkiWJwUHcYU4ZzwwQ7jJMc34=;
	h=To:Subject:From:Date:From;
	b=TltFaJVfZSglfkNHvSe7z6GvpcnHQ5vq8sRxtIFC4SowrQ7wAXWhYGmfrrbB+MqNQ
	 rFzC0zcgFiR+h4bY34e+D8NnIeWxxqhXA5FG7Q0ohCenfchPj2qLDybVnT6CqlMy0v
	 pfNEdGvERwdrMkkPoSALVLZLQzUqK4rxgTiXuBFne3x4KWkwNiyV01gYlXmYagp+A3
	 pQDF22fZUuOcIesVQJJ0PHuH+f2km6aX1HSKBANPVnma6oEZwnh1QLq4gqBT2g6NEC
	 Oq1cSRHjnolykjR39ttb8e9rfCyyZnOzMuSYJkI9bclJRI/tpKZZXByk086YiVDBh3
	 0Z0Mrya3hUf+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F559E77187
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173453795363.28459.1948495581640742223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6798584f9c57b07910258f264669a1c95b5452ebf14f091d708b419baa29fb4e
Date: Wed, 18 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734537953
