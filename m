Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 393E3212B2B
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746177595; cv=none; b=Rd2sfEzPm1j6y/eBwaVPXXL6eUb5laMGS/3iIbUNCptX7t9TWB8P/QFsJPFym2z+zML8V14qnSESG/ximtW62M1pXoz2sgVfSygiF9qGRkZlkhlrGmlpP9RSNX1yn3Xc2DpN3KdTmJIrKkFVV65/0qkeItfHbyFfVmDRkW9WyYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746177595; c=relaxed/simple;
	bh=jxDYmsYeUY+YLr0fi5e4lYtmp4isSTYzj1r5Y0PpGf8=;
	h=To:Subject:From:Message-Id:Date; b=jrlLbJUwCTBtR1nCOSmaPIToTobMXwzpgLO2jf7jCl+a4nTJhX9NgzHVbuO8MYaHYFZjMjuZuIzzRioH6lO+2zqIzwWqBCuCJtP/fUVS1D/2Kz7L5UNPUqp/nSpb45ubSLlzgzFPVNG87FnZMdAhuvIwNoEKpFWhR3WzHQatoMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7u76ve1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7u76ve1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE12C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746177593;
	bh=jxDYmsYeUY+YLr0fi5e4lYtmp4isSTYzj1r5Y0PpGf8=;
	h=To:Subject:From:Date:From;
	b=u7u76ve1OQIq9T0cxeZDEf8x1i9P6hPYyOJgRLbswFUzbxGhMxsvKV0XKBmAuE2+q
	 QJSC8BkAa8i5PuYwnN7iO6zp43LFvUKKyFjDvkrDr8Ss54LQmQfcdIHeugoTytdQZ6
	 OpBeEqlCCFdVr6HBBolEwCYsAfRIPSO9bvQHNn1yLYskbo21lSj70OwjlBJSLT6vBP
	 pux86rjon8jUDk44c+0BxmtaGZ00XLbivi7/n99pQiltloXjfYriYHknKVQmExXwpw
	 ddix+4tDynxCI9PpCm/MdLfGDxum+jyXjpmp8QFAPwrBjXxYeevnvMZiuG216QgVFN
	 4IuyMO0JIXszw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE43C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617759357.11101.18040296940184017266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97d2773f4e6f37b3941bfac201b81c3d1d5ae871ac730b96cc3ac19ea7c1e2e0
Date: Fri, 02 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746177593
