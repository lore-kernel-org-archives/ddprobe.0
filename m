Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A80E2E8DFE
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760341194; cv=none; b=c9EX2pQWIRx4AGUS8pyT5L7OzYYLvlLMIpOivGxy1UNWTI+Umo86Ih8VMaOrYQn0Dms342jlOArj7HPWr/skSDFcGT82uoeMSj8S68934sx9eQwjqJnNvdSERrnnGgl1JTx8g53QqDb8o4NtikfveE1a8hK2RU3oatjoMotE92I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760341194; c=relaxed/simple;
	bh=TW7a5z7UWGw0SqB6N8RlEQbWbP+tcUBydVvvLnOCjNY=;
	h=To:Subject:From:Message-Id:Date; b=hSq55gUjnKYpcvdPdgTUL/II8kq44fc76MOxoBsRBlJPZJKltNXkVPns+FuFz7T5R6srRLfb86yDY4UOpjXiWK+P5umrxgHyaSBfkwT49FFPP3byfdgmtP7js4co/9dHrtb8nPBus1ApQ45UyKTXqK2DAJzFosygPs6/oiqRxsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u477HFa7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u477HFa7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D704C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760341193;
	bh=TW7a5z7UWGw0SqB6N8RlEQbWbP+tcUBydVvvLnOCjNY=;
	h=To:Subject:From:Date:From;
	b=u477HFa78hgmFLVopCEtDfRHbPvUJwbO7gjeC16/G8/S4EoIGzY51z2R3wMBhi9Av
	 WBc01STvYMUtbF2TNfBeoc3nUhspjCQFuDV0jbVyAfbG+pxlJfGGrwTtXlgs5OqBnd
	 OoktWShAnQrVcunjiwNZrhPSGOIclj6w9RUG4vWXIjq6BZo7UU5yqBXQ4gCbphZIiT
	 TCTf6BRKA0pIi+W9tKgTpbk0Jwsinjmf5otqObflrtLKTXGr3HdhaFTLZtDukR6JIO
	 AdPSV2d27ZwpsR3j4ZyCtDYGW46khUYzrtISKI7enBG17iqIhmUvXB54NMW0uTYG5y
	 F+kLTKISqX32A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD4ACCA476
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176034119358.22009.15670579743604118391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b35bb55665e7c1b125a6987a0e4f69dd919c8d47980b320f63717619ed075eec
Date: Mon, 13 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760341193
