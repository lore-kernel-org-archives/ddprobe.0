Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 416BE24EF6B
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749197394; cv=none; b=UYm/PSG/svG8bMIYbmDuJwS13jmlm0y4WMN9CvXrydPEH1jci1tXq7/KEBOLrMo2DkJj5OXP3Oq+gP1YhYN63cLpzG7/AoutRhfMkaQon5XETSQlx5qTqTt9z1JJkfrGs3/3OuBnj4LF8UdH9GG32l2SFoj3sa3/L0KS8QMScUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749197394; c=relaxed/simple;
	bh=skN4sY8zQtE0k41eyKUxMmLQ57aEZjdTVQ2oElua1TQ=;
	h=To:Subject:From:Message-Id:Date; b=T3UMqUH+Qhm7Glg0Fq5kVHmQ+92QNbhN/l1Cuc2gFWtsO+Mfv5Mr8KEVMIrr9vnHJ1ovAVu/N3ID2WkQhwEDjmz6PeDb269smTXr9JZ/dQuQhZrZGAcFdrdi0Bqs37QWDj+84m39MpyU8inKfeYvnnl24VbqHSFVH2kBJF6HsQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Is7/tDCN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Is7/tDCN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5950C4CEEF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749197393;
	bh=skN4sY8zQtE0k41eyKUxMmLQ57aEZjdTVQ2oElua1TQ=;
	h=To:Subject:From:Date:From;
	b=Is7/tDCNo78DVXqIHNjcYsnvO4oqNL1/e8vtuCd54+qm/66ZNtOvpku5ZBtfOBFJi
	 2Hsb+KVMdxnU5iWigM0jEnWQMH7ytQ/xXnydckkOgpJPihNqBM+i30mXI0iPfd+cyt
	 ubUjpMookxcIC88Oou21LoVCByrDLySI7BRy8cZLs9iuoxTtGVWFFZSYZI8Km8KU5u
	 dqlr2I2CR+QveGsTFrJ0MGlC7fZmdceNfM99EGqXypZAfl9qmKpLlKxRlGU9AVYNxb
	 bQ2d8bSBXui7BifWeUbuQwIUUBlPLhEvHSU8LgomPmQqsT34dsWvohFXmcU1jwTi3x
	 +zI+Kv+e6P/nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C32C5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174919739359.22157.13507541009064947868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed1ffd221b9fa33aed10d84bf2d887f4bd547952fb037b517e3ca9ba4f8a7da0
Date: Fri, 06 Jun 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749197393
