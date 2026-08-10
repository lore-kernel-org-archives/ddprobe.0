Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE2A3B8BD9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786360834; cv=none; b=iM+i2q57lwnacY4GElgG6UZDJAcwHvYm1lu6LuXIkRwzI8hKWREIjjCRnkV/q5ekCZN4Lzd2CIv4szY/dMRUR524Ktl4WmZi00byBHXZCYGmF6J0CKdpJJSA1tNUTmTB22saQ16vZyHYJglZV1jblPESo+lRt2jTNA6SPbz84sc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786360834; c=relaxed/simple;
	bh=3DyrH/cD5o/H9ToQI2ZZyZ1Xck5xtQ1vkwjp04cLA1U=;
	h=To:Subject:From:Message-Id:Date; b=A07GxtG0HbCRNDML/tkHnlR2XsotmsgroE1JT1Y/j6xPoskbWGKQSuIy1byz/aP2aJ6vRA255VMPpzxP496SqI+a6re+q+8AebQ212r5KQEfaCjNmC8PaYJF2P/tCUiunwzqk8ImqeeQLUYdVeq8/sD58TocIKoGm5ttFgB9TZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jez7G/Nc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jez7G/Nc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E23C1C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786360833;
	bh=3DyrH/cD5o/H9ToQI2ZZyZ1Xck5xtQ1vkwjp04cLA1U=;
	h=To:Subject:From:Date:From;
	b=jez7G/NcQZgiZ27tv2+d9JPyfHBuYJjmoRH2pu9xbIH2zk/V1sNdGPEPB5dX4qcBl
	 n9AR0N0B/J5W8YTz0QpNuBHtgtxyjUjJGwTyJLuommNDS9DRHE3ayEpbcy0xijG7gj
	 FRl9L4YrpmeUmY6DkP2hpOsLvsz7Rfe8Qu9Y+YTZXnKnnk3c98TxJtMlDhGbYmW67j
	 OGd3bUL91qky6BQbfoGW8jm0Hl9jHusFYJxk72Hwt/KRNZBbkHlf1uEnP7pxGn5vpi
	 ylTweqFG78pScrmkWQ+ysbakHneyP5pv1leLgQ2hzicmRhFrmr93rYzL9gPbYEl4K7
	 GbcVIE6O3ITOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE03C5B561
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178636083376.15505.2949045297676489376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 928e8d8ba9073020ec53bcb85aad196179b809de763fe98a902e14c4f54b7e0d
Date: Mon, 10 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786360833
