Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374BD19478
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722527154; cv=none; b=bLPP4/GxQFu22a9Qq/JZqJDBRwjTCMWGs8soAxnEJM25GJ6QyXr4d7Ns7kHDtnCjkVO4k28NA2jRadBuupDMKzR0pfYD3EohLzySr5ZxxrVvqzknkEi9qshCLzeVm5E9rQgLKX4o6jAWA0G6PXIpLE+VJZLyoXvFkmD/9O0cCjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722527154; c=relaxed/simple;
	bh=cl1d5uI+fUeMikkd+xAhVjmWVVflvSdtZeETRQVGAgg=;
	h=To:Subject:From:Message-Id:Date; b=mqe/OhfHusQPEdCssr6c37lF2Q1bUDuZfTu2a21QNIkiFQ7rzpFo0CVfxB4lb/NWlE2pBo5iv8zqo6dr1o5RqzC+s69g5TIGio1zXvtBaEXekkh3mZ3VHfsf1eq88qBRgA2JjcgV6LpLiNa2jeMS+itAW2XToxfDstiepRU4AAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QeQ9v/yC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QeQ9v/yC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5B6C4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722527153;
	bh=cl1d5uI+fUeMikkd+xAhVjmWVVflvSdtZeETRQVGAgg=;
	h=To:Subject:From:Date:From;
	b=QeQ9v/yCd6EfN12Oz+neDeoSryy/DectCCmv275qwkR92afEsCr+C5VVsWekTlob5
	 iJo6zilHt0RsoimG8qCTU8MSaUMJSHvSRRLUaXz7YcozIrBD8HmoNEqXpiZef3uU5Z
	 zTOTmwSa/ktM6xoB9XNy6tDvpd6ohS10VVBy2l8Xn/2gXm/VJIptnifnDNLYcU4bCc
	 UqmkznTtdwRL1NXYO4LtO9dY/UNFC+LPGn+KqF+pwVy1IYiOB1dOQ29zoOQEhZMtLE
	 pbQP5DXNwgMA3QFGQQ2GSpBbKvLE9c8rq0lS0BVZgR8Va3WzBKa6VemPcSkxPwuI4j
	 BbHsvDOfeQqYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCC5C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172252715363.26251.3894217710253184375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5b4b75f00745b572d04a242fe5c5debc682a8a73e9324d1dd71c13699f1f2a
Date: Thu, 01 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722527153
