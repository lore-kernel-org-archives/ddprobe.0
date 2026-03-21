Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13F562DC357
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774097694; cv=none; b=knLVxSd+6HINLID49VMGDIFkkr4+McUTp9RmcTTPalRGtASsXPkK6lMBSonQLE/DtATSBgzxnH6cn9fjVqW8QR4SVCT6QEmgxPR9kar2mDFu0HYRoZxhzmmpzbIO7wvd5wTcVos4fOwSr53gtWTlmx+9rVxWstNJoN0JjvMTmtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774097694; c=relaxed/simple;
	bh=fInTCxfTKBWEEA9q3inSYfzuM8J1kdt7NvPc7Ye/iE0=;
	h=To:Subject:From:Message-Id:Date; b=qojLogZCffwM7DyuSa1aE3NuTrhzEEPoS/gSuNelOgjJj7N1KC/blGNY0u7dj1rReK+UKAzWHb2vXXlNdp+qsPms8jhJKlPBdsnJLAQAwj4BF+TQm3pg49gZtSRQV5VM/qmvG9zlP1nhtEyMJ9kCKb/fQlvJ6ZulypN67nRYunc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnpNNPa6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnpNNPa6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4199C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774097693;
	bh=fInTCxfTKBWEEA9q3inSYfzuM8J1kdt7NvPc7Ye/iE0=;
	h=To:Subject:From:Date:From;
	b=HnpNNPa6qzOLqiyGC89VVfAhrX3BGEirnQfVZSx8v8k2cVnluoyFIhWBznR3woC0e
	 /Rmr0L/QKWepj7yFyLUr1cMJQ0CluKbFtj6NuMRgfV3jOnmZAcX65FQCus2GQsFYM4
	 f2UHww9kZLj0Gyj6ipVY4D0+TKT+jDAZ5ak2g7ELm9Z6YCwRy0KsUR0T92O1Z+vH92
	 oiqlDBwmsXkdYTNql8z1qb3GzZc6mnz0W8SNJC6qxYhvisPPLiAa0QtLYayHefjB5e
	 X+EuHKs0Xukm8yajnZcYbY2oFjf8gr867a5lu7ZlgKyP2/hXCfktfwwzcTk3asZPJ3
	 AaTFcrsm+2flQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914CE1094472
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 12:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177409769357.23892.1365493329172417106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b25e372d5404a52a11813448fa817c392ca0e20f091da82aa131457b31333ea7
Date: Sat, 21 Mar 2026 12:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774097693
