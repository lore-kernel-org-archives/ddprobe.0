Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB4A2D9EE1
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753437594; cv=none; b=iXoRg/t8Kts2zR2z6pVVaLRQ+8nFBIzXsdjJLwLSCewIhoqTemG/3RlfOUe1v6ZH0xvD8C0ARagLqSkRGQ59ZDK5cuE2/DUJ+It5sZXAtATZN5zS/XmRMH8dfpaJWmo/Pisy7mIZZ4zLj+itKY7QKbmaBbOQ8yne2Jnq7+KbWA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753437594; c=relaxed/simple;
	bh=FkCPIaeJNE309Eic9PQV27ErjGJrJqspZk3w76Moh3A=;
	h=To:Subject:From:Message-Id:Date; b=oliATX2hVjyDCsqb2ONTv4SXsVy04DNrmR+i6iHLX9y24bRt3QBjw88Iks59gIBXiQWFH30M9ks447h1k8rEvE/hnjtJ4XhVvCJ16SgM1dR32yNk3fBp/zsXCVHEfK6yp3PlzEDICTzeqFBFbGqnpFJ0EtFKw5aSgLOmeKnUm48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uf2b2F6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uf2b2F6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4053C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753437593;
	bh=FkCPIaeJNE309Eic9PQV27ErjGJrJqspZk3w76Moh3A=;
	h=To:Subject:From:Date:From;
	b=Uf2b2F6Z3Py3tPT9k/LFo7vlBMg4/48+sQIq8aIe2GeXA8zdVLd8QHhcThyAaYqcp
	 S3r5umlC1M050yQtNYgY21zZXOvEk3oY/jJrM8EUwg+VkJvr7YLP4NGkOjuj3m1oCd
	 bfvzG6YRpPSs4UxaX+4807UjGwWCtNukFB8+rcEQY51Zz02Oj10MbJClRG/kvMU4dE
	 l6qISdXzu41sXGBrs0nY8fDjeT5WdIRvXSr+ia3mVIp2oA5dP85/IBfiEzgor9ZH7H
	 5EIefT20hObCzq8kSeXyvMh2nPrYlKGe1+RwdOyvyCFp2OfO/KVvGgKlPqROdAtCJ+
	 7sP2v1Q3dxOvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95994C87FCD
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343759359.20265.9640960059486607306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 617362655fa3e950f3044e05222bd96c442bdd26294725c1c5588e5e9c11e4df
Date: Fri, 25 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753437593
