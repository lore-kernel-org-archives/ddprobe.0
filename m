Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDA93783C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773504894; cv=none; b=B5wmZZrieh/EUW9fvylnM6AakeMFA/JKyWH4lIAYmMOvCf3WEt0znYTLKTbxBZ2h3MWP/nf4ZBzb9mgmWN5gjqC4vlBY/muArr7ZRoYFQtjyQlmyG5wTOJSOETDztEAyNLJJb9AOJxynCuSJWYUgLv5d4vqFktxZLZQAtPprWJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773504894; c=relaxed/simple;
	bh=AKceLKbwOuPU1/Cs8fxOd2OcDbvnuHs8JVvnWt8Xcsc=;
	h=To:Subject:From:Message-Id:Date; b=TywyvWRSfWLhNAZIIpkPhbqRvgtjbw3favM15TjbZJbHMMSufpcYZVWmQ+wfOmzNA6mi0qyKJ1P8VVVNqsHXqoq5H+Qy6MaGZg3+W7iuZl4WjF6nbyOYEa2qJfsv/fpQmioWem8rKS0utepOGVqyk/PQwr5re3AqtBLAksYphqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQ/QW0Ld; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQ/QW0Ld"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA62CC116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773504893;
	bh=AKceLKbwOuPU1/Cs8fxOd2OcDbvnuHs8JVvnWt8Xcsc=;
	h=To:Subject:From:Date:From;
	b=jQ/QW0LdYbNfnWDvFJ/HETlFYyh73JTVP1h4ULj4GeowAfNbNkXcDTolmc60ajeuY
	 xEr4gnqIQLD5KsZrA28OIHiy9NUbTxYEdA5nYWeA+LRu2US0T+ls+R1SXjj2rtMorS
	 6SsZ01ROXv9sJNv1zhVgT4Bv5tFygTUEYFizlRUwBE4+BRrH8mjAPk70msA+nIdze7
	 n8Q126tHEGFUGNUa68EE9bxjr5bMY2cSaAOtQex+NWwxO7j9stiKEcFJsm0GbApeQL
	 Zt7BXgho/RA1+YBGdP0w1TNcIVUlV0eeAKTw4EbRLxb7JGd70uhPP2ajoX9YJwge2G
	 zVk+hSht4zTdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98ACE10706E7
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177350489358.1513.12607658319020523174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66649e2f5d1e9b61da81b1bfaa63b7aa44e18e20f2bbef424683b40697673d0e
Date: Sat, 14 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773504893
