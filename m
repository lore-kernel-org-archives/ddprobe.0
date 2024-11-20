Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EEE1AAE3A
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732107954; cv=none; b=OjfhOAQazAyCmpO2W9TctOh06rqyDAgc3WFgmjNfGI1xUadkWjWPfu+CtKq+MUtTZNEw+TZG0uxFsmgG1gMru/Z6aLjt7jXxR6xHVg2WABzDAyMLcWqzD0nrW+5cF9CTkKohqPsDJouNYVyjVxdkHdlyszWKzpn3hQCdlGtXgRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732107954; c=relaxed/simple;
	bh=yM/foFMUaFxcR9fTl+DAnMCnL7tLel1ohLm8VUpAH80=;
	h=To:Subject:From:Message-Id:Date; b=qeQPo8mwjkdwXWaucGFBuryf+mr1Vndq8JWRhB/6dfOpRKVnULJKc8F2N2EPXuAqukbYCgxwQHDxWQx4F1B5Z65DwVUyJsOj3Ehhbvw+I/QLIJ1GVV0I9qwlDdRUqSgso69dY9EOJee83IC6byHTiHHr3XKqUpspKxPFqe3WnnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NPCvWjHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NPCvWjHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B57C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732107953;
	bh=yM/foFMUaFxcR9fTl+DAnMCnL7tLel1ohLm8VUpAH80=;
	h=To:Subject:From:Date:From;
	b=NPCvWjHRM53BkyGINlZ+PjzBn6f3w6Vv1eDDNC18mI8y/IOtn9U8qpz3hxljTLscI
	 GAyaBl+ZMaS2iu/t2nyZNSWwOQBhRxzVYKoSKTKYJEhNnUeQTJbMK/lKEndad7Mt2O
	 N3I4d240slByL94N8HIBaNFFmxGm+a97sXSOocByQn+VZp0iuU6pm39zpvLCzrEywF
	 4a747zUmZs5ByII8FA0OS9F/iKcIXGUSni8ptQv8qdDaLE5wWF/LLPj8wVR6UNted7
	 9XHpM/JyZSK2sFe77Nwd04m0yaX/u9IIa7SIfrm/OO5TxKnN15WsavIVdAsjOUfFUJ
	 fqpHE0+QmidIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E2BD63936
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173210795360.6377.8724710930951641337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56858086c05307fb5d145f55ec165586dceed9ba8e5d3e01a3c5a7a78a52a6fd
Date: Wed, 20 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732107953
