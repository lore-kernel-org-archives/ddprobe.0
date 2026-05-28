Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC56409638
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779998554; cv=none; b=qazW/pQzWMuxhbpyHVQm/O+BynR20miNaConPgLbFhLg64XshnzDiydmpBKxS0+tA/zZQ0OSBkDO1DIaowgBU0OIJ15GOxBBFDmIj+NyMMW2dsu3nj46rYUnxgPctZtXxC3Xzjs8GU853BznnufBENVgMT2YO8vHoBeVPDc3Qwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779998554; c=relaxed/simple;
	bh=mlrQuvXfkgB6QmxiV0OFhTGyIhpQODGRBmQ7Wc7CjtM=;
	h=To:Subject:From:Message-Id:Date; b=onZeoD06e9CBDFZhsj6nzf4CcizyNSaCwDtGTjh8k6MWTthXIU1pWrooxxVMdyleuhgB+pJTPTa8PpPKJM5L0BGrCgxi7lW1bd8aEo+ZXq3xoDhtXhFEa5XPoDPyuVXeLAtBdud+gf0XQgwtit7MJR6pxgVZdKeIOLioiuHd308=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lb6WeYnV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lb6WeYnV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65C5C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779998553;
	bh=mlrQuvXfkgB6QmxiV0OFhTGyIhpQODGRBmQ7Wc7CjtM=;
	h=To:Subject:From:Date:From;
	b=lb6WeYnVMEUkSrxu4oKpi8SsywfC62cvR1Yt/C4yaf01eoFSjmZSZJhjgA+4NU4fh
	 QvcPr2QJJVG/1TqLcPFUS87hWI9aTzsrQAQsLGd/Cf8gWAfdecmr15wOo8qD93kWAs
	 UW1STqgunD7NXfIyEXRAXFsdKCqYcNUsAbsCHQiy4ZjdOB62LN8N6pPMMsoUWo0Mn+
	 WqvDUyCmzdF0wUNEXZR1b6c33BWH9LFBZlszNVNAAshNQdzpl3mYQApFLK5qkDrgm4
	 R3phEX1/SShiz6rW4ueRdEaPNtCjSsyU0kXmgO6No94mILxirqzkafEJ48EnZnaUOV
	 LDtPIGbPOOtLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B64CECD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 20:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177999855373.9557.3690228720684793813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7e4297f89bbf3cde6b89dacad7b80668bccbd9c2e6456644956a72f59904976
Date: Thu, 28 May 2026 20:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779998553
