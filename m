Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D9773CCFC9
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779086434; cv=none; b=tGvfK8MFUQRCQKIU1dcUUj3AARkTFRjce+CxyNhh7xPsZuSWciCHDXtK5s8gGkG0UStlqiwabisQYvJIdVw6z9OmwqsEDMFG6w6usKmhaieIRR04CWApaQCrrOIN9wRWB6R9ocQbJIjduH2zMewxn68o9IsJO+iI+FLDUqzcixI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779086434; c=relaxed/simple;
	bh=eT6tMGKJrsqclofAXU2OKphgGqcaoHoSrjyjM/ahVMs=;
	h=To:Subject:From:Message-Id:Date; b=ETkdwNJHWUnjhmKDag4Tcv6G9Bwxcz7r6dlh05Hp8GTSf/w4c3iCSlR3PL4YAqq4fIILgjdYUD42zDQb9Z4E00ABZ22XNR4QfsRb6NbaTDp7WQ5yDKdujaJW0XoLTkhjoTahYHh0zoNyVsRUGlL+TCsAAJ4MLLVLtdJq+bEXJUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KshrRN4d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KshrRN4d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB6D4C2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779086433;
	bh=eT6tMGKJrsqclofAXU2OKphgGqcaoHoSrjyjM/ahVMs=;
	h=To:Subject:From:Date:From;
	b=KshrRN4dR/twBKSk2lucVqTQJSkThDYcpSN02EXlsiz+/UC8PkuOhyOifKrRFt237
	 9r4nNJRjboSdyv3bIAaUsf2iD5TIspCqBBxHul52GCyKhLqxzJGecZukLaJbhU69p3
	 d8Bszgn/3Qop8YpDLu8/P3sKGPMd54GJErfAb/UTlfjWyZ48ph9O5BRK4YuI8mw6Ux
	 x9HEsqoN8X8FFZLOOHp2lwsWhNiVUJrYNZV1IX0HscqCPdH5I6PLKqWMXoIWdecwG/
	 S9WSnYYzpBbfPBOWnQWS7X9LYjUriwqNU8A2hF2f6dIjOM+lHSbbq9BFQD7dBFZR8T
	 x2u+rK3/gdVcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB23CD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908643369.13485.4272065227424777030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2300d0d6434a84086162b79ef29efbb01ce3cd18022e58dba68e267234c922c1
Date: Mon, 18 May 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779086433
