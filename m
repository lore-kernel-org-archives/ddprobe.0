Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4753C7696
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787122234; cv=none; b=QuY1v/LMBQ3f4FGGBj+uSkJ5eVHaWRYTCbG/jLjCACS4qWu36dbleYfoTuidZsKCjWd7KB3wDlvNHHHhWvPYvITS+Ned5w4mjyKj5WsLw4hicMSK63O2PJFbB2IpnI+V+DQSVhU1rU41ObTEawr6rf6SBs/bqs0I3j2oROrEsSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787122234; c=relaxed/simple;
	bh=2qgauOHfww1Ek/zN3cj3crEUaO77amx+UIT68hEcgNY=;
	h=To:Subject:From:Message-Id:Date; b=vEyaQjTHafjwrM99wmKsRA2517YpvwzIZ3MAvYB3jOSzkbF8gWn7vKoD0ilT2GtZr61hNxhZQiB0MVX6z4vc4aje958IF9Bvom+AIts61lJs+9SyomL7eVHXUAhhTbOoBPuh0pOegD9S9eyztgZ/r9++PVH1XBBobzZ/1lmhWQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GgdueTFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GgdueTFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0EE8C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787122233;
	bh=2qgauOHfww1Ek/zN3cj3crEUaO77amx+UIT68hEcgNY=;
	h=To:Subject:From:Date:From;
	b=GgdueTFeOqoCiUhJ15MIM/r+yJfCUOvq3e9LEH1jOhPgKe3nZGvbblh0TIzT6oOui
	 p2bnIBmhzzxy2v8REJB7fuzn51yqKudZMIjitz5wJLVZZSosQrPkN3gJlfoQxEkmL3
	 ZrmKz4C+oXeSFHY5y/8t+ywGN+w0pBvNWefCvL+mFXWVBtUAvVXx3HXamZ96Y1mFAH
	 nfF6v+AZyjToyicKjB7LNj06HbSCaMRcX++sA1qT8Js0WaU/4JQKKybbKyhrTktL0b
	 hFH6M/biFxHBRd0AwfU4WfmD+Ss866rAaqS+xmq/ogWqYKW4dIfAUdHAg7qCmrAZhg
	 eQEhctwS/vynQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA102C5DF6D
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712223374.16686.2326982550578970623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 763d0a91fbd71b7c781d378ddbca90c30989dd7d4971f195e2397dcd37220171
Date: Wed, 19 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787122233
