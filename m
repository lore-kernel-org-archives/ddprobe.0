Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255A233FE
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723623354; cv=none; b=gVzTLMJHjwkHCtNRJY6ryaYotSBgNg/bhr6GLHQrOwDzKWKV7/FzDU/FkyTgWNaB7/H2rnNaPwa3bnQEaUUeSP4L60bmEjgKlwwrBb22hQIwP/rKMmj5EcgeC4+Po/6mIfN9m7RC7+w83E9DC6elP1KO0bztsfw5AOB/1bUefoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723623354; c=relaxed/simple;
	bh=HPijZFT1f/Tev8GO7eC9FVb9zfCt8GMlTX9E2RURBqw=;
	h=To:Subject:From:Message-Id:Date; b=rIUT4LV6DmNWeauG1DGMqVH2kNzkGBFiiKqP7KqLx7lgh7s+dWKx2GTdYfpacgW3am+lVaC3pAB4qtXYYgvbeb5MqvpiiFqGE1xZ3QDKZlQX5Oeh9qZc9KnLYU6dhFnr0REj0+0/ccc+EBo//Mn9DNhnMS0rMxOoXHzr1zc+HdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8SktZNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8SktZNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8280C4AF0D
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723623353;
	bh=HPijZFT1f/Tev8GO7eC9FVb9zfCt8GMlTX9E2RURBqw=;
	h=To:Subject:From:Date:From;
	b=b8SktZNGzcpZvFKrFI57gqti7aCDGDwzPGDte4RSiEmn65f3B7k/rIxyCnUW+BoJW
	 /SGmVLhlKCxgjKibp/vMW1cThK6uQogbfjVrlbngTy8vjwUHLjElmArL3Kk/ABjY2h
	 p9KYFY1250z3fl33cA7BUIMqQT/mP01OWF3ALpcfbFwHl9BOXEBn7313FWflAohFhV
	 Rjp2kxoT/DKeLuWkSEa8d1XfE0nvFur/95WONRYEu4eKKRuVYmtEvOkt+4ixF3h3qC
	 w5hDtQ1jnzFkrw+LWTRMQ+ZdQx1vMvQ07Ckb1ejrKY6DexTo0USAqkNMcbTtG1d9Ft
	 zsukzrQW39yNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94653C3DA4A
	for <ddprobe@lists.linux.dev>; Wed, 14 Aug 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172362335359.26576.5053825502686640263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8e30daf72bf8ac9ffc660de674b444fa0e7077b533c2bd3aab3345a2f7f9b8
Date: Wed, 14 Aug 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723623353
