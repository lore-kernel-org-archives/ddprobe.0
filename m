Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6002F5312
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750199395; cv=none; b=hESbGFLGQykuSiRosD2o9QD5XcdrFenuSIu+aBSj0dCDnQlFRb5Mlei2uexCeZWHPNktDv8f+K1lFwUBNGT7FP1dZlBiTz2TV5EjFMeczHHm/VEB+yNVCI7dYBG1lPbTTH0+wGb1DL+Hd/GBgWEb6qhccwAzYq5Bd/+zGCtJx9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750199395; c=relaxed/simple;
	bh=uqjJcNzTzJKfQYsoRRt+I17O3FjLQXnh+9nfqexXjDo=;
	h=To:Subject:From:Message-Id:Date; b=bA1136XzoHX10XL4c3enLsd6iCjj3n2yrPajQ8yM4IUzsJiBvbETCJfIzXHwDjSJvb2+LX14ySuI144yfoZYGwP2Hc/4jSSSZvgaDXvC2V04s9RcKpUEDlD5yoh3/W58mdEOhNm28ZxDFOaqxJt3MlnA4mOLydx/5ytJdc/QN6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knhhwGBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knhhwGBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53ECC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750199393;
	bh=uqjJcNzTzJKfQYsoRRt+I17O3FjLQXnh+9nfqexXjDo=;
	h=To:Subject:From:Date:From;
	b=knhhwGBD/emHHLYkXyJx57iJkWMLfwbYWw+uRhV4eihVdnejVBw9kP8ObLWkKBIio
	 Sp4d9agi9xmkjM7pqxosI+GZ3TTdKnibT/QILIs5W4hsJAaltzRHCW1q4tbkbogHzr
	 F2PJ3A1NeyFuLc4oL9LZoEYfVQmEOjKIM4HekQO9nXJ9hYZGT5U7h93NQXDixmpnD4
	 OVFqtKB5WcqslX5J0qhv+UtG1Zh5iufMSj3BmyQAQmi9OtXoLYsErjescP9zGvFPOl
	 FeGxJW9zbK4edk6ikAwtQXJ7nUnVabQYjyUNm7jqXTR9vMfJqZzvhYvET6gXBUVMAv
	 XpUmcjKdW0jNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BAFC7115A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019939359.30092.17273420695810906205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5680d9d86128dcda9418485f3fd31a10c6859625e5ec85d09e81286f09d58de
Date: Tue, 17 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750199393
