Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F4534FF61
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769020434; cv=none; b=Jm80G8esKUrTGpb/T3qNeaIBizg8IlVwSpyx1Rmw/y2C4Imr02Kj8SAA4cSICx7YfW8cCIsnvptJf+y4DLoaPXowZGYD6+DJ+tv+qKXtvBCTUDNCuLbbzDos7bdIscNbR5vzzWhXsPWd9RsHM1JrquP/Dazhw2DwWcsKn6LtKmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769020434; c=relaxed/simple;
	bh=NdmbwT1syK0ikn7MT+Z/dLe0C+6Vo5UglIDJSsACLQI=;
	h=To:Subject:From:Message-Id:Date; b=J9+jM3o6tTHRCH9FxWwHe66+UhR3Qa7c1VVUh8eOtIpwFgyr3mN704+x2EEPBhtepbXHUTFTVNEYTthQSdARxBAPkQC22LzAIyRfAi5bhLzywL4qpm0gF+OUwvLal4KNv+2P8XsftA9yBPdxas98kd42X2Ra5BM0n12Gl6n2j/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCb6B8RL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCb6B8RL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7435C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769020433;
	bh=NdmbwT1syK0ikn7MT+Z/dLe0C+6Vo5UglIDJSsACLQI=;
	h=To:Subject:From:Date:From;
	b=vCb6B8RLmuZdoNAG08SAQwlXd2gNxU6m5jZ/z77nEkQO+BNfRkDl6vZP3SU0bWbl2
	 XBpakrWCj/O1IGMoQnaqefs/JDigpRcq49sAhCepDKHdbTD/sZZYbcjXD9T2xtFHGD
	 UNktSLwE5AnRJxB/Q9h9yJoHXV3h34NIEMgXSmig/IBE45nSCxd5FReZB9mTj8XZIJ
	 o00NKBdoS5t/Fax0j4FZjMkc+ONBKv93OM8ZpDKw4ZnCdQU8sZgBbod6mxZjW767ZU
	 cIj1z8hRTPWf9/8PnrFxIhdYAAewEBExUKN1C0BuG7GcuGTbtO0PMXYjdosE8uTkMu
	 ueyKK/jsZ7KOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9597EC44506
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176902043358.26888.1311683966640327280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5141b2d71c4a276b7777c9cf1c89e8c42c769b172776618b6bb924a1a8e8991
Date: Wed, 21 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769020433
