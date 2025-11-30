Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B692186A
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764517974; cv=none; b=Z4m2i3hFISC6EBWJrJ5XQ8reFkX4tEG7l0lg0CUCuOXDIfFN9G5fJvXv2vmqzaTAFzzknHL7Jokc4EPC1ximVI3lqUiA4mRsV44nq/A2YF5vj+hf7hWGwtHPu0V+lUXEHTgpsWh9JOJ3MYlXWp/MbsYDrlzRWAZvjOR2W32gZSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764517974; c=relaxed/simple;
	bh=2D6hjbD2rqqbfJcCECf0tcEdxyVJVjcaVTPAzX0wqaE=;
	h=To:Subject:From:Message-Id:Date; b=JjYGghWfEZMKO0h3NHkrFlJ2mQeK0tAATMl36tOjCoXyUSqVA7H+98HGJeVuKFBgDBy9KqOzLXPUrzBHBQwWqJK29FtNTIV8P9yi5X8ZY0qAoRwnsNdxQHxgnp7cnRQqHWqi1tnPlj0Mc9po6v8DHsQTtIFh5ot/0no8jd7nKK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oO9nB1gX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oO9nB1gX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40ADC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764517973;
	bh=2D6hjbD2rqqbfJcCECf0tcEdxyVJVjcaVTPAzX0wqaE=;
	h=To:Subject:From:Date:From;
	b=oO9nB1gXKRwstZR6YfwYsbIxIEpllUWPN6JF7Xlv63GI0N6CgpMlvwbir+e8Sjg7g
	 kXaRbWpcSpqdbAA7YrT3P5+5zyvOaTx8doentzs7lyoIar1Fg2sWrjXgmrQvcOTUDJ
	 4JSoi2Uy3v/085hOB5dKSkU4dfAo//Bp/W6ICRSdwao2kiKDyTHV9o8vHPhFyQm2rz
	 BTZ+sWKt2uBsw+9pbP2030txRWjJo+ff4tPrTp5w1z5+7Lwql4tr82uC1LFOhkxnm5
	 5MONC+2gc5EhyEiS0JXxLsrVI4PfjrDXAvIXTCmu5Sx3J2P3kG51HvOyoaGo2S9Vcb
	 qjRxnrxCPNgbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FECCFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 15:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176451797358.19241.13484814992701883691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ea38610183de75266d63fa951119f4b5499090c5b67f647d022c9d5110f856c
Date: Sun, 30 Nov 2025 15:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764517973
