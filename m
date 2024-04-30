Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7278F17BB15
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714519943; cv=none; b=AFnoONdAB2kk7Eir+P9uDm40toD00JUqYdnNG0bT1zkFl9gWB2R6i+oddLTAZqAqpzitQg20+Okp1lio5YYqj87Fcf1/HFk0HgvuCcYRRmYtwt5H0BZg0jk15RcCHcEemFkZlTyOkapiOScqJF8TYaRI1VTCUKtCcC6SOHnqdUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714519943; c=relaxed/simple;
	bh=q98Xa0uXcGbYHRNDnHqB2id6lnaz4c6sSQ9YHxYz40A=;
	h=To:Subject:From:Message-Id:Date; b=Zd7pHmoNSg7PWrtO9caj6dvjNMtzPcjT92Wi24X/POqWTfLkeI6b+ZUaKJa/xMnkZxaHzoQScF1Nlj0log+L6dU5CPtHI4qC1ChCwaaWKLz2NtPK1tGfQESLa+OxQw3a8ozKfzV2KN1TeXQvEWoNEVFW1LI7gwK7708yLsrcqm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uwix6DoJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uwix6DoJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D82F7C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714519942;
	bh=q98Xa0uXcGbYHRNDnHqB2id6lnaz4c6sSQ9YHxYz40A=;
	h=To:Subject:From:Date:From;
	b=uwix6DoJbCqqkuiVyhUrQSxUCvt3Uj2oRCEwfJOpMrhRPgE1GU90098EnTH3EdX7J
	 2kABD3+urI1tyuPq8P/zmCXEtyzuHvC925WqNeCdd4xM27MkfpaOvTixnOtPYM2qvF
	 N2X/3kgMpXfmk73kmAavU2M+1Rr8oYHMnqPL9X6YBYsfVj0Tpvbewlcvdb2KoXOHMA
	 G3eInRTGV+tbA25aoLeVkxlOtnY56gqWAY0xUv19UaEaBdkOLUArF0JfA9FxzOvSp1
	 MblrWqgzkoXn86px8UTCHzwH4V3NIPa9lrT14so8VUQuPUljUsjre1cyLTkoG9I/De
	 jL0TrMqWw56eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F70C10F16
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171451994277.14584.15295708052864252238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c69d16f86cda4e8d8488e4fb7203195e89d11ccbeff8b534b893c422f42a42e
Date: Tue, 30 Apr 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714519942
