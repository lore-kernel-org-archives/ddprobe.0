Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297971DE4E5
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757198994; cv=none; b=EFS+Yhc1tZxtCpC9p2qWsQ3tyEh3Ot6YuCa3ObFYE0R1QX7ib74U0CcUjgmpPXk1XUFB42WMNdnUcBtjial67BVaa48Tst1v0gqawQpB2/jNZJqyusE5RkttuN76CkSG5OPZ7odEe3LA93XGfYC2aX3ypw5IxMjG9xzc5GwFf54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757198994; c=relaxed/simple;
	bh=xJGa35FHOx6ec5Hbfaqxqftksw7nfbFszAcB5HYWn0o=;
	h=To:Subject:From:Message-Id:Date; b=hVDWpS5Zr2TywMnc6Cr9GX9xumlYzsNhIDxgoEqM5c/Axh9T2gHOzZqGm7C/0Ruv9qfAySZwm8qLnFUUAh7Wkic5vhGJUZzyJJZcUfqie+76gACiolJieoFvVrqCKmIa/mntkXWz8Eavt8rPY55LLEspyHf9V/7aTxWvp6uay+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NOwrqb+T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NOwrqb+T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66F3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757198993;
	bh=xJGa35FHOx6ec5Hbfaqxqftksw7nfbFszAcB5HYWn0o=;
	h=To:Subject:From:Date:From;
	b=NOwrqb+TsT6V0pLVLpR1RDXMqPydeUL5yrnFQeC9JYrZiLnfPZgmxdI1lgWKQ8JZw
	 xFEd/JHsScvQlska7W60/hblPtCMYZLuTyG9fGpWyXH4uiy0rG2ec0gkQBHs5G9oY0
	 NOynO77kT5xxjhp2jvsig1YuCvyuoH+GMGvtp8o/tCP/NnzaNOmb8ShXvla3FWtNT/
	 tq+NqCEUK2x5UDLsPwezUQXgdcTNNoD+eOgCghMIjLls6Aou31FpzHCN6XCYCHJkfj
	 bjqZTnWo/zE2MMscJf9t+LZZyYKOa2JNmXMBfxu4HrlOUB5BWBqfQb/HWVWuU+4Xfr
	 7mfkq8lsbJCng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A96CAC581
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175719899358.25779.3180040510280586797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d07fdae3b3f1d62c8fbd32d8c42911692066fa6a793bea0567c180dc25a672ed
Date: Sat, 06 Sep 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757198993
