Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DB527146A
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768622634; cv=none; b=MpKL3bINwo2MKdNu4F9NNC92W6fRTEpdlC4ctzc50Y3DO9bTjtMr/MfkKWU079NrJQYhqwzKUYGvF+8XYOkvWpXy74pVqLH5TRfLou5XKLSXaUYkCILSkNRJGC6Uq5h0I1aV6zioFW6T56ATTlzVlQxKynFsQJVrqvWMx0GsVzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768622634; c=relaxed/simple;
	bh=rJwbnPJ3q4ryMJRJk5UNr20+52Z3OOHVaAo47K9YZhU=;
	h=To:Subject:From:Message-Id:Date; b=dFC+IMB0Eu0G8ZX6DBynX2OjLSIbOhpmjlpyqqUBQ16e/2eyt1xG0rPDnrmRNM0Wnlsr636z3QTniZA0QZcZz7vvV88AyR29PL1gRd9hPMJobptl2zqFfypkmbnyVF+gTlFcmvkZf1yWa8Ir/wh2CQiUbq8+yb3uhPFJrk4C+Z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJPmDLMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJPmDLMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A22BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768622633;
	bh=rJwbnPJ3q4ryMJRJk5UNr20+52Z3OOHVaAo47K9YZhU=;
	h=To:Subject:From:Date:From;
	b=FJPmDLMrMRCoViu0bHARNGx+RB26hUv7/mv2u3Q4zi3tQgWNx69mer8DvvJ18MhyO
	 QkcwwMgsRQznEtCBzUqfjXNwJXJDocabhow2SeW5csEe8BhaHMzFikEqSXTZZJO5HI
	 dhf42JTMlFgQwdmJXOYs+u/G2R0LnS/wfdhi+fU9i6aAC8RdubqjSfNJNF2sMLtFaU
	 QErfQRKQ6W9w7x5p9cDRdrww05N1Lu47U7KH5p9erQh4hD03mhKV7fF1IpDAfRV1l+
	 ZXa+zf+YcwNP9DWltm4nr7+a941PBffm+qedQzt9517SynZLpUmMnDd67FT68sd5dM
	 QLZQEpz2PntXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B9C9830D
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862263358.27310.519216852035132082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7e92b5c7c1df67d0494428c988ff785babe6fea6acc6512bbdb0fe7af6a31d
Date: Sat, 17 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768622633
