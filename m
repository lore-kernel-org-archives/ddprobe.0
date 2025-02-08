Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38CD5248178
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739028354; cv=none; b=J+0j0iRC/EieonjwbDVxMF3+JMiqKt/K9Dmfvh33zjBCN3ZLDDBl479xLZU0bJIG4Gqjx6eNaotAZMnxYygw7S0XRZwSK5RvWU2ZmhtPTLyIYFmThOPDMy/AntDSEm5o57hgQHQVeDNOoMZ+IXinARKGhUNts5eUeOeNmG1Rw24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739028354; c=relaxed/simple;
	bh=3Z504MIgQcCjWTvuQ05sjufZ6xtdbXy8Db2x6yzxmhY=;
	h=To:Subject:From:Message-Id:Date; b=dHnZFrprxb/5DmtDZWAPsPE7rhV8NiSDM2z0QXFpaHaunFnwehAzzlKpy8nfLPoL9EbV93Jn+dXOJQ2CYk9z2anIzL4oZy3X0madfM3OCEBE9p50RI7zIVQP4/8x90Kwt80y+I1rlY6GZd5hP6j56MOWr2ENo8xLPAJEaM+A1F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vM09tB8f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vM09tB8f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADCD7C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739028353;
	bh=3Z504MIgQcCjWTvuQ05sjufZ6xtdbXy8Db2x6yzxmhY=;
	h=To:Subject:From:Date:From;
	b=vM09tB8fB4Z/HBf4UYjtcBe1Bz4v/OxZqugxzJy4EmnvL41s5eqFywcS0XnDBfElW
	 pIg6FYXHUrq/Nj10s4QDT4UzUy7yHYUQPNBidecNUhTNJKh1a0ozc+7S1zEfhZ/FO4
	 TYmP9f3wo06G9uNk41CPL3mjqOierkebwg1xZUrLEx/3ew6WJA6iL3SarSSxbYBhH8
	 kgWdsTIur8M+ZcKt/MmE9Ljbc/IbcVwnXvnpSNxF9eG4eaBT87tSX6rk2LtTvD+opG
	 19eAWm5vsISo3E5jLjtKVzK57Jt/Lbaip0FFqzEREu3tuHZr/ak60VqziEbSVnhRx0
	 d0X3HFcU93o7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93621C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173902835358.30831.2950401145697926676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b3dd21ef7d80ecac1f2137539b7cdf8f7b6147dd92e5523100c407b274871d
Date: Sat, 08 Feb 2025 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739028353
