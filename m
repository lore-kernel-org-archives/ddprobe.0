Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CF8182D0
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775271334; cv=none; b=HeL7NaQDe0a9q01Do2+SjNAXipg17nB1LQxxXvEG7H7B7LaQ1tGblhh28LQSTq5EanmhY7ZN1+fhk9208HZ7LUTw4m88Gc461JgcsKCTCIpHQCg+IxAY0WQfI+6huqrlDPeNuk4HOi8f4sLnAJdbCAYpXzUjCx/WbPw7NnIijdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775271334; c=relaxed/simple;
	bh=rTG9Fsxqy4UOIdmA8aqZb1r5ep+tvz4SM7YgxW0mgDA=;
	h=To:Subject:From:Message-Id:Date; b=bjDUa6g6FcU76E5zHaxK6nmcJXbl0ZHtrKVtegO2RRTIEaerl7G0uvPAsQXuYMHdFNDwn7xq7hKbw5HdOFCnBLrd5wW6JonVsWrB5HyQTUclS+V8f5dXy5GIphRgCeLCRt9lMLi1k+JkFmKCQWcX/TZ9BdlFjljDxN19s7Xc40c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tunVg84A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tunVg84A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE32C4CEF7
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775271333;
	bh=rTG9Fsxqy4UOIdmA8aqZb1r5ep+tvz4SM7YgxW0mgDA=;
	h=To:Subject:From:Date:From;
	b=tunVg84AcMVrP51YTWKYAIw6DUkVKSIABBtAOpTwsCB6m1c/S8Bp4DFNaU0HoX9vN
	 OAHYAaq5sbjXqXNfW0ikprVrH/YZ65D/w6wO5prjEIIvcfAbYU1H/GQL4qeshDx70f
	 q+qn1LJjq2a1iIJeFvvRwen7FQlpjpardA7dduLxhSSEyl9zHh7BrcEPrKv1aSc577
	 IDr77lWRxyZRK67nVk0uj437tZx80i6vho2JiWxKMj4KawbhSpc525RiWT8Z9Zq7O0
	 wWy/SBfpAoX2WdJ7EqPuJcw7neu6gz+FoaWnMvSzvE3ThwfUfsjd72oFOnoCg3f9Jk
	 eIipfzO4pfw7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD90FE88D7A
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 02:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177527133368.5095.13783507400701406667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a704c4398e47436484116c2330dd8b8fe90ab8d2a7810bc2163bd3e7b149b1e
Date: Sat, 04 Apr 2026 02:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775271333
