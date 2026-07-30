Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8F73783AF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785379834; cv=none; b=eLT9KNKCVZ0rzyQO+zcNWqTyLLLgx0bwcgwVfpBRVVK5uJJ40hABklGqfpThFAPLylpVamos5JaRppGZxSyv735iVzizc4NwSbvebWJFPooGlOswg+ZXjZq1nEw3LNLjHfsju92SnCK5gbRjjh9m3CeKerOXPRRIcQsJrxtSqw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785379834; c=relaxed/simple;
	bh=2qVupkZvwFysa42CdalCJhcpqOt7k9B/Zt9iI81z0Ho=;
	h=To:Subject:From:Message-Id:Date; b=uF52zb99qKFI04pzHBUYhAK5X2+N/SzQEHynvDHYLHHGyZ94cootKxs3rmuTlv/OIOg7m2SiHHs6mse7g60BXgLgX75Y68gTMnyBXvBUp1cHhzMYu1vyOel3iNBlxuX9PyJlMquK2EO1RyLBz1oqoHfVdiy1z8bVH1Z/aCQu/LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBQK1bBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBQK1bBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB221C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785379833;
	bh=2qVupkZvwFysa42CdalCJhcpqOt7k9B/Zt9iI81z0Ho=;
	h=To:Subject:From:Date:From;
	b=cBQK1bBKj/fXdw3wDQ0q9FbsFiPGNNQgiWElR3bkMOCTcBuHaBSZjDrTUfA+quNZi
	 P/htqgaT1N+NxRnlGtmNVodzOUOo7jXfbVSGWPttqPW5gFi/vE9uYeQLmCub/joXgX
	 5v2CHbrkCbJ9yJHggPJi0j90DnDwx539ZxCuYJOPY/nsATnfuEjqB0knrhjnaNDz/s
	 9rivXJkE+QwbPqSXM2Moc99yXUq0T/pF6/NXUfiw0oD/CzWfQch1vKe3sYNzrDqh5W
	 yS1nKNYEq4ZZ+xXooySKVLH0ak7PGSXl8vNNbi++naHp+Hs47WzrkP90cns+sajR7N
	 E3tb13f6xsd8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92C9C54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537983368.32497.8000669938978293839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13eaef55c32c05016117b0ffe8eb5c7dfd8e93d9a22a3aaca2274ff00e546c1d
Date: Thu, 30 Jul 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785379833
