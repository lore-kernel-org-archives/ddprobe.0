Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56C312F12A5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781556394; cv=none; b=u+hyD8JFdOBg0g/M9j2FHf43JoFhYOPIRr4FBkA0QsBIoCWS1PvBN2okP6rx9aD6ofSMhpwq8a9JAZUqO+zGEfFvT25oVlNdP2iSNhuZ7gZbXitcCV4A7cXwivkWYtB6aTv4GCoajIJMa9V2s4uO57ca9FUvMJtvpUPcqy9P7VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781556394; c=relaxed/simple;
	bh=7NkErwnW4+yYzbxg7nFWKJ0Qc0Hnb09D08Aqq5bzrf0=;
	h=To:Subject:From:Message-Id:Date; b=uUfw26Ypy7twUiAn3DPs5+7aXQuLGcUHD7LYBpCj/9EeKlvCg/XhffDzHwjG90G4zecjjaKaQJBtrbmtznt0ZJ7HNfL8c7TNw2kMttAn4ErNeMjHT7k23Y79wSDa6N2uR2CHlOF6D1qr5Lt7VC7jXZvTuR3FE/KlWl3cQ8R36ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shTEKWXr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shTEKWXr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4F54C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781556393;
	bh=7NkErwnW4+yYzbxg7nFWKJ0Qc0Hnb09D08Aqq5bzrf0=;
	h=To:Subject:From:Date:From;
	b=shTEKWXreZP0RAnnxvVWo26Er7P7WYank9r+3ziaE4HBoD5rxZK3xoOWsB97+IQZC
	 e312gWUw3kPXZt9aFH3dK49MJWCX5tR9VHstLMLPfj9vtgiqWKcgWpFEd7yUvxnVzl
	 2PJsrlam1qS/o60i1d+9ysC8JS9jKxaxkMuGVjvIYw5/Aor75woKukwtghoqrQNSAA
	 gq7CiyayFuUop9w+SK9OBBoCaG/ClSdsM7Hv0hN3KkXM2mz8xF4rDX71qrmw4DSqKj
	 3vkdCHQxAq0cNBjPXSMu2Gcq/Adkb0xUUYXrmWMrXcdXwyKwFk0Qn10CA/dDeG2oqR
	 q4TSdxVCQXwSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B373ACD98E0
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 20:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155639372.22088.8112367745150316344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd092f4a6a737ad858f073d1984c17cd3233d7a044616f95b86f34ab2a5069a0
Date: Mon, 15 Jun 2026 20:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781556393
