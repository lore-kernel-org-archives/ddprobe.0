Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1600E215075
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753678794; cv=none; b=LcnJcUhP3IB5D4uw2QNsJQd64Ql9rplNtLdK0BsmCNwMp7O4jLTyPYG2q7P1ZCdcoJGUdwxB7kxKHdJFy+krD4pu+FClUWIn2jnRcxo72YPtbK8RvcD/UcqvRxn+Fl2YXunSgSsAO/d3aQ7JPeh2v7i6rM6svSJyXJq+PB5Jq38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753678794; c=relaxed/simple;
	bh=HvjRoJrESHWVZFCjAEXsdWMKRixmSlpbne3PrHfSJws=;
	h=To:Subject:From:Message-Id:Date; b=ttDaGSp7bXrHwtLz4CdbEhMFLAakW6htHDaYIdVkxWT53a2oc81Fj4Q4KVQocgAx25gBYy/OA6dJcGY5TUDF7ptzwtBOfOb2FjSVq3CYUK8g5HhF1qBkeqIzy4YuNMlaIiwjTYR3Xqq3tBFdknHydxmh72ruZpCAq93dHATTPOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvGfloiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvGfloiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCD2C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753678793;
	bh=HvjRoJrESHWVZFCjAEXsdWMKRixmSlpbne3PrHfSJws=;
	h=To:Subject:From:Date:From;
	b=LvGfloiub4aJ1ZLYKVP3a+PbbIBEmPeUO69QxHS6R2ctfHkR2xCChhaEcmfIbukLU
	 NwAXos7MH4lT9A2GqhZRlPbS0m18mzEGJznT4fPvcEezi9Li4HW+fYT4LD2b21s8mK
	 E2IFZMHozcIbJeoMzKpG6MCQU3wLjHsneNFquVmYvv03kXgFgNXsy8znvQat+3JcD6
	 DthAeprQO0D+2IoM6hc7pX3/1zTalr8mKo+pW67i8q6f5wlhtQ6C/ZrcZNIO/LTEgb
	 4nd/dOE0Nitil69oeOfDFEnq3Bg6cX04PaHboBVOFAQ4ixJYjNLFrAlWbswQahsYcw
	 aO4cZcKD8JNMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3B6C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367879357.16012.10090274312423535896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e81b78b49aaa0855b8d6ce7673637bc3998ffeadd7f588c40578e73021b452
Date: Mon, 28 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753678793
