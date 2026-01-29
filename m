Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BDC28934F
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769713434; cv=none; b=QMsnuQoT9t806abC+wX4MwpxTcWjFhvQepNsnadog6cRKKKjp9JoaB/24sQ92dZ1o5RhswPEcEiJ0RJVpZgIDIaLCgZGsXVZPbW5N2SYQfq7xKPtH6fe0H6HIo2Ht+yjKk4CGm0V0E2M6iT7kDM8xiiQnBnPlY7jd77CXiKNR0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769713434; c=relaxed/simple;
	bh=O9npB9wOoijKOkD9jF0AC9/DZJwFbuGqzHTFCvio79E=;
	h=To:Subject:From:Message-Id:Date; b=WuoMUuV5XRFiFVdE2vnKcsfZ3vh795STS5AJEAHZmeBiumSMCtKcNIs390bBDCA44Zz09j6rzB/r6vx0Ohnoo4I3J9cT0ojS7csXbLTGC9ITXxqvNvzifRTjuinJ/ZyPxjRievtdqW983xv4BXSmTP0Bs4SeLMyE2sPR997421s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6xrDBMl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6xrDBMl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4036C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769713433;
	bh=O9npB9wOoijKOkD9jF0AC9/DZJwFbuGqzHTFCvio79E=;
	h=To:Subject:From:Date:From;
	b=B6xrDBMl0gcR9absOmY+CTUxZ7MTyLMJecwI+olkq9+vZAFnf5pcRpFUFPYSVEZSk
	 XHvKZ/RO96arX/nmjpY1FlXI2Rp+OjaV/1mI0hcHNG6Fw3rfrpSqThRrZogGAnDxzk
	 uaxcmxZhh2crIrDQyFF+DL2cV0PSlLhmF9KFJu4017mRLv925DbSBNTraF8AbbxFJU
	 om0PdMINWoj595ACcpnwfhEd9o+p689QJEo76mXC+sjsk9uRbhGJDB+EN+Az+QghdX
	 sm/9RAjJxBJuJJ9ps2JCQ7EhfSOJllxmwXKCTBLhTRqdGeafJK2/D4bpSmlraqRJWQ
	 /6M0NVgJVFrsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FAED73E84
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176971343358.24538.4165411308129224003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c77d2fbf711bc19b0c6907b21b2f45f03069368ebe26c29f8c7e4015dc8b44d
Date: Thu, 29 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769713433
