Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321352BD587
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770675234; cv=none; b=lIh4/iJXn8ctD4qXgfhhNHXVKPr2XzEEaCnHLFs0OQWiQb0O+zM1ju/j+p3Qb4Gf563TusJxfxkWPlR+1ZMRekE7q63Cms4sXmVejHgR9k2nL6rL4xUEINeBPEwqhs0NY2ju1yt08B2wN4Cko2RdQdeMC1JDczAnXSu5JgWcV9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770675234; c=relaxed/simple;
	bh=3yZ4JHALGrbSusWTUq/oouqG0aUVYw/bhK9gb+u/LXk=;
	h=To:Subject:From:Message-Id:Date; b=KPXdnwdd/Ui0ShiD5a0L8Qz76BcWj7/d9gi2LeM5UnF4sO/z8wrIvJ1UfOF1FXMVBYRkUR9ymA3qd4wRNkDbJcIhjCSrdfGp12cTNHFqhFv+hdf9ALkD0FQgjoSqwThXJFLqEMdj/h4ZVUjKy7Sdyh3mM69F0MJUeGnnQ4PjNGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dcg7RNbW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dcg7RNbW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B507BC116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770675233;
	bh=3yZ4JHALGrbSusWTUq/oouqG0aUVYw/bhK9gb+u/LXk=;
	h=To:Subject:From:Date:From;
	b=Dcg7RNbWtHNsR8n4Ubz5nWCovbSouU7Lw0h8GR2P9pnRX9tYMXcBb5wmis5p7Sv8m
	 2mzOb8UN4zMqoEkcH2NRsiQc+KBBDjE0ZN3jSZqcjuG4reaTs60kxAi2TECGbvNV84
	 U8FVVcFUCMBQBgAWh3/zdzNgCyip0E7jIVUx94KsK3YmsTpfLctJWi12/lMm3MMLmR
	 ZFMQvlbl/qSzrtq3r97kkaKyQ+Qfv2rLpKDpiWOnmjbES3baBChdiJJgJfWkwYQzJE
	 vU8qiarq34N5cH4KGLnLYnmkCe3zir61Iv/NpI+AKJnqdUZWPCBHOjru+IV9b2KC/A
	 FEVetf0E+ubgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ABE6E94614
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067523359.19353.4387856987444049087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bab86a30ec035416cc5f975d96c8f9acb4762641a59372bcf66f54282e1d3853
Date: Mon, 09 Feb 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770675233
