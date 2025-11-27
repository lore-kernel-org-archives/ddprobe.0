Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3040D3B2A0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764279174; cv=none; b=pN6T88B2t1kcGuJMkQSF94AnmiKCip78Yuw9TbB6KsP1vPcWBx0UrPSSzHYiy0oi3i6ArhXda8utebofT7AzFJpyxO0+aHi+J/y6pLvAdSCKvofLqxEg5ug2xKMNuIzVN61XB6yE/rQuFoZnKTQa9RzBVwzEYATfKV1fgduaZFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764279174; c=relaxed/simple;
	bh=KvAyoGA38Cl8aKftV3S6CyRt5Vx9J0zGQ5QS+2khSNI=;
	h=To:Subject:From:Message-Id:Date; b=Pbe6MUQNx+X5DC9ok/kwTln71s0CWWz/PyMZmD8WnLyqcXATtB6R8WYn47tx7QKujWElmIQalu+yVMG8agYON2A/pRjjkCF77byA+MSJR7kP+3HzwOsqoM9uYXdO75doPP46JTzvUIIzzCZ7ikN4XrqGCGZWMHcFyysHYfolY3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0lze2Vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0lze2Vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F0AC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764279173;
	bh=KvAyoGA38Cl8aKftV3S6CyRt5Vx9J0zGQ5QS+2khSNI=;
	h=To:Subject:From:Date:From;
	b=c0lze2VxNd+4OCR9NtbJ3kev7juFlRTvPFsBQp9PLyzkxyBl4JT8FT2I2aWreYRql
	 bteOAjJqXknu/2dQsNfjNf572WD33x8xRZK1Yo7gJftk7f4Ytp/gE9TnIHK9zWJTZR
	 2jE6Wgmzc+2DHwqu4wkM+J4NNEAVuVEaNABWwDn47DnR5yFd/BbjGLUkoVvPKP+gkk
	 QaVlfrR0lHRNnXRmEutivSikFgDtJ1dmwcamgJjBa+QJFONkqMIe3aqxS+7Ajjtc+o
	 6DQ1WFzy04eKAPZaIi6nUUJwOC6GNNAsR1aIPOxUBDVfnNB6B255aEk0LT///TPFme
	 kIrvGRQvJ0Lgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94DCCD111A8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 21:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176427917358.14833.2406226379233487645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904b680bf26c5f5409c23fb6e3a060934fc115487a6f64adf131cbb9f68784e9
Date: Thu, 27 Nov 2025 21:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764279173
