Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8211B85FD
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754492394; cv=none; b=XIehnZ/rTkSyGUdbp83nyJ0rHl6j0wuwe0KwETWrZQaWAJGUyvkUkGs78/3Y3sS2aVmc6cBSGBmBNnHgYM7ik6EDHv/yXVZUYjP5yQVFxksFYbie7ZXjp6jNSp+q74JoPIIbAOEWw0qGs+Q0ttOsDoQkY8hAZ2ZHqr/Iq8Y7iDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754492394; c=relaxed/simple;
	bh=1W4oz44F7II7mMMqK6Kg1xcQmCk7LQkHwUNvdlOFBsM=;
	h=To:Subject:From:Message-Id:Date; b=Z3lwAKktSQ8MtGLgtuPjAPFXMBYaSAOk4fe+a7XiW0zHyT6X0itg0VxNnmm2Q9kTAwgzNxaQGwn4hdoFw+MkyoDO2jL0koqh8+gVTgXSsIMbtFjuDcGc2Yg9FQSxvm9wy/OP6but63kLf2/yh0fnXZ7A1FD9tAY8vnXZv8PAnXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtrWl8CC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtrWl8CC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55EFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754492393;
	bh=1W4oz44F7II7mMMqK6Kg1xcQmCk7LQkHwUNvdlOFBsM=;
	h=To:Subject:From:Date:From;
	b=AtrWl8CCN4i8OCun2M1jAsTrL9MkqcS26pjxvnPsUd7NOkIZZgOdOw7PA/DVIAPaH
	 rjNpI8pGYeapEmkkkIxqzTki/0omptxppDJeCtEQgeKD1w1xRA6rx/J3fZG2Ov9GIp
	 RM+0DHe1H+f22jnFt8S/fCBEJS2J98hFSS+GSOAWmnUPw6f3iRM0LjTLU5stzyG+A2
	 9ZHNQoTk09VnwPe/IFVyZoxteRo96hIK4oo0p7QnUHWufjmq0T+eBar8kBH+C6d1kA
	 UK3pMJGuileZTsd2J7sqSakApTo+rTtZHbb+Kf2ZePQfPA65U6lfu0xeTgbMD2iMR8
	 ol8MPxSnQwivg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 963EFC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449239360.11184.9182530876791466120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27fc5e119cd642c4470bcf16dab85ea5f3406d94e04705172f870fed316962cc
Date: Wed, 06 Aug 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754492393
