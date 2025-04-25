Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370ED24466C
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745581195; cv=none; b=p988jiHNgfefIfCb1ZKNTsMsOf8gtAZGhuOPGhBAQf1tzmSAncBP9P6/FyIsmTrAXnSnmrxrA2dByrnNiq7tSbLbk2noXHe/TViYMQoSQT/C05MvnBHkM77yzV+aYAvDhY6gL36zKsHFhnstvIYgRb3+ZSxZ/0x9S/4PrYvb010=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745581195; c=relaxed/simple;
	bh=mgUdwQtaq838M8WK6LOSzG79zvwXHV+Zg+rAk9RXoq8=;
	h=To:Subject:From:Message-Id:Date; b=GcmKDC5CipuU3ubtcu9PhT3Zdgi0yYVYaPjSL53ay8BNipio37h9R6lwZH/4lRCq72WrrvuZQPCPFSx628q+DewTq7UsLeb5bU427fuh/8jaWwzXiMMbhUi2Z2MLp+AM5K2MER++D1HNDwyLXFEl9dvIHfW+eUTLHT1kjJ5GGsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J29HHoyW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J29HHoyW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DEA3C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745581193;
	bh=mgUdwQtaq838M8WK6LOSzG79zvwXHV+Zg+rAk9RXoq8=;
	h=To:Subject:From:Date:From;
	b=J29HHoyWY2fkAAbV8YwlU96xQ/z58sI9sQnAfPL/VIF2Qd/t5sLRiRi3CuSuQ+gkr
	 wiWXmjnHUT7w32bDbsCXyWDayZuoHICFa1Za6bVtylKfhFtHg6gdlavLfomto31mBf
	 FfRQUDB69UGk7pk0s86DSOx33B1OQejKdKB5h5O6iCCScR4RNDAG6Nm7TLI7YXAZ5f
	 XvYen/B2BNfRPEvSHYb1BwQKUK87apHo5WhvO6kc5SonvtlUxWu3G/uV7oqKX3bzQo
	 /k0Bunnol56uofmkkpwoOO/jgthMzJLubYShIOstHL1QKeoQIomO9Ov4Ehhn90q1Yj
	 5BARYlv8BsnvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E881C369C2
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174558119357.17649.11584751809806964514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d2cbbb66e987535b397476e0ae99fb09d9b2065e387c2ce44b61f18d2994338
Date: Fri, 25 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745581193
