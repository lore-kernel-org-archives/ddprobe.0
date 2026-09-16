Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7879F314D37
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789545634; cv=none; b=LZ7+iri341MlWue9P7LrOVz/jK2cu/zklzRjGz3YJtB9cZCWXl7qbW9kLc6BvVKMW/QrgMYzLPGpNJ2mo1JlnRRe/igCaH54Od/GHuHMHTf4Mii0zmB7s+c+99+KRciDVx8lSB9puSJtXxXaerXrFvOqHRJmB9Ua8ce1p0ODAYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789545634; c=relaxed/simple;
	bh=Chn2jlRWJtSfGzFBUIAEFaCV9Ar03EJGPaH7mtXPYak=;
	h=To:Subject:From:Message-Id:Date; b=Cl8qf0V3OCtQw0/0qSHknzmvO2vf5lpd62ZCBoA6WC+pZzJT64Y/GTcTRSXGcUjSeHObhe8XdmLZSFi8B7d/rjYLQ/rsjxJeGEesE0bn4+kbwmjqdQIUNupy66OUE6itrCkG3Z1AG3Y+ml/F6vA83e01Fzw6CQel1ejuTeRj768=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnZZuZBs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnZZuZBs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBC7C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789545633;
	bh=Chn2jlRWJtSfGzFBUIAEFaCV9Ar03EJGPaH7mtXPYak=;
	h=To:Subject:From:Date:From;
	b=LnZZuZBsy7hXaPVQA3XjBfR76cZmLTnigVsVTYHD4PaFrI6Zr/166KvDr64Iabi5N
	 DLiK92NFFOLb6T/jawxp84Sfy0f+c8XTDufPx3SgOLXShR9RCfBSrXNFQwl28q970m
	 yXsucQ76cCcWWHMHRhkTcSbgAn9laGfRhnRub52zI7+HMjCtPIbnnG3hFJepLOh5YF
	 zHBH8sAhExdTH4OR/LGfONWdQb455zoK2r4/QbsXb+PHCDQrx9qWx7kIJd9kUxxW46
	 Ge+ClGniWZMz8JkLYc+Pp7A1RqLU5d54BpfHIx/LX0hMIA41huEdbL4NfCS8Mum253
	 7XS7EEtQmaFrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6D77C982C1
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954563373.17966.8991895386318042146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ecf595800be90029459310c4b70778f7eb0b8a4b6261d09d845d8018852ce6
Date: Wed, 16 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789545633
