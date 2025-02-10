Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A1B264607
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 23:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739229955; cv=none; b=AcMmeP+t/wBzCQjBdIQ6d1xPzCGww0fvE8upICt1g3TW5TxN6dGfIv/zGo4Tkn3VTPONvhKAFi4MgVwK5CAC24jUVJ36rIOJkXvbrAUiBvxcssdJYhJ6pOfPd/5fx1nakGbbzT1PziRC4sGjpE08m0o0TEFpM4BXxmSMXRVB6k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739229955; c=relaxed/simple;
	bh=qgG2I91XgWqrF7+/qYsRMC8/LvHkAL/xrDZYVdqEe9M=;
	h=To:Subject:From:Message-Id:Date; b=SPt8q8kmqmWiFdbGpIVKWc5SctpAQbYluuF6mHRd95N8ROewr7vkzkoFLJKmWAIWHkJoQSQHGPiWNiWvMrBkTfwiNxL9F5W9NXMrKpaY6cQfH3tc5ksagjeVf9UW1eRQtXn04fBj9EohFwtZuI69xbX5H5Up2MvPc4mLjoHTcV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUM8sN/C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUM8sN/C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2A1AFC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 23:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739229954;
	bh=qgG2I91XgWqrF7+/qYsRMC8/LvHkAL/xrDZYVdqEe9M=;
	h=To:Subject:From:Date:From;
	b=RUM8sN/CtDO+58luDbFtogPQCTUkKNZhZInyCCshSx05mTlc9Hy7uRVhBnn2htpzR
	 KWrXVjSQp+ShQwYU33sZvrvpd7DgGa20thBk176Lfg5nSFC9y1n7ixAGTg32BTHYge
	 iW6UJBJWDLWpN+//uvBUK6K++ebYjCwZaOWPgWX/Ba6XFGD3+BhiobSQlNuM+oBNtX
	 JJ953Pavts4Iub1FJV7wLGgmxoTdp7DNys118D9BZt4FiyCtxqptbZl6suzexXguA2
	 BHZSXq0r8qxBgbvRmVZz0mSupEQ+4dXofoxuNh2r2jay7ieFEz9OTnz9FI6IhlNEB9
	 Mrfi/lpJsq+cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF658C0219E
	for <ddprobe@lists.linux.dev>; Mon, 10 Feb 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173922995376.4312.17164451001401324642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ef1015beb2b0e3681f939db63e20a95798e994ddc8d08f4c7afd5fdc23a0354
Date: Mon, 10 Feb 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739229953
