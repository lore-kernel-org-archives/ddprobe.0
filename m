Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F6534A79E
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776724654; cv=none; b=lpeSMrkTlL9KlHPVQxYNxieJNbWXmpmHlXUYSkoM9WWJ2wRrMDL1CUTOBO4014Or7dJe4PtU4Bk9NnGBwk8Ht3SimX/F88Bv7Ll1ApdsovTqGPhQWI6/yusqLByxWFX0epDEq3FhlFekP/NYzQhTjkr+bSsGglxVopXU98oe3MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776724654; c=relaxed/simple;
	bh=a5DM5FJs/NNKyjzASIijhZbkZrO0XmUNW0hpfp+RHys=;
	h=To:Subject:From:Message-Id:Date; b=GhPM0X6pPNt6mO8fQVOZhU4Mpit1FXoEJk51xYg41XdRn8Skqeb8YqzA8vBjmvtOEDZuoL/5/cesWjRYZTGeUI0943VBpZnEE1NIRQtNqixMJ6VmRV9h0mJMW4NIgmvt3lawvSi4YVyvWCY1RXq1NcJJvIhuoDTGHZXcbZ0PkJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdmYzGr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdmYzGr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF3AFC19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776724653;
	bh=a5DM5FJs/NNKyjzASIijhZbkZrO0XmUNW0hpfp+RHys=;
	h=To:Subject:From:Date:From;
	b=JdmYzGr2TQRKLF0BePfcszzZ8X6TLx08g/HFUhdBJAgssmraH09KURsnqETYyBeR4
	 EEfOZd0oO2hLG2XgP3bQVcI4HtJeaht6Lk5wdRQRghPeJ2ST6wLlbFXfnKJeLMO3aO
	 tBVwBbLQgZYLpeSv73siOnuE6Vz1/GXmzmlvAOX+i74nShSY8TldJ6XqC5CWUn/HDI
	 UKreM4ibKIlgNOFknGwUIXYWweUXL1lSzgK9ukNPZEFyDKhJrqo4+ks3n/T3fOehRm
	 0UziOpp75vtEb5U3nUemEdx44IM62LZXpXnsfM2N9cWNU3WvmDnBByWNBb1L8d7QGu
	 BvtfWRvKpvNKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC72F5A8C9
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177672465368.25539.8380847020646080978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2d0b8d44209836a6fab591500c34e76c4249a76ae5d80c644dbeda2550c2041
Date: Mon, 20 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776724653
