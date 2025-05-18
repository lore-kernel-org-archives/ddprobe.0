Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341A61373
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747574395; cv=none; b=fKZRhJ09b3aElErlM3qkPYTGwj7v2S5U40wGClGhCqxnSNaA+qGSQpwXhtwj0JIxlKIdEw5zwakPYY/LrpunKwAxvwyPsUfSmKcHAtc3IjiTx0Fm35hRxu+XmxABrt7TWskIu26b2HthHUosuQp61jk8huDCbA39yrqiCGPADp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747574395; c=relaxed/simple;
	bh=Pdc2fL0GeZEq3pW6mpq/27tHXkpF9jwRRoB6ZgfhF1Y=;
	h=To:Subject:From:Message-Id:Date; b=Q5l2/fpbTttYFv8spaUIqRiO+0uynKtzs2eilw0uqxe/6InECIdcKXBVFSSxOa/FDPGy3kGZaWHJE//YqaUPFuy2gJ8bKTTZBxST3lYyjqzKIXA4QLtsKOID5LVB/dtIfQH5j4ye67cqNyPLDri9EH0Xp9xwqAdxnhHxi4f5Rb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cf8TIF5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cf8TIF5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EAEC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747574393;
	bh=Pdc2fL0GeZEq3pW6mpq/27tHXkpF9jwRRoB6ZgfhF1Y=;
	h=To:Subject:From:Date:From;
	b=Cf8TIF5zdmXmSOYWpWSTLg4Qq8v0awpiHS0Z9O/WzI/wViygwVK2Ll12ZhBUOAjtZ
	 dC6tn+sRsSbVubisJZoLd+byUjCIcjFb06RKYt3OxVa3NljlNAAflSh0ePjwiAeO4K
	 hRK4rn0L/99tW4OWxQnoveWNjKZYDmLlWbzw1KutC8HoOyhqbghdkjx1Arv0vS1vtb
	 zXa4yZn6hCdW6W24TiVICoz/hQUdHubLSaw1muexhtf7RRUyrLjDItzdt23/x9qi8U
	 fbikl0XAVwIcLx9SZ1mkCcKM7O+ZF6B+5ojTXtG7aJ/JD69BlC12hNtI5wlTpf1HmT
	 SF2ArCoJ+uarQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949E7C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757439357.17398.17386328446329825927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41db20cca6bc03e4ef2e6375e7f5371a14d3be844a8b14a39b858b3245871127
Date: Sun, 18 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747574393
