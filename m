Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ABE717A300
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749612594; cv=none; b=oKFkWV8dXRNQ0nq3DEJwbExifR5JRhGW4C+kA6uzG+UGodWQc6Dlrw+JP1dnKg1rxIGxehqNZbFCfeOgRELtZ6078F8+w4M+yggiJFa4QF5c5bxmDo4iavIAGucA5jKWL+oHWppF/4cYr6Cqlqro0D9NhyfQrO0R9zEfqWsIDks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749612594; c=relaxed/simple;
	bh=evIedp1CawGF/PopmCoGZd+cVFsqkNxvBsIW11IhwhA=;
	h=To:Subject:From:Message-Id:Date; b=J73taM1OZrEmrGqzgBaVOysGg9F22Rm4kLcQBf05gu5taT8/yeBPeDdlsY3YrDprGKat/Gz/+VtU4tFdZ0hicnIMQVHCrrQCIErwJLv8uItQQNNwe4uc6gtoWSnPGkNzkCl8EBGJ9yBWW5iksHj1RSD6RerTjZyStBM7hVvIYTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tuoGWnGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tuoGWnGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB119C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749612593;
	bh=evIedp1CawGF/PopmCoGZd+cVFsqkNxvBsIW11IhwhA=;
	h=To:Subject:From:Date:From;
	b=tuoGWnGjTuM2e6YIwQZQORTXITMkSRBU3n8lJPEXM93cNXXb+A1UfH+cBN5mUY89W
	 0g7f0Ep+GNewI6EBEJYIzKCG9v9W8NfN+2YEf1WEYT9FSvIdCeWeT0LdEMoHCf+6yP
	 d9e1zFvjVmyQvbVwdJNfPZkHqPK0DGqlT7NkvbT1tRVcMZfY2UZROsGDtvfNSetp/4
	 2pISiVLwQSqqurDjYj4MUf131ca2IFpzc2FAWVUF6hPSiwzfcYzd9IjKpYsooFlZFX
	 yHSYy1428M1fiTnBCR/N1VxOIDf9aSMElhEKIkwm8inPgMODslh3aH9N7SIls7/sZt
	 zDQZFb6thmGOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D00C677C4
	for <ddprobe@lists.linux.dev>; Wed, 11 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174961259359.12128.4229153769902359918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddcc466372760460f5b5ae951974b9ae784de394cdfdb9999467f0da80e4d061
Date: Wed, 11 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749612593
