Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 625CD1E49E
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 12:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716554003; cv=none; b=Xttn7Ib42ly1QK4DwmY8cqe5IghnutaAWfzjY7m7WsiKVa/b+OYc98HgeHWAI7Fi45IOmRVIkjBBKNRblvcztSkp8urEEwG5D9aVXH+yoDfo9W4yVaSyz7QtEN3HOCONc2fKxk2QBjTzC8kfr8DvH8KJ9+czfMY7zG9C/H8RG2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716554003; c=relaxed/simple;
	bh=BKjS7V/BMmEvtUfy/+nn81mEHDkU+GcRNUfEasuojT0=;
	h=To:Subject:From:Message-Id:Date; b=JQFg5jmT6/pShlLpUlGx5+Nfoq6PzJd856sLXOLHGuec99VvBCk3CRimcN+0shxykVQZO8SvxoWV5Gzb+ZM/Q9WaJkWhvzSg80nKXARLaiQ3SLPvltd7FGmKVfY7i1UZoLXV//XZX94Ylk6P47gb354LFM6NPKCplDhIWF/Tfo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I8koQf08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I8koQf08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47E8C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 12:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716554002;
	bh=BKjS7V/BMmEvtUfy/+nn81mEHDkU+GcRNUfEasuojT0=;
	h=To:Subject:From:Date:From;
	b=I8koQf08C6jdEYX2X0rfDLXbbwfKWVO9kcao9+H6mg9Kv5v203xqBDAlpY908ibFD
	 3yaMgB40bn/t2z/tW/z0yd4SahiVF7afejATMdtcaz1Z3TVUMFKQH1PzOXG1pLJ8xv
	 oZcNf2IgO80HDcpUYeMNRh6FI2zlgHTFlt0i9fZowzuoOW017z54ctSR2QPnNWEzzH
	 h+VIz9xHI7UKTJPZo1sMCi8W35WVXh4+0XMJRnZge6YvL55xmgQpRck9ZW359z/2Zi
	 74jTtHxwkGX04quVfyLJ20a7BROnh0yglIirJ4OdhqLftxlcNdLWA+M1DgfWcb81lm
	 lie4BSyxysSlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2F82C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 12:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171655400279.10394.14056787637355461573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cec18ce430436deb2359bb68ac4d1016303ec378c5b4486e177dc1a21d8d544
Date: Fri, 24 May 2024 12:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716554002
