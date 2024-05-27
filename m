Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D093383B1
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716851663; cv=none; b=Vq5amN19BbCFVa8g8xXu0WCpXxRhY9/GSm/KL5W1bv8Ek4yXHifHkcniA3R3cQqdymalOrG44Zr7S2vLUPf+XxhZ7L5FfeT1efUscy4S09MBb4UtD/xgFKuDaZqka6MfUwU90IdqSKJPjXNPYpwcdyeL064DmSWxoqnJNfinv38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716851663; c=relaxed/simple;
	bh=exFo6I9ks9dSvUsD0mpMT4sU9Sw+oJhqakdbVhtHTeI=;
	h=To:Subject:From:Message-Id:Date; b=nStvGNWcAL3qZ7tWTpEsRZfSce1v0Gz/RTNFagKoTck0VH5CY6qAbg34eqFZmpYh59jszK10Grcv1Fj21djDOl6xPh0NRVnT0ReTh9LCGJJgmRtsms2S7VNpiY7DMatLAQaxl5biX++8uE5x2NCSSobRn9EQKapEg9erHFEPUSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B2QBxyCU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B2QBxyCU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9917C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716851662;
	bh=exFo6I9ks9dSvUsD0mpMT4sU9Sw+oJhqakdbVhtHTeI=;
	h=To:Subject:From:Date:From;
	b=B2QBxyCUHFZAdwhnxBr1GDuMvaZnOiKVwsvfQ3zohLbmdI6AA2s8N7n9H5BV4kqqb
	 o59m49viHx/Snzu/dYXHtNyOXV1v2yOy80UhYYa91HX2jmPi+lf5DuGvIhZKH5844l
	 lxlDTwx9f9D/lbVWTVtOOBbY8Y+Lh2uu1PNPQOfOf6eZ390P8RMc7S5AmegGbHAZ09
	 DQeqeDtP6IRGYtaYxAYdw9HLyz4vA85PnacVp+J1AUpbWufWexCP9fx74Khj4c5QKm
	 N8Z5kASr8xY3nlAlS6TbRpbyhy4C9VtEAZ/Vd+FPfUEorJxTx4GhYKONeZ8WJSvYaa
	 xe+bcdGqXzNcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C194BC25B79
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 23:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171685166278.24310.8524559031621230977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd03c5bea92ae935e762f454d55c71b2d2c48c0f612f626585ee1162eb145e30
Date: Mon, 27 May 2024 23:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716851662
