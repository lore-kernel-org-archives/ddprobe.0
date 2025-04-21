Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549D62F3E
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745198994; cv=none; b=PdhcTIO3NFwctnuUWoSyN8NtqRIk7N88Xv8pvPhBfu47oTqoHq0+cf/M+Lcg+nucYBDICyQzlsxeU8Ds55gzRdxPaUrJLsG5AES1TmLEt2nQ17yZvRax8ZzmenbP1LBmKXuBFddo2/BL4KDrfK3skPSv0qtecGpLNyG7+vwQ8sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745198994; c=relaxed/simple;
	bh=aGO+gdeGH4jzz2U2YLhahYEkp5m+3WXia9wic5XBtqk=;
	h=To:Subject:From:Message-Id:Date; b=d539a5N8lJPgzwtO7mQTRo8xy5WltvP3RMhQCR2jyqi8TTY/4S+/OF0txky3XhZ/oPa7YBw4IO6SdA9u9O3S1oZNc4Ihz1BxbM4Vxww2VLgpdeSI8UYRiiGZMyJ4FJdCM0keeOI7LiyooQaIalsIa3868CWEHzPf76eGpN/fd3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y32Ovy9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y32Ovy9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B98CCC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745198993;
	bh=aGO+gdeGH4jzz2U2YLhahYEkp5m+3WXia9wic5XBtqk=;
	h=To:Subject:From:Date:From;
	b=Y32Ovy9ZLKwf7E8ojec48hUSOAE8wnOI6E3aFM52FdK+BkksBr/VzMFdDoJeVPKlF
	 jWoSMbO2EjANBf6G7X3ZY/BmT0f3Z/d9jNJTAq0apR8kiF4tDV9Eh6PxMe8QjIvR0b
	 hcAtW88f3gjcvKnbLEm4vXzpFmx0YanUDAKK8UZVani+Ng6kZTZ9rOPjrYA1YRoq/c
	 gkApJpM7N7LqLG+PCljU9uUGj2uy/WeUPj+WbKdcYJJTLmRUK+Gs6Qv5Xjluq0jPpi
	 BHAuWnlSkiPYYcLyEFvbMrcA3JRincQs8JMui/XA8j1og4WOnLZY8KMa4LdW2oo0SJ
	 CnAS7xP+OEYRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D356C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174519899360.16088.2196702589056889906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a6bff22055c22f016732a50bece95097d1f1a77f04b48b196fff023ca0701ac
Date: Mon, 21 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745198993
