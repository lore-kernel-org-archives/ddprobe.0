Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7217833C1B7
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787930434; cv=none; b=MYjXVoxQwomT0yjxsrHpbQ18wfUTOnzjNVPusBZ3baYuivedIPl/6TMyV+at/nL3fFRbKyn0wNma/LvUNGkWmxzgx7bivQtucqqykTAISrFYuvRoN+4mSp5/naI5KBciKdW/E23Mi9g5WzNg1TGkz1N4q6YQW9z8YhWRA2uyerM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787930434; c=relaxed/simple;
	bh=YGQxn4f8RirEvHXXPPqFUXW49IuKurShNPuwF39N4O0=;
	h=To:Subject:From:Message-Id:Date; b=ayBXnSGdTLmz8sZOSj8Ih0xNXk9//1HrJylei/97hQKtU/2bvdxxlucfZv/Cb3TlM6Mma+Vov6XvEIJsRePw25laZ2Zx+q39vsH8uyp4kHo1qSkrvgeApuC0seV/4Xz2ICllHDxHzoVza0awB1LVIgJrLLEWkxpkmUnNplXZPwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f7RmFLRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7RmFLRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B27C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787930433;
	bh=YGQxn4f8RirEvHXXPPqFUXW49IuKurShNPuwF39N4O0=;
	h=To:Subject:From:Date:From;
	b=f7RmFLRQqZ5gamMSXlmjP5D0o5TJ86nVd9ninpZ8Y+s0rwary06O22XbzNVjuHkJx
	 D3IkvvsOPK34hXvofshEGhjgyHC1j3fXZqDJZn5gMEKM7PHBuvmBhf8EfnRNJSGYq4
	 y/idbzGwAiX7qSJYwiKgxbDTpPwz5yrgtCHYQGUNDrsCd4EYD8ZwSgr7Ww9WU/gJOs
	 R7qnQMDaxyN9a+1yQlnAqSnPcIZgA7/4RW41kVoVH9S3u8cOymvPSvaD+mOuLBuyAf
	 /qu2404i5LUztXHb2I0zx4CgPJAMOHPvniB4IUl8Vjk6PrWpvd473l1AI9h4JP0HQQ
	 5nVnUF/oo6usA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABFF5C61DCB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178793043369.25435.11481971970071949123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd01852565a3b2826fd11e8f48c5b533afc51d9d8c889265529d767405a9085
Date: Fri, 28 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787930433
