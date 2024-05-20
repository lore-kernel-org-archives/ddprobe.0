Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A8A2DDD4
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 03:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716176543; cv=none; b=A8JlHpGTYUC5436wzpbYTmX+8wJw4OQsRSJQxndQqtG4eFf9+5x9TW0K2XpD4tWu+3v2+HJuSskaZjoyB7zgM76Sle3dvhL0FP6RFS4rTCozwGfiA812b9ZmQSCCbjgkNJPFSbr8YoqoVM5fi3CJdXX9E56ERbrgyqiw27DVSio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716176543; c=relaxed/simple;
	bh=5/On0QIcf6dORhmrZL3jeEc/HMfNHJwx1cgnlZLypf8=;
	h=To:Subject:From:Message-Id:Date; b=glrbjdZjiubl6iw463+hToYgmXibrd5KakTvRBqtUhCl/BJfYXSQigV5PZm3LReRR8kLmCNjTFfETpkIu0NjxNnF3Z+5eulbmpy+ewW0OOaiSRdt0i3rbtywIOPksk2bQtL/0Vt/ZNWLZtBJ573oCcdhPTZc3lV7b7oYzh/nZk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ro8+yzJx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ro8+yzJx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23BFC32781
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 03:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716176542;
	bh=5/On0QIcf6dORhmrZL3jeEc/HMfNHJwx1cgnlZLypf8=;
	h=To:Subject:From:Date:From;
	b=ro8+yzJxxp0FIAOHZ9KmjSUe4g4o4r4m+fCk3sNa0WL2ORibt2+XUErlQ+Fufnm9R
	 wHlqa/Pm4tZ5fKJufr+9FnPxW6aXopN8I+V9p84hfY0Y5wU/9eLSwAG5SPZg9bKmvC
	 NEcI7t4cr2BTBPJFi9v42szutIEM2c7olqgNmUERzcjz9LvPMySZZ+b9zubqhXRpRA
	 ZHW1V4Y1zug5t+LB9oCJjJjkmJXWW5wgwi2NRSGTn8pLjCYEkbhuhqQaRW/7jlWsl8
	 IIV8Tr4PlFkZihXbPAo94VLKJlHButZHYVJ37JfSPeIJUUaOdlX9AZD1JEEPFGY/I2
	 jePhb31NZEGrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC72C25B79
	for <ddprobe@lists.linux.dev>; Mon, 20 May 2024 03:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171617654277.7932.2735285970811301046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1068951a45c2203d955a375e4121de78a1821b02a927948b7cd477ca432f6e79
Date: Mon, 20 May 2024 03:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716176542
