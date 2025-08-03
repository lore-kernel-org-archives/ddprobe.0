Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4472E3705
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754188195; cv=none; b=Vjp0AuAVBnwudTQURxqNvf90TqHAVZwYjcEYqWEsrywxMl/uHxxVzC9VdKDBEZD0IcXxDhDAZp9GcT4cdg0HxsW+CWQrHD5FKx3JDYs6VW7PXCbsH6gZeYXoWNoTaDyXi/E8JpHhjvvzl29RBDji5uqkwXmbQEraOuYLhl9DLoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754188195; c=relaxed/simple;
	bh=L58CsUojcYrRk56hFwP6nCQDmLVWicQpEfX2Y/VAD/w=;
	h=To:Subject:From:Message-Id:Date; b=ITVDg2+lDLL2pnWmHsMB2aTv7/KZ9+gaHYytFII4VhRysQXDttnTnFwnutzXUDGGxPhaQ1SGILO+v0PqMizlA+mxjUWhAYQmT040JyNGvM4qzvdWFmdPa/ou8iEbhKm3rPbPIOHHqfrsLEAQ9G9Id5DPlmTzfnzLb27f376rQTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PKkiqq9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PKkiqq9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69B4C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754188193;
	bh=L58CsUojcYrRk56hFwP6nCQDmLVWicQpEfX2Y/VAD/w=;
	h=To:Subject:From:Date:From;
	b=PKkiqq9f+YPx7zpnpDUnqvN75pDDhNUMYWiWnWN916NNa83j+5N7h8uQcdznk2IAY
	 PRNGCDqtLKoqG3m+Bd2WeaUZT8Nd3zsUjn0xTffH6H12Az2QXFWRClZqavtg/PRLit
	 WIZhEs6mQi2/9L7QS9zjxVDJRMaFfQ/nM4owmJ3FC3Oo1wHFsjbR5WpOb7Z+Axn9HG
	 Oep5AuVsYtgq/a5KwCWa3obgUrZPOZToOU8eeUK9rsIVINIaiIilNM3sxdnZaJi4L/
	 BehuUXl0q2IpoUSCix/y6tGq9DaT2QDnyOdPVP2XtzwfIO2RwwxZiOcjLze0dITs85
	 G00k9Pw92f3+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CCFC87FD2
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418819357.23210.1514739089038257519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c830318a10ec6d8178c515c461dfbd28e5cd6e9286f4a8ee5cc273d3aeb371
Date: Sun, 03 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754188193
