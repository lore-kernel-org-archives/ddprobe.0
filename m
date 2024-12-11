Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47E99195FEF
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733933154; cv=none; b=Edi+UP7wbcQWkmzl3y668UX6WMgGE2xwoL5HyOBUXebqWMhB0xHl/ugPpvxZKIv2ZH705mnWeeKS/IOUYihguTj76NAbte2BSM9S2ewDILDyorumuVUC88PWAPTOjmTJjBGLnuE/fPyMT9GjILhkxVzkRyXcltcxOy0+xW0yahM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733933154; c=relaxed/simple;
	bh=kQBcMQALVoy9/M6TxWegGXSb2xGH4C6QU4aLsmYuIT0=;
	h=To:Subject:From:Message-Id:Date; b=Fh7C4ye5f0sYnaMHYbpzRDtoxrWLvUi/SopIaIznPm7drvGmxOevd7KE6DKc9n980PBNw2rlwRnYCMgddIusIBKhQvR5DfsGzmC8LuIztZHARTSWmYWIUkMtp1AfojA6h1GVuAoJrDZXPXWTTJibTqxje56/zyEUWhvfQ2m5wm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kBd1YX0q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kBd1YX0q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6156C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733933153;
	bh=kQBcMQALVoy9/M6TxWegGXSb2xGH4C6QU4aLsmYuIT0=;
	h=To:Subject:From:Date:From;
	b=kBd1YX0q2gn4Yx9MmxM1wDFPmI6D5sOa8twcKAkWuq/rUJhb69kRuKtb08oWDhkIu
	 gxsaOJ2ttKCk08r4x02AL53CVPXgsXUKHZub7VpdI0VcJy1Lwv+RorqxJuxbnggvtK
	 Ldl74nDaf2YIw26MjOnhPQMfuCEanna6FCx/R5Q4m+Cec3f7ozkgxw30zhQSov0MtX
	 cbmSccDda7lvITXSMlNUY/xmF/HBZ4go5pv5eepXQMhEZ9TudyXknxGw4JuTz+Z4vY
	 RuxXsFv51iBtYMKsgNsRlLVJ5rBYOx0pNZYKeBf4o/Vv9r0VA4CbgYIlxuHzZtV26N
	 MQzcHyxK1ns1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFB2E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173393315362.20328.7662653671933577761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 083f92792840d9909daa9fc98858562ce607c394f1178ac76b33b0f87acaee3e
Date: Wed, 11 Dec 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733933153
