Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D87DF44
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708918697; cv=none; b=k1fr0UYxsxmGxlnctZQgyERsdFZRpqtmUdyzTER2S4Aah76wCB/NGPTiJisgCfSj3WQ6+Qp3fdwWzkulnwbiiWpFyrZQz0kSjmlg4Jc/9mGeyXVumLGsLHHjp9HLPaiGlmaT949HvOFTiDIaWS8KUvNwCJPXizYMpsG/fJ4jxw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708918697; c=relaxed/simple;
	bh=CMEXd6ETGkjRKS4qP5tj9IRCi8lgqmvDH8RtzZ7cGqQ=;
	h=To:Subject:From:Message-Id:Date; b=fbCkXzGDDf+0+vV3JZRHig9GBs7qa+6H3xAoOpjhvHGoXCerO4H4tZyWpo2TSZBKsli5CZP0KVIjdBo9xdN3i7lS08r2+ipttWJFIxKrW/rck2bBIWZkWzoKTNgQ5Ty6E72ojPBQApXRqYcBK7KExALG+4TW/r2Ja5sc74+opqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NeX32GZi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NeX32GZi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83AB9C43390
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708918696;
	bh=CMEXd6ETGkjRKS4qP5tj9IRCi8lgqmvDH8RtzZ7cGqQ=;
	h=To:Subject:From:Date:From;
	b=NeX32GZiZT83YrjNHoClJ+Z5Hm+tnZuqNjCxWogFPLbWGjBQd5RICccLATfcJB2JI
	 YlhTwoGgwVBJlS21Bnh8/0t8hM8SWCVgX+0+IJXaobVofssKzQm5fsLDgwozYqLYQE
	 FS99EAreJP7FC/eu/uGCV3TtctxeO/TEI1GLCDvc0qnyqxco2ZpfYsN2iETCtkuWzD
	 eAoFhjawQOUF6ozgD3pzmeK02d+GQFmFTAT5BidbIUySG0Q5Ph+R9kdDGkOQ+mxhw4
	 ouO49+oo1yUszoaJArdpToGdWVoPq6xYInaKt7S7vjvEyCTEirZtiTof0XL61rhctM
	 P6cpl8hXWrpLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6756AC48BF6
	for <ddprobe@lists.linux.dev>; Mon, 26 Feb 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170891869638.1239.9974976686690789656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ceccfdefb415f74dadcc90d47add19ddc27a5189c45d1c56ac89d3552f5277
Date: Mon, 26 Feb 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708918696
