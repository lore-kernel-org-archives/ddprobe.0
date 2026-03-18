Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1773E1C3BF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773798894; cv=none; b=jw6rgp2b4eoJ/PpWUK2aHTagOtGKbn76u/VASzZRaN+kl7u1LYNrDpkuT2xT0lpTn6SVWiFaODbVgOHVxZTlU32F4rPkVbaaRVea43ir8qZwOF65W1vCr0Lm5ZqVPijV8EfUNd7AaKmO8a5lUcKC9my98cYjRJlNRYF7UEA/b6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773798894; c=relaxed/simple;
	bh=RUUSZ34UmW/gvmag2YZ5zheuLVK2s19ldK9dwmZ86mE=;
	h=To:Subject:From:Message-Id:Date; b=NJrMTYfs5/yDHkJlmb/n6WUk8JT9g2GFAv9IrzanIr/2d4GBF5VBh+n87kpRAczUuPKN7VPXbvy2E0nJt9AXXSgP4E8ZVO8L157hFnQ1oaLu8uCPZUP/SfY9JRiBPpqifb+14LDHnRNIdcf02UrN7Eqosajlr8cysJGJA2dEYlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCfe6Ltt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCfe6Ltt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B73C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773798893;
	bh=RUUSZ34UmW/gvmag2YZ5zheuLVK2s19ldK9dwmZ86mE=;
	h=To:Subject:From:Date:From;
	b=eCfe6LttcDIXNpBihvyHRevP776lSnRbFz17xxhg5fw4O/oh8k+ZWc0/2KlNjZr2u
	 waAVS9/bRESr1VXSOInC+T7r6gQy/22TmjdLRhi5uAJcLfftIy6Uul4vHpfbJRW+gM
	 ogC1cu0DUUMqlRZaDBNnkJoOFvbm5v1kz4cjIXrhi50gya6QvACzFYGaWio9YZsX2H
	 2FdsakikW9d/L3879fVmcmpUHUsLaLrL4VI2wPKvMY66GOQI3yfCMLxjLF7Wcr/bkL
	 k/3jFbvS6crwMHAQBesVaFZB8+ojb14RepEwJPkfPN+TCl2VEpUzL68BbxJjzcH3Q6
	 Oj4e/mg1a6QNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFB510854CA
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177379889357.15386.17967394132866866620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce5c7b2b76fa96ebc8f6996e3b4a4bd8af6127bcec2efa061fee1449f3af1dd6
Date: Wed, 18 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773798893
