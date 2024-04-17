Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A99A1860
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 01:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713319163; cv=none; b=mkapuBSul0kkpz81j7ZvxqrZLR964IptQ2L/sQDu5LZvangD8b4O4JAHS4XQ1P97cotjEm0QkiQ7MSE2XBmhPTzqdjjzLUw+v9sYWXFGTmlx+cXh0ZpRX69TSxf9m3Wfej+MzM2Zk3M5PECYSz9NvlY709IlLZ1hwvq+/kjBfzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713319163; c=relaxed/simple;
	bh=HGI/VQkcV4GaqHVw0PcWZZgayu/ipzWAsFSALzLBPBY=;
	h=To:Subject:From:Message-Id:Date; b=h6+R/JDqJqCu4aUSU0z5zvnb6G8uU28cw/WYMQhnXmN62TCVZ9SgZPq8eNVV+SUrNQDXyL4OIifR4WA0xLjLhdSyRWbDBIflFohTakrVbXEHhjF6UxFffkj1XPR/nMQnqUcntKMi/2Q887+aOF6pEz0IjJPcyMU0HrFOR0+L9v0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfy1+zhq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfy1+zhq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F91C113CE
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 01:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713319162;
	bh=HGI/VQkcV4GaqHVw0PcWZZgayu/ipzWAsFSALzLBPBY=;
	h=To:Subject:From:Date:From;
	b=pfy1+zhq5lY8ExcA4717LU66cdLDntHzqV2tMEqTq7xw0AhJFk4k82AuZJf2gHJ/d
	 YVt9kGhMzB0oy/GDEROUhHtczzVcq7pOEFyAw2J4P0Q7zAHAeEt5GfTU/TUpUztN/F
	 XFag2WYP9HCT1qVjeHsi07JL/06UlgOhO6paa2cxxCsHYgUgxDWV1ww+YwTAyyGqxa
	 FhgHN/vOt3oKd0hkgDzjJXIwPaED9OzjVeEcf6ga+IBua8Q2lN8FCRglrFexky4FJR
	 hcEPashScBlnJDNX1zBTlTnKmkF1dat7k560uNNewKAxNrQuMK9tq9Z2TZ9Hwk9alG
	 1xKJmM850q6rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBFD0C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 01:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171331916279.15000.6289640781363001569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 165d0b7bfc8221990ca34a415b5ef6592698f38bf7c606bad1c50cea1b08d709
Date: Wed, 17 Apr 2024 01:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713319162
