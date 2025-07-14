Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C11F269B08
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752517794; cv=none; b=HWEZPdvxVci0qtTbPeqIN/5L+GQwlVHSZDyIk5wI9XnGljPCM7Fty029qZbmyWgcCAh6Vrogiy+RZPbkWcwY1bEnycRK2W4cHrZaANEtV9reZbWhyeRTqQAKPTvkHInawmdPmlcb8y0XRiUgVVe5juk864ypXB8/DGuJkZIP4NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752517794; c=relaxed/simple;
	bh=GSXAHVXVkNS+vL6pHuVAQpQWwiiYkCsyMvtCOWha+z0=;
	h=To:Subject:From:Message-Id:Date; b=ojcsYneFJSVVgPzlXVCoWjd1ySfTU1crgYn8pREzw+5CJvcqWmNM3wY8G+F/eBzvLlUNo7FAdgsZvMg2n9aERcWIhyHFuhgDN2sd0290Tcb2iWB8K00hN8ZzupE3hNbynj/QJhecog5noAo2qwlA70ZfZhdiT/U7+/Wno6R20Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9HIvRIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9HIvRIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3145C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752517793;
	bh=GSXAHVXVkNS+vL6pHuVAQpQWwiiYkCsyMvtCOWha+z0=;
	h=To:Subject:From:Date:From;
	b=K9HIvRIvSXroXvgIdxM12sFv33SSCg992FlmyJFt4Kj5z+ss+kwIz1o52qXvoq9r6
	 TqmaphprzKHKuDHMi42RUm6TLOOlwwVQq7J+6lZodLN2Jd3y2y1LhuVWDUcGfE1Ipz
	 ALyOll+MQbRBWrVVzhlqgXGs+5lI2NKNtQjuWhAQmr51HWN4fGSsmv/TyGlSrY2YST
	 IxioDw+2SpK5pA/qwXOBcjPkfOn0CaDExCEM/erXshxBdD3tjAep2SpRsbZpJkCs3E
	 OhW061eBDfHB9DjmWAUAMTQzJtz5GDl9CSmukM9QFiV8S6bdCKIPtFE/n1GQoAXDv4
	 KkXXr4fn9JwdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC5FC83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175251779363.15122.18284948681933300049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1504bbbb18d364b5ceb84dfb277de2e97a0ee3badab4cf7b67f406d85021ddb6
Date: Mon, 14 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752517793
