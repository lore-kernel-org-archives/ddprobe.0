Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDF642A9B
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731548754; cv=none; b=ty/79gNB8ZqYTe9+NeqQJn5BJ/8nv1zdXz7A6ouBtlxaKgQFSIVI5dyI/HVO5kZnFCfOhKvFTlL4ZOTIX4E6rWVYv4o6yMoWgJ2vILhyOCi74aCKA8yvC9C6avm9g+nBAUAbbG5e3xFpH4bUndkqA+l6of13UJC9zS145RXnN7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731548754; c=relaxed/simple;
	bh=fBl/blTqKq+K0MX0m/LKXDXVXK1h3niRwXbO8sow36o=;
	h=To:Subject:From:Message-Id:Date; b=NGw/TAjBbHcmtp4l2yZem5HMjM7hiBukGgEnYNB6ZM+CasQRBVhnzjoCW2D9oi+rnh3XIEQRYu2rQnFZxNySVyh4SjSty33SU2bLFR6ETwk1vsfIyCHZSzhFIeYpV0EnXTn3ZVIbIDuI8m1XhqQARcZX1s7jydpft8b1oK58ZHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mPLocOpV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mPLocOpV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81CFC4CECD
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731548753;
	bh=fBl/blTqKq+K0MX0m/LKXDXVXK1h3niRwXbO8sow36o=;
	h=To:Subject:From:Date:From;
	b=mPLocOpVz/tg0C5ny39AuIPgEpJYaUxiHSY68gyBuP4nkH6xs9/EtdCm7lLA6vP2R
	 PixVbp+Vb1HXV1LW3521N9J/p6M+EodkPUbWCYbJrjaFn2TxOkcZ67oYi9+Zahw6jj
	 0biq3N35LH12n3uMm5vC7Y2VXdiA6eguhL2javMyChHSWcWeBNGl2WZYrl7T9qYBNR
	 2lyt/7JskmN4xVCwMHpyzOZW0ubJ3T6ngg+yejkwV7jDS5C/PF/mSuUJ0obqJjRW2Y
	 zC9iwnBOqqhGudorwaZZNVsMnj6EcGxaARcA792QXPWAS0E3ryNQ5fQu6w/k5fIWKs
	 qISqx6O1vKh4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CD9D637D5
	for <ddprobe@lists.linux.dev>; Thu, 14 Nov 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173154875358.27211.12325143201901047018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5cced65fe1ae8f2a4b3ab903b3271c2d1f4b056fc8ab3c9abaa50c97e9c62a48
Date: Thu, 14 Nov 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731548753
