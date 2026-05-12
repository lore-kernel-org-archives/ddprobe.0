Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1259372071
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778629234; cv=none; b=QowA6yG6CxJlkdSd0qTcA085QUrqP0HsMvcMQrSKCybvvVDtEqRhpqbJypqZqeP4YtDXvnZ9+MjUQdDGfKuvATyyTNNBHERcjLPknYMqk+2V3hlN2Vfk/GFad1R6zGSsKrUQDtH2yCicbDZemLMFHliBW+ekReEkra1nXi0d5H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778629234; c=relaxed/simple;
	bh=Xs7Ellr4hBtsuK3UcEI9TF2abofAOJex1iZN6gAG4sk=;
	h=To:Subject:From:Message-Id:Date; b=lWuYUqRPqNQaTN2GD2J17lmQJQrEQwIIjX8OiuD5hPRkSwQnwhgzgET1PHsX3MoRzkyJzH68mcnHdq/DwxRz1k9o6SQJipJy8I4Fww3nzoqmOVlEmtfQQWvXEghspYgsD2zcCbexQ7Nfb8zx3f5neb9FDU4j8bL1/IeD5NXSs3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PSVNpmGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PSVNpmGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9AB4C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778629233;
	bh=Xs7Ellr4hBtsuK3UcEI9TF2abofAOJex1iZN6gAG4sk=;
	h=To:Subject:From:Date:From;
	b=PSVNpmGP/FTRrmzqayugfzV0lL8iQnUcIo4va2Qf1Q8oNrBhkr0VuI1SJZwrWnpoX
	 mpzLRg+sGHXz32KuWqGIk6DtKz4UOCwwXqlG7gsnKBLQH6cIk201atjfREdnRWUuF9
	 3L4Iz773BKQrSkSutS0nwtRcyBcTVmQWE9T8yf9uoHO5NQumD0h54NCeYVSGGPUdjF
	 h+13kOYo3X4ptfj+K36ZL3TEFlDy+jViuUqXJXb/AmNiCLBbxd5o5YLsIMApNEXN/1
	 T3xonB0WPOeslrvJuq5aVjTzjKdfQa5nziTb9HmTlX/ayaKsELteei1115dqGA/7zP
	 NoQjmDnqaqiyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB25DCD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862923369.26734.7032502154398815766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e344658ad7c1c1e1331c583bfd92d483eab74d796753266f1f0a515befe616cd
Date: Tue, 12 May 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778629233
