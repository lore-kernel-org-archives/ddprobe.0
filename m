Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D915F1E47AE
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750661393; cv=none; b=m9YdyCLIjftqj1E5NJg8haeNnadX09LNAS+bdNw54ZOVI0Qisa+fD41khN5X+KOGsXpcvVnsIJIu3CZwKZWoDtdQ0Dy6Ll+cKb4IZrRS3OrqhRo4M8tqZImaGkUeUasqlKXkkwXAHnbtNXhFhufW4QH7DdRDNpA6RvqYKYip3mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750661393; c=relaxed/simple;
	bh=Sh2qH+U///ssVXpYxrU9VLaIwX4fK5ar0Opou1kREqo=;
	h=To:Subject:From:Message-Id:Date; b=N23VPjOAYmkjo3MutBT9701UTMFFBWFmERbxULjTEi8cAE1q6pAdxZZtuv8l/4NUMEopVdaT0+qCHBgxVQG8LfRdpKVEBFo9N+g6gYQSZ5CQESsRu1h4FWZTr8/CR+ppXZO2pDbAdYxfzKuE2T242XQQMacGva5/u7pDgfD1Y7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVScY4RG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVScY4RG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC13C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750661393;
	bh=Sh2qH+U///ssVXpYxrU9VLaIwX4fK5ar0Opou1kREqo=;
	h=To:Subject:From:Date:From;
	b=cVScY4RGK2s/Lx9DXRsJta5oIN4WjEUk9A0/5ixC/LOybceSZDo/5DEpG0MXL1RqM
	 gvIX+sKrtap+ZN0OeRc8qVOiItywIiPRU8nozro+pnqKNZOJde1CfcPhzwCB2uok+5
	 2nbcR0yTLNnv6Ntz995VHwX1Vrh7kA9UqC4NbbYrL5CNsb331sL+yh1RS7Q9VvG74x
	 QhCnkRNt0uIPNE2UplwANfLdYafvZYWCMkK7HotUzBpkkjLgyf7USEm/7yRkoe9srV
	 t2IlV4jMMmvko77bsAbD2aGnsGqHGQgMFet+aYzs+pkU7g984ruB4FDSoQnvLzfHbC
	 AjbBT4N4pkhKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9188CC7115B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175066139358.14255.9933030558056841508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ffcd8d2a4d8ca09cfd47a343b16166f85ebd68dc483ed11c5d95dcebeaa5571
Date: Mon, 23 Jun 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750661393
