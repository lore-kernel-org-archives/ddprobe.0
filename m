Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3233E261B65
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759235395; cv=none; b=AslUotOqnXgbYSb5+oOcJ+7mnayHNrlL2ZLUrZw/RRper449yAL3Jaf7BRxpHXvCTigfcCwz/+WVMYdpppedqpOBoGrk/H041Sfmrnl2Usz+6/7JM3mVfApPIwMsegfmVZArN7oJng5zmmlNUoK6IEWWdlnnEWFZsClgu2w+boU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759235395; c=relaxed/simple;
	bh=7xBIBdof0P7RxEyKygX0KvZWRxJT8MXAw3TGeB5NIwM=;
	h=To:Subject:From:Message-Id:Date; b=Jvg+OanjeSJ310sKMqG0xSg0XPWoWqBdJIFG9jcXkpw8g89y8hHj84JCyJB/n9Vcxbi4YXChi/aTdREYw6GQawcXQYVjpJHMJr0K6Aszn8G2J5MJ8Agcj7+DibzXbD+pj+9hRMsQ4z64LK43JdbV4DVAn4NbP7qBfGFiK+gdKIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBUerTQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBUerTQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB07C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759235393;
	bh=7xBIBdof0P7RxEyKygX0KvZWRxJT8MXAw3TGeB5NIwM=;
	h=To:Subject:From:Date:From;
	b=GBUerTQXdKs61AbpfSLIFeBe+XH3qaW1QKqgIUqUtysIoqPJpklTLMvpaIKUjhvfr
	 xrLQhymjyym2ivp9xWwUI/z30lJVM2ovaKK9ppLtwo6xH5ZYo9tBcaDYsCq9nDUzAy
	 aYCI+5C1h8LDjQZZSd8wVW1gSKHLXF42VdOGJBoIMFD5KqAF2Wv0qTbSzJkyel2YJy
	 o3lH1BPUW/b78SysDrvGFjKG2K5JnV+3kA05XBgeD+veuoHc1hoc+EjHi8kBJzJypn
	 42mTn2EWVG1zr9FBmfUW08uxvnaNHtk36Ch2FaqPUBKmu03s3ABY9MxXb7eMvqnZm/
	 3Rwl4TRY7UMzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E623CCA468
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175923539363.4071.1831983518784216653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d15227aaff8610f29fcfd18d785e17e8f0230ecd0a5aa5bd8de779b63306d142
Date: Tue, 30 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759235393
