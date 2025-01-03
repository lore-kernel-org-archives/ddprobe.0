Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4139359B71
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735922154; cv=none; b=qBAQKrHVwGo4vtLbcJShY2xcPgyzyQz7nKtRALjEVaI1tJQJShDSvJzHsdMqmOK+kNmZwoway9rhCvnEH46Uo/zkt9WXaLT3SScXq2e31gf9IFoaPVlUBmb4OS2Xzdhi8JATGGGdcnt1UUtz2u4rYNZrI2ZL4qcK0d8cuZdkvf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735922154; c=relaxed/simple;
	bh=WCZfp3mBgCKKNK9XqbSEQP2CEgzaC8pSNGLvolf/77U=;
	h=To:Subject:From:Message-Id:Date; b=Q5zz7e18W/n4KWgpqxFhZ8B+3hYM5g5JDHzaU5NoJkmygk8Yti8YCplodUPpnXpp1wIPHGySXxM+ABz8i4dgJgMl0Ms0k5A1gtqpmF90VrDSdcLM+Q09b0WMf6eofBFzT8zcDeZiHhDs10nsumDMJywIcXWcXltIeqVCt3BovBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ir4uP02w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ir4uP02w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFB3FC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735922153;
	bh=WCZfp3mBgCKKNK9XqbSEQP2CEgzaC8pSNGLvolf/77U=;
	h=To:Subject:From:Date:From;
	b=ir4uP02wYqLlpZ/LoaE/sIIAeCzxz2y0gRE46YAU+XS1ET7WYmLKpV/mvM+OOzbxA
	 ZEtX69sIbdJnAQOFb+K5r4QetZlDjUc2E2SSNevP6ew+a6ruJO6EZZ4NhkkDzW7TKY
	 Tp3mdkr4zgAUw3nmIW8L3h1URbWZQcrBJAlk4L5JG1/r1vjjhB758FLEPu87vAByRg
	 BFj+Ht2A2BmI0bq5T78q8XfZo/Ot5G/OSsuSXqfAIVDE6pV0aLrwQnpaEcdTXIK67M
	 WBzv5E3O3NWwKHrck8v4snMGW6lIC505TDu+RsESGFU0hD/jpnoKfnZVcegjtTkG5E
	 fOHeWb1YaonJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98913E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173592215361.21765.17422117076488015066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c29c578b5f238c6be82f252963b1686f249a59a797fe25b76064f8ad38b8b0ce
Date: Fri, 03 Jan 2025 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735922153
