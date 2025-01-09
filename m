Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232CE205E07
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736463354; cv=none; b=KDscp6XHvK0SbXwNcgi7p2+mwHW4swFpCqd94RwZduqqMLmPZAMv3tiTKVaKBncvEYP5/AjDVeWqm99/Kqy1R9H46UFCZT7f/xwIxYphgH89Fhe8MUNiMrtQxRVuIhkMUVSFliP83dXsbnhxdf8W9Kv7WDDJ2wJW+d7uh8bakM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736463354; c=relaxed/simple;
	bh=08znKqsiMVasbAh0eLejaYBENjAc3fDD7SBTnunLR0o=;
	h=To:Subject:From:Message-Id:Date; b=YtdZByQXsZj0gUYeVvqcXevczkfdGdsDnzK1cbp6YhB5oN0CtT+D0xb6zxK8sR/aPwu9ymv5ApZ9Ao/bMAQSvOgKI1M0I9do6D3VF5jYmQ9OcByr9nQqaordKbyIYRz6FPpy2+ZL4tbfxjkhzKnSdyKW7T9w9AN876e8vcVMDns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fh6sCOFr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fh6sCOFr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9423C4CEDF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736463353;
	bh=08znKqsiMVasbAh0eLejaYBENjAc3fDD7SBTnunLR0o=;
	h=To:Subject:From:Date:From;
	b=fh6sCOFrtqgwpA+kgrcaWbUDRMCH58GXE0m+SqFbbKt0EtTOPMLmRlyp+Vb+vegeF
	 TJfoKU+Tsmq0KxHIHO7kDMx2v4w61OxDQ1MgZGgBj1gdZugngG9m6q20G6I+jTIsyu
	 g1lg6iNan9TmLI3Mmu8nZpkZYWHO1ayIv/3D3MdFUOjcK6axKBW3zI9viGMaHhjRQ7
	 pSiz9vA7T3TolZTdo7ES2H0AsA6QUBN1VimEJVJm9HmMW6mTnEqOUJ+PY2VEPeAicL
	 2hJDgYrGdCQHbf/Eo+65w509V2mvayUnB4bhd7tpC+u7UaxWwl0I3PYyzSidJoJg8g
	 j/ArFIlPk6qgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 983F3E7719A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173646335361.14217.1560780715172695887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89bf773c65622605838ad81a2628dc43fd06269e246bb3f42637b5514390f34
Date: Thu, 09 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736463353
