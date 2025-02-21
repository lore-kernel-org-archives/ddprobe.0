Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3329620468E
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 09:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740130134; cv=none; b=OEckcNM9aFN2F/8qA721OJo1DGwYGHDF37AgONuq4nAlGftyji0/fvy0U6TtIy4XPPu4pFfw/3o3yZUJLspmPtS4ziGt+iSNautE2Nb2MV9tYZnxDdCWjFUk1ubvtLGlRAmzyHQvkC0DLlp8CXeWiuYSQp+LF2ipH1ilFOAT1JE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740130134; c=relaxed/simple;
	bh=97JOhZ9o3UcAsdh5jrbUkgrEiBF9WQ+ZWRQK2/cAkPs=;
	h=To:Subject:From:Message-Id:Date; b=LACBHX/kbK8zG/odKtcNQBBGodHuN2waoBCIJH0PJJunzK8OecuqZxIxMwKdmnfLn5/NEQ5v9hJxNzcZK8Z2eCU5pWzWiLvuR5K9v+hL46rMbEGQxJfLUIPv+D9pHLYPCE/v6WT96arh8sZgRRKlL+VpcIdFCJlmL0XysUrYwWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VCy3gNqX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VCy3gNqX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2250C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740130133;
	bh=97JOhZ9o3UcAsdh5jrbUkgrEiBF9WQ+ZWRQK2/cAkPs=;
	h=To:Subject:From:Date:From;
	b=VCy3gNqXvDS7ImPR4yimKYXcQjVKQzyVTLWHA1YaCMEpXHz+FKrzjsQu7FCmvI/KQ
	 ezhCn8rXeXv9jByqJ3rkRAPEtLtZxe1NwJAXvVCjsdkJn8JsKA1pr8JDXP2A2HGrYS
	 MotpqzdLSv2uo9Y2jrnStvUGn91ZaAHdOM0NFnFP9b6CFY8sRN5MBroznQ5o3m2vnk
	 iBxTdBKi+d8TAE4EHse2nObgeDefufJuVH5kSmrwJueLgVqbomFvOyGus4JytU1JKc
	 +jfWgGLAAj6HzYgWVQt4Q1fRay5/+dri1n4jjwHAkjjtn2vGLCXEZOPpA6UozGt3R2
	 ztcB9QIX3cQJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D33C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 09:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174013013358.4095.15129380185714984408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64cfc6a93dddecc82f0af576b60cc84222fd62aff551e8c2a26a427a775da1be
Date: Fri, 21 Feb 2025 09:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740130133
