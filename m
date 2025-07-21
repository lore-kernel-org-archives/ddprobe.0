Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB94163
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753056594; cv=none; b=O6IjO3vHLxQwk8webqUXSw59bQWzob4j/vBSUQTxKtbZPsCGIbfGQomHkzCO0rw6vZWM7BI1bUy/CEMQwRNPXdE7dGmyPSN8txwL7Yd08rfCb4fi4nqFp8zKs9W3rY5OVnzzxOPQs3aqJiBto4CEmeODtvJueALq3Fkiwx5SHjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753056594; c=relaxed/simple;
	bh=V0FwFSyEe8y4l47g2nNvsuY+BOIjQX3ZJ+9REBcybs0=;
	h=To:Subject:From:Message-Id:Date; b=HVQ1ukw+vO/KbXgufzWlAvaSlbH5S7bVTrn9P6oaNuCfD8Wj9DB7+GK+eWwSDr4FBeUvFiZqE88ltXF7obB0lXT00emsLEnkw4u5hOKLGZ5lGjhy3kZWt/5FbXINwLDUdUU0sPAZSqgNySuBRnxzX12sKb03it7rK0wTBHEi1mU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmBN7X9b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmBN7X9b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F26C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753056593;
	bh=V0FwFSyEe8y4l47g2nNvsuY+BOIjQX3ZJ+9REBcybs0=;
	h=To:Subject:From:Date:From;
	b=PmBN7X9bLaBeKHvMpD4NxMPoN39Eu3CWWuJ+bELMshEqr3mEBBvCuXb2sfG7Y7adI
	 RogY0wHBiJa5x3LHsAqmCuQc9hpLbxmAIJBNQQ+666V2wRuAt0o6Gw9lH4UdBEBWVO
	 tNX8QsVo2J43lMtHvSUYAQxvtJFcHP2Oe5FBB69t1wTUHQgdlqMpT2MVl+Mr1QKsMO
	 Nbe5mGehdw76g/LyhrHi0b5RAb72cNjijEmi3vyuy1tnWbqzKk3SCqifHR/Y0R43BM
	 j/+h6Y2Vojs6Ku4JcOxy+MqUx0OQNKozDAuEHO9jsfiwAXHQL9O8fbBctHP9wCkgt7
	 7dAgniYXjt0ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92192C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305659357.25807.3794477893516346204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfcf291077ec2737b16e827ff4f19d7918f09b85e0f4aa659f5109a4a089ddda
Date: Mon, 21 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753056593
