Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39CFF2F5A
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724609754; cv=none; b=WoYzEVQJ/HklcMvjzQ0BVcy64Pg5XFtYS5JQwJ7BObhL4mwd/PlibKYwPFXKKVI+dOnPwobWOJIMJe/4LLEkIEauOIXOcj9NjNhtiMJf306foA37tMUAfZ608IiirmVJN9Zzc+TZ42u2xeZVtsYP4FD2A/J2NAeiInhCb8r3DQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724609754; c=relaxed/simple;
	bh=dSsMRzxR4NEOUlsJnzV6GQWzuq1rG8ulxJJNnXyXgkI=;
	h=To:Subject:From:Message-Id:Date; b=QK4h3meazZo765UYLFe7WLUdrUmp7ubw1B65SGy6q8InuqVoH3EVqQtFH8E2vhaTuiQ4mDUDvygcA0ely3ve4adD67LaMpqY8YDov+cTnvVTa7IPkDxcw7HeVA8bIpYSm7+vOf9me/+KMmkHVXfqaZ6Fg4+OACCB/KFImaySZWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sAHsYyBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sAHsYyBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BE4C4AF0C
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724609753;
	bh=dSsMRzxR4NEOUlsJnzV6GQWzuq1rG8ulxJJNnXyXgkI=;
	h=To:Subject:From:Date:From;
	b=sAHsYyBGIYceWLIhYpbXEi1v9C6h2lrFtnVrM/lZ3AeVyJ52Iasafr8LeJmgFeuzu
	 xkpoYXpJvdNTleOE4GcciUhxo7DyL5YBnQ0VfvM+OYCQjVuTEfA8dyMUhFl0u1qktc
	 8MmXI2RQjsNwRXqM5XlP9cUaSg7K5JcYQxcipMYNAhbS2wR2nWKcnEuPpObZfn8a3p
	 6pRkt35eAFQlnzSrx7IGgagDVC6W6iip7+MQ/aY2ZfIH1fs/gcfgOBI0z7t2UIeC1y
	 92Ki4yRTxXQAjKziHz78L2Y5NSRkSFZiNd8k17caPLXReRH4qvA4jckNUqDjjFDzZa
	 YYlQu5aE2Qhhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9E4C5321E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172460975360.15293.11207492651518213732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3981d6c7841e17fe1e47ee0e0829f16d4ee16a17348abd19eda4a5428d4f3bd5
Date: Sun, 25 Aug 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724609753
