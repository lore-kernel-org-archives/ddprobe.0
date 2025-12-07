Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E34913AD26
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765072974; cv=none; b=Yuz9PL1GNZhcOaNQUpEaYa9KJuvY+6cNKs6zwJ+xndB6dIKXUN4ochHpNBldhu1pVMjk+r4Dq60yoCOG/V6WrFByrONrdtOtFutkgFJB+NFWYtq6L4CDNab2NN9FVO98uE9EQelUAgz0PlYvWdFfChzGoBV5xtXCncjOOo06+Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765072974; c=relaxed/simple;
	bh=DBiueTjX0IRLWbOvbjQyn66xE9/7X1ojJH075urf4HE=;
	h=To:Subject:From:Message-Id:Date; b=ZX3k+1bcOg3MlNlrFJ6Wsu2kllUleBRvHXcmht68puZ7ogfIjA3FD+E4I3sMbSWIdu7ZVpmqIFo474tD4la3S3kJJ5tL/FRYkNIXLbYhlx9oSSHu0DpS3WH48bXUHH6u9KwHMShttszvpRGg5sfiZZI5XoZ1svQ0Ab4SdMqWufw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DeqjNPwt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DeqjNPwt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91A7C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765072973;
	bh=DBiueTjX0IRLWbOvbjQyn66xE9/7X1ojJH075urf4HE=;
	h=To:Subject:From:Date:From;
	b=DeqjNPwt8X3KYLbWJyE9e2neScnsESybCQ62TtVkZxMcf6DkAv52jWKUuv92l5UvU
	 wtJ6ijYEhvCeh5W9OBsjVj8hHK2It6JXYhwBvYpnri1DhRhEmVboKEBjwR54FRvPT4
	 Jm/nfYmm8IDavxi3zOwExmW8vsEWk5T9mn/rGhAQlLZBuBRVChf5YH8L8ZSgjgmgdI
	 x+fhb6Eh70h7cpbeOiHeSAvQniWhS2R9QNC6y66ap89aQFK3B3LGQxNvWW1CBpj2OG
	 Gr1Qj5eZ5JNtv4dAF3vWqSrCqGdPR6pDfVN9zmL0ptrOu5YULB517bc4GNJgtjiCSk
	 vXicEsNadgogg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CC8D3B7E5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507297358.29222.8952778015766889289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78b5bdd98b8cc8d5ff7b6362bf25e7bb22d4716fcea08850eb88d39715aaf9dd
Date: Sun, 07 Dec 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765072973
