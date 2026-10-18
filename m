Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5096327603F
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792366834; cv=none; b=Gj/SRltOYFsUk4/LCSnFtHFpVFStda5ED3tkU/MtA4xhNXIgypogBg1cCnTBu/044s+Y3yLY2No2OcBYY07EbHOXHCgKiwjw+Yq83ncitBRggJ8n+Iww4C++XM3Do5aUzQ7GQBq9WMLD2SxIGjjIx/QEmjVrafpJXGSVEUvY4xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792366834; c=relaxed/simple;
	bh=zmM1CEkoJVro6WMv/5s3R9lr+bs1OS2enou5+SSdCFI=;
	h=To:Subject:From:Message-Id:Date; b=r2dFLLx6aC8GTOI5QLDHIYBW8ss5QnPYUPI5vV0wBOdJ/jEOfX1R1RAH1CQKmQgWViLJSHlkbyYnpYpaRd6ooShXlbXOnm4DQtKjZdteVLbCTsePQPjO6685SAkS5JW25rDfL9majm+P4TZ/io2xhZECUP7H/rQvqq1KdcSZpqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eK2D0mvx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eK2D0mvx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E449CC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792366833;
	bh=zmM1CEkoJVro6WMv/5s3R9lr+bs1OS2enou5+SSdCFI=;
	h=To:Subject:From:Date:From;
	b=eK2D0mvxQ7w0x+xOlxEj5b5c3KLdzF9s9Q8fYrAQDNp7KbnKCjviZ85NgE/U7n9l7
	 4LQBZLtg4ZKa4aQJzWO4etsu3lplkDUL6/Io2wYoneTyyEoDsq4WHNKEDN907eSSX0
	 R8dvqZB5tE9KrABzBPGRAxv4fcBMnWR3js25N7Nnc5cJjkNSYaulsS49uz0S79H3qN
	 ocsAQqIV/aBMXBGgl613csQzc7PYBcJzihL/MEOj+ANK3MlONu0eJvdvWBI1KvQPFi
	 LV75yej2fQHR28/nXhk0PKLB0NhIYdLMsDJeE22l0BufkODmi+jtUUcoOzqvZ+BKxg
	 1WoYh3MueLWdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECEBCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236683373.23543.6189107376544680825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17cff497c46a2e546487753d1845f907bb2a62ab34d3ba0849ca2aaa6c84858b
Date: Sun, 18 Oct 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792366833
