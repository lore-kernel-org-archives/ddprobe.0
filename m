Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6302A1F03D0
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 17:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738344354; cv=none; b=B7WGSxwiPPJwq9IGp9v369v4WiIYEbnDdhEfNdyAwMd0sNEskZIFtc9CTIjx7js8BYLMaRYp8ucskF2bCOJoew+606TxzFjHcz7spwLjwh6h2enCwY1OwFJg2I4MnAStQn0JMQKeX0gguwnr69WR5wxJ5vfmR+fQE8jTZWUW6Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738344354; c=relaxed/simple;
	bh=9kH30qqZnXhNvpVnpUOymuxqXqXjJ83vsftyCQGQCoI=;
	h=To:Subject:From:Message-Id:Date; b=Qmji3lCoboexYYLU3qPSY3g9MPbvAkUjworuxJvoOsk4+VzaaKqoScBI89XV7QWlPy5oq9bEvuzWKdWC1v2nia1sPzh6GoFiGoq0Vb13Ub0v3o+KBztaCJD1lmxzj/Sjd385jYgdhtgF+q1GLq3Gk+SPwLBQYuHto6ohXt7I5Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ufxfiLeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ufxfiLeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA823C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738344353;
	bh=9kH30qqZnXhNvpVnpUOymuxqXqXjJ83vsftyCQGQCoI=;
	h=To:Subject:From:Date:From;
	b=ufxfiLebqPNVgKBpQ+E4YC504dDr6dKtVlncs3HtTF30fSkhDT4uEgTMJz7mTfmnw
	 tCDSI2LNeTDIVWEdmMATwMZYNiw/e5yeER+nl65TJY2oHTNKfJ8bLrzluYUhvI1s3i
	 SDmB7TB9c0loV2kKFdAH8NxCBpbBuvUTOj0y69AQQVLnLjzICEAFE5XJWFnVNJ6bVw
	 lBjxI+hhbFzUwS62iW7FKp9MM3r0OW/HgxYxzo0TjupK/cGqRqpyYfXPUtSQC2lEi6
	 TgKoKRBlEs48O6CIuqp5xKrm0Dz5GMANUHgUGaUMv+Eai/IJQdGbaUTLnAqUdy23sm
	 D3+Dq17vvyP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5556C0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173834435370.1495.15211391028801293941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f98a98221089001f1715be03bb764272cd172e30f652e9c63108ab9f674e19c
Date: Fri, 31 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738344353
