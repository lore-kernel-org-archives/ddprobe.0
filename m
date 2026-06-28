Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F383AE6FC
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782676714; cv=none; b=mKQcjRooHggx+t79Sl0xAjmIFSoYrM9gLox+EUjF3DtjqVqrB7L0T7UCywh+SZ096PWITgmOigvNF9dn9aNdSi7/pzQJY8HHK7/GnW3Beav2bf/n6O6/u6WPesJKuG1hRn7vau8nKPBuHasFlXwAvTDBDDq6zHcw1uEOzsE4Wo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782676714; c=relaxed/simple;
	bh=ZNbiGJhfjepo4Og5ZmunuSE0zgHyZIGg1hoGgIxcHX4=;
	h=To:Subject:From:Message-Id:Date; b=qa1OIeALMQwkrRqDa9V+ItpkxP29Kfjjo1UhHxQ4qnjMd4X6SJ/ljZ5/IsHS84G7i0NknvLHBujSAJMVEpTudLfrVn4gmMcy1NUV2V2JdGUduCYF4zTCu2fgMF1az0A9wc8mUxFlqRUmFJC4mVqxmN8wjodUm/XWqBGweUSjc0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vLrcxEm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vLrcxEm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D144FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782676713;
	bh=ZNbiGJhfjepo4Og5ZmunuSE0zgHyZIGg1hoGgIxcHX4=;
	h=To:Subject:From:Date:From;
	b=vLrcxEm338AVe9AO/8f2tRPnJzYiMi7jrBeNmdm6UNx0Yxr1UB7E4KYSDdT9jjaV+
	 8f05MNBUBHG+pfk+2DxZ5O8g5YASTvmUsb0+NqRw2Wo6+mFlc5t14ujZ+TB8deomNh
	 fcPbBxU7taS6Lr2d/Uqe8qk3H5onMTd6xW+8ScU5aSNfK8HO+LjeYoCXv2UfV91iEx
	 TkPZr/6spJesyHpzXOUP3qFjiMIlu5F9zR+oOg1wgdRvJBJwCcmj5vO7TndWGr4mno
	 +8L7/0E9mJHYyIvl5ZBpN0k7sIWPN3qZ4A2uaxreI7gQSmz6NHW0lA5FHLfTIdikf6
	 DLNlMaqmnJ8rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CC4C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267671369.6964.14001342891274619079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5d69df706d4e2b374abc0d2f446dd9be50936da85d20fa6d4ceccc72ace2c4
Date: Sun, 28 Jun 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782676713
