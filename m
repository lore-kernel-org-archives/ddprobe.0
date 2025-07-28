Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2D686338
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753733994; cv=none; b=agr2rEpaRfDyO59rnqWtGwGqJj+2yj9XSfvqnxmm3GrfjJlGwBln3gbOZBzxgwuPjSssf6WOuVC2rgEaM806PjBxcNl+yoFZr5i+56JA/Ohq1PDU7NubXH6z0UoPLUj/lwqj6WKKeBmrHOkWV4WEh/FV+MjzW4xUer3htLONFjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753733994; c=relaxed/simple;
	bh=oBOKTh4G6bCmMldkGcLHeqbm9ea0SnstH+Y2Izhg8v8=;
	h=To:Subject:From:Message-Id:Date; b=odRjCabOIX33/1714usnJBRgIZ7w806aaJAQKqWkaNFeApPk/gqYJELqsfXcii8/n1gzVIVWTW0xJAvQSZ5TUO6kG2DOrqwLW9QBEH+H0CBknB2PSJ1368vtOkRYAmZ/qA8Z+5DzVyc4YbMX5YxVgpQn5ZxrENwQmz+c+4Tf6h8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoLpdLDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoLpdLDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A470AC4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753733993;
	bh=oBOKTh4G6bCmMldkGcLHeqbm9ea0SnstH+Y2Izhg8v8=;
	h=To:Subject:From:Date:From;
	b=WoLpdLDTpE4/DwiXLmCGjW6YeSwuvbkucpkpCOToPxfik4/7PpCNTkHsTtvbbghnx
	 kS0ltpWCE0E4fvcjX9lUz8MUPti34Wqfjdb9XwHRWIhILepsEq3HILrZzQhGOK3yzU
	 OAO7gnhO4+Ag5/As3DfhwwE3UhRFbb97ok5htNlX+zIvdEcijJd23Db4zrFeyKDQlk
	 F8oQP3MX9MethU35D04bCG/gHsaeu7n4EQvpHrkaiwcyTJRxncsLwb7k4IuIe4hBuQ
	 qaHeRPEKukEVtt3EdTb1kiHX5uf7q26x3DDFhz+c+x1GuaR40ZkW5KbowFs6Ww4i3U
	 PCZZ9SMyX1HUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CBEC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175373399358.30925.12101483434659361089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0edcc226dc03fc76899e0b9d6b7232cc804290810fe85fe3cfb6b5cbd9e0ea4
Date: Mon, 28 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753733993
