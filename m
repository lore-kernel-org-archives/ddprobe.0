Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EC0D342C80
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761667194; cv=none; b=SdN4FJ1k6oBDCslFzBVX8RIrEVnFcNsRGQWQJaJWRG+I4q1WTrciyNz0ub5pugbLUKeQy6lf8FUPIn7miyWQOMWQwDMUsZftA6qPcBklANQIcfqGv+lAoDsUGMpK1qrtBigU0rk3/M6cQguJ13hD/OMsKCltxZX7gXd001Ll3WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761667194; c=relaxed/simple;
	bh=kPbyW8J9N41FfLg1ZSAp0FLunADJ3CXsDjC8RIf3Bqs=;
	h=To:Subject:From:Message-Id:Date; b=OKQvKBhT6W4p38pPAblCnm0JI2ZIyazHGBJW9SBSmzd/OxkavzSSzPad9gKRgYMO11cnYGxNph+HvwnPBDL1bwK4Fg1FNDKrRsV7P8eOgAtwxLuRgpeifxufkKTTbuUr5CnHa7QE1CL4gOHjgUvxTFq5UKVpCkMq+6u+0MFB51g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0l/QXte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0l/QXte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ACCC113D0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761667193;
	bh=kPbyW8J9N41FfLg1ZSAp0FLunADJ3CXsDjC8RIf3Bqs=;
	h=To:Subject:From:Date:From;
	b=K0l/QXte/jPTwJ7bPJvNhWY8KjWRes/FUo4vJY9IIMJ0l0NBjYKKGTI7cZ4iA7qLo
	 fV/ycNtuFX9eQ7KSfN4vaiUBV8z5eN/3n6MJ974Z1/y2XPLW/VgiCZE1f3tFQlNIP7
	 BPXrGmkUfNn5udb3jqi8j1SL1SH9n3klESK+gwkMWkDg4P3nuP+MmZT/NXfHhkC4SP
	 /Z5XlVCB0oP8YM5zYXNn01IVAZHygmLGolqo2/GfKxk+ky82kimCkvkCdPM+S4KeUO
	 HnSYwqmkoISwjgqWO/LTEa5uUfahUBqYsyH2UWIw4A5WDZeJr9xcXmMLPmSYg0QIKs
	 qENj9+OLxD4CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B3DCCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176166719357.4783.8105344202503630318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d61b74fa76afcb68166dd9fc54c17e1e10f1108be00e767e9f5806bea1e53d6b
Date: Tue, 28 Oct 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761667193
