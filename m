Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF68713D891
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768607633; cv=none; b=HgYaOsN51ET0I3zd5cn2rvWn8L4T/lXbl5FB/oGzIhRzg7nZbqxPA3xQof1HR6HMnYay9Rybj0jLNUthJkf+4Caw2cdtVhKMLNPs6G4LezfLRz/WiiSuJDG3pPOrxnFtRdgMSGPhmVfoHtQRtEagsr0M7elbIbu6JgvwynL0s6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768607633; c=relaxed/simple;
	bh=MLoN5fgcHtRoDuT5MPCodNU3NWSjvD28IJKVP5MKaSA=;
	h=To:Subject:From:Message-Id:Date; b=uz54pWulSC05wl+jNkqVT3tEOr4SeuYik5axd0NtvhrkwX2BNcdUkA65ipe9PJvoGtdXHp+qYmY5AUD79oFaSdWOQvjFav0DQ81DULtQI/4c010Wrepnt2AG04NJ55rT5DhYD7iphdOsepyrJOs24W44aY5MbRYs4+FuKT1fwfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHXR3XoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHXR3XoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F40C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768607633;
	bh=MLoN5fgcHtRoDuT5MPCodNU3NWSjvD28IJKVP5MKaSA=;
	h=To:Subject:From:Date:From;
	b=AHXR3XoJsjIC58qvdFQlMzyetAnA0XRvQnJPI/McEh/WJPtSKUpBApXD7CYxigRQ6
	 0YOwGGtZQQauOsKPz6It0CASg2aAC/M00IfJJcQB0iNGyQpDDzVy+p2uynIJGglkES
	 /G6uALRFJ5+xU87CEwGurCy/HfO+iCjYfcdiiuv0uReKKBdRNoJ89ldztppa42iawj
	 2Xyzh16M4+yBzLdg5RgFfqo4hEFVhq+dMfjFmnntysNmLlvGDZSml6H9UxBPjNu74E
	 Qcm/ruewUmTOg2HZjrnoYrLKh/LiBwO7yMApOMjXbf+dXinet8frH901d0yeL5Bldb
	 bttzkzn8KL+uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90006C98306
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860763358.11811.3237444987026223307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c2df19a1d0fecc8294822caac44907f2d46cf29a08e49fafc84f0e9334f4c9
Date: Fri, 16 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768607633
