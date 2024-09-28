Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C451157490
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727524554; cv=none; b=kIqMIfyr/3jSKVIvqdvq1A3wCdo6fL06n0vkcVkfryIZYA9oypFAT5BIJwdbl4kqVlDi4/Eazn/lDp6U41wfy+XLVZGklSIuXrRoV1+H2lna7scGmuznUoY0iovouvXeLdMC6oL60wkxDQW9kAqtENxJ1nTQzx/o56x+i7Wn4g4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727524554; c=relaxed/simple;
	bh=NNk5m8wINve49GejwUn3rKbaSrl1e2F+HE4D52ceuHg=;
	h=To:Subject:From:Message-Id:Date; b=RHMYacTCZViEmAOpTHvruCN7z+xTw6XDcv3NG43Pt/0Ifm3fh9EAfyLW5qhFP4a0TAUeBYgrMibJeitif3oyLccrsr8SprxZfI2vlaihTwncKMx8uknpuFQzziZVmCjM+Sracpe34h5fbc1oHxIQ1Zkf63UL12keHjGlvu5Hbsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aw5/XD5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aw5/XD5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91FDC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727524553;
	bh=NNk5m8wINve49GejwUn3rKbaSrl1e2F+HE4D52ceuHg=;
	h=To:Subject:From:Date:From;
	b=Aw5/XD5mBDohIWDWBzqY+74Q2ETOtDpenxv+0rzRSSuoi7aCRA4M5vRZUIFSkGKIP
	 UqM0D1+yBxn7PE2PvILmmjTiGWE9gn+85F7LPKf+Xim8qFjI9FSmjJhMnm0R8klAz6
	 hlw+l/cc7d/Xd9pUXXFYkC83EXm2PkONIvMNDyY0qCJ6tFkiEduHQiOqAbhg1dcVva
	 tRlqFSOMyw/0P17q9TzRSi7PqMItgR+UBKqwquxxr6y8fWzc+nhK0GxkCTupH7+4+I
	 LTQvJ+8eZ+9CStezvlurR88iMo6toK6yRnHUnGCqwaZ3f98Q/CoVj1fWcenvBuFsgR
	 MAU/cD0Bx4d7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962E0CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172752455359.21858.14528723893476202520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3b7dbca8529069aaac3680c6797284596f67af37daaff260bfbd4deeef6df60
Date: Sat, 28 Sep 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727524553
