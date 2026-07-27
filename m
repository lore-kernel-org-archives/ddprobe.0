Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485F537D13D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785164434; cv=none; b=NIo4NBBL7E/x+UA2cgqPzaok3ti425Po1yQgjkUbDVQSF2VjrP8WTM4w7jJg30XYuosrogYKErqwNvwItS4V8yb359rpVZT6tfDtHrkr/tzO77z7mLf6Y7NJhxBGlKDND/wLpxwV6G2Kdr2kRei2qPaKLLVjKAOgT9pV+v8/81k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785164434; c=relaxed/simple;
	bh=O774HsADk0zE7yAXJzfEoi/+7eBgIFpKlieJWJvHmSU=;
	h=To:Subject:From:Message-Id:Date; b=tjHzLNf9nYe6BQDrYjggmUbaoJcU3/gxywYbeHd+u+G6L1LfguvbiqCeHIkiXN784ABWE7OfUonNZEO/lZfq4kvzVuqEE6zaBMDuI3xo+KjHJeU7BSpmqa52c8mHbKgdjc/xCg/vWh55kja+RdHtGP+GuJq6WtlJvZLH717TLi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhhqJN5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhhqJN5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF579C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785164433;
	bh=O774HsADk0zE7yAXJzfEoi/+7eBgIFpKlieJWJvHmSU=;
	h=To:Subject:From:Date:From;
	b=mhhqJN5ZUo59LoEnFPGqbELQLlC9U5XaCra0tPTFNS7K46yqsCnoP+XYEWibVHMeu
	 sEBdJOp8NQxF0tlkPhUwFvukVzwKBmI9maN/2hJWCHcSANwaknQvi1c41J7blMZEIr
	 COchYHisKRV9EoQliqGLR1EQEQfCezpR3c1CNLKmFoLYi9ojns47iTEAs/cnynrg81
	 xyzkP9HDE3FYg56+W8SyKi5g/uIqQvhJbOyegmW8M60291TZCwFIXxMtR0vJt0FdqQ
	 +IjKMZmEpNUypAQzg0oO01EQoHIb+cEeFtm3tfdY7fFOUbY2eZ+EDg7+vNkJP/PaN6
	 g3BmOgxf9OHVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADC0C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516443368.13124.1279296955577722458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd89bffbda637a05654fd6ec92aae0b944a74d371c8f63006169738557e63f1
Date: Mon, 27 Jul 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785164433
