Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458F523496F
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753813195; cv=none; b=FqF8eYPvdmKE7ccp9dEnKZ1LeNmWqujYutrj5V6FvrvFYWq/uxWFESNhmDm2NSg6D2p1NaPt+T0XTPowwItfR7jNE2xOTTgbjkbXk90DgokkqCii4JG5G5mLz8w/QAygFhmK3ObJSdKjA4Vi915nwHcbfHV7i1Mp4mJ+GdXZR5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753813195; c=relaxed/simple;
	bh=QYMZ7DAEZODkXBvntbKWC/O32FRKDsa3pBIpfloQsWM=;
	h=To:Subject:From:Message-Id:Date; b=GgIrDxmXmzcfWZsDbC0+V73lyXUL/zf/lMEUula1AejEungkEZ/VF7DoD5+u3OFR8sjbhLyt/EDWJHP7grJqozzZvCXc/qypB59NtCezF7YiM/yJdXy6H67Jj7/pAMN/k23WzpqVGI/E2PmV+qNUeDEUtVMuHx7bclz/hdMD8Ac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8zJVJi1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8zJVJi1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB05C4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753813193;
	bh=QYMZ7DAEZODkXBvntbKWC/O32FRKDsa3pBIpfloQsWM=;
	h=To:Subject:From:Date:From;
	b=h8zJVJi1+7i1NfqULnhf38Rgsy7GZSJZ7R0G8gH+TxlEIzOmlGkKdim6LtLyCq32G
	 Yx3wWmi7uPVn50IBvh6peRwsdExko3Of7Nc9iVqJVSdyHqZDQRa/RZzfG+dcuLwUW2
	 IjvHLBik7YRkl9nOmRp6XkyTTS8NKYn6/YtVDd0n3xE7qxy+suaubDZ67tw34++ABO
	 d2LAogRZUs6Z05hTvbl0+6oO4xc4gCNC7+bP8X/+iAiwLRHcam4KlT3VteJMpbyJvE
	 gwarsJUnC816UQRbxrjGDs7o1Tf8t5ndURND4HPjuQ6cYGoZrPRGCpf3cF81Okl1ft
	 Fuaf13/m7aZnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9834AC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175381319358.13890.17221900378205617543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34fe4a88cc67ce87b82f62a2bd1e71a00ad6f38cf8e5144c8201fdb3a45adcd6
Date: Tue, 29 Jul 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753813193
