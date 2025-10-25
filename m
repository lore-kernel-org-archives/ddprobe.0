Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CE42163B2
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761390594; cv=none; b=u8EWigMJm+dHhKI3oey07USLGvhGjXRMf6tOG0wPTdt7Zaem3+ROOsmJPr7HjGQB6cpiN5/BKI9DPb+GR5UXuCJIWnDFubyiI/Ytum04iHG7osciGki13o3qEQhkR+PhVdchyxhvCLHLpE8HtxdvwQZTl3Vp8NhWgQD2MhZROPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761390594; c=relaxed/simple;
	bh=zmLqBpk8tIV4hn4CEZ7TTN5coNTU0Vo8mFTBHXf2IOc=;
	h=To:Subject:From:Message-Id:Date; b=UtB8i/f+txEk6VXjleHvREMMdXM14cMy9khoKSWubsltK3G97a/r0HRh7y4nUhPcRuGuIv0fY8/GhgpXIqA0MZyqDocjRHddIfpJ97yf8698wMFLxZ/IWZT+Joagk1zZGmei577iglsXUptPpWDkvwrtt5+X9G7tukBPrV/qZhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pcu2NJ/f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pcu2NJ/f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88F0C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761390593;
	bh=zmLqBpk8tIV4hn4CEZ7TTN5coNTU0Vo8mFTBHXf2IOc=;
	h=To:Subject:From:Date:From;
	b=Pcu2NJ/fTX9VqGzPf3gsNi5qi5ndpr/jgwCk0YsFki057fnDp80E3G1PkdE88+QxI
	 wx0pPxCIZTwVii2huztjQWgPNfpk4ou2Qjy946q9yUeqBeR1X1NshFXZsStC+ByidZ
	 RFl+d0aMZgWVFarGRclkVVw6JUU9+SHJO15S93IqFEHZR1aX0ONz5mTl4XIk2BOHuf
	 fJPboYADapqH6KSVx7fT7buBsbFCzpIB/TIdlJWhfb23ibvcYxe0tmm4QNGkfyfeMS
	 aKtMawLsHuQTkQwTH6EbHbi2vzEImsY3iU3K2pbgh3tUsprXLEG0Lo3aXbITe4VUYg
	 iZZM7q0kMLXvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F23CCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176139059358.26900.10938440650171128142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a68aa9ca20498af50cafc4aa138cb77073dea62d8d229b57eb5588c59cf748b
Date: Sat, 25 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761390593
