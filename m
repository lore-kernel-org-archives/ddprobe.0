Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB0D2E40B
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767899634; cv=none; b=agW0qRYQTYA4fKw9JhK1iTzZtuIFiBoxC0v9P45djtETTw4Lq3CWR9bC3R+eNdmkudZssyOPoC9QtiDWzXBERG98iEIGnRIMYEyvUGui4c6tP5evry5rJXYD8dtYA8bdSdyIz44Qz3kBkFfxyrZpoYw11WEfizjsqkx3ma6yLrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767899634; c=relaxed/simple;
	bh=QP0WRQJvtyxuPYYXNsU2RpbX7JHRKYYuaMC4cNQ36OA=;
	h=To:Subject:From:Message-Id:Date; b=oUFmHMYpQ10Xl0PjkxZQZFlsjzgZKIGIr0Pr4DMflaoRw3sfLEa3h5LViV+qPoAPWlBBwbMVpu2h0gQde1wxChdMUEBhVQmzNA3CVe+bfWzdGej6EW0rnZJ/Td9eSWzzciOX4fBkj2ErG474TfO+/GJ1/tjtpJ6Xgm8oknqzxMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dogjJrLx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dogjJrLx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BB0CC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767899633;
	bh=QP0WRQJvtyxuPYYXNsU2RpbX7JHRKYYuaMC4cNQ36OA=;
	h=To:Subject:From:Date:From;
	b=dogjJrLxFSR4LK2r6pzhnFCJ7HOtRffs3ENJo3g9DBqwA9o6DxXr5Y/daaWp+4CDW
	 TAN433kXKbCMpYvC7Vzl8HBVbo6gUlMMri0jx7Zt+3lirlTCTecgcBUKsMctTh78AF
	 PzKIbO2PvuzObyUrXGyJdJNQVZPd6Ub7DmjohJasJbmLEBsA5n9LJyWv/qw13gZITu
	 KU3lENquE0wlRtYYMpQVm2PqTIL50KJ5Y+QH6PLtSF8OQnFEN51fA2me4plhF5g5qF
	 j+W+7u4/bVLWL3wXQE52yxLHLaREo9tS2390ueB9h0gTRSW+F8fAewMh5ZgoPIuHyA
	 ZLCH5JuN5qxnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB1D1D486
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789963357.25459.281299241317198740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c58562c66e6bb5cee4acc71d167d6b6b230f7e9e055353e5b65bdc89a0fc517b
Date: Thu, 08 Jan 2026 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767899633
