Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4286425634
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743897594; cv=none; b=kxoc6uM4FA4Yv0MmveGRjPPZN1fI0H5nJhEFUwsqsc+L61OS5wrOmUHTWxppxQ7v+IikQ5hQM4fdyk60CuamOGJDFg5vy2tqiBdy5GGwpsGjulPMnuyf+bWIF8fO3MjkAyoAT0V8nSSGXEzccgvHy9DgYvNSC+Imf/w76q+X+ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743897594; c=relaxed/simple;
	bh=myKGoTnDhV+eMsAVBZS6QRxrtZlSPHTjKjP4mKIPn94=;
	h=To:Subject:From:Message-Id:Date; b=NpVT3u8qySuaHRV8CjBGaXWyD3j4lNVDB4zBki5Vt0poM0Xz1HhhGE5WuX47IweNhS2hQWVptaTNt9sJIU1tPbXCfFrV8m1cEcjD+OVJJ+a3UnPyhYeSjerDASqXlcZgmOjiyw6/MaZDd64/TAnOydI6URVBwDHjYs2d3J5icEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fxbHQyvY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fxbHQyvY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F05C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743897593;
	bh=myKGoTnDhV+eMsAVBZS6QRxrtZlSPHTjKjP4mKIPn94=;
	h=To:Subject:From:Date:From;
	b=fxbHQyvYfa7btIOkNG7qqPV/yuQUlOc59hsA0dWIuhc/aTnQxCYhs4t363pTlxpLw
	 idFmCWd5gALvjbKHFyAUkH78TaBvlk8wkxwiz6mTbEZe5nQglZPZSFont3h+Hu6gTJ
	 Kjp0bGf8+dsl/mlig5OSMidU8CMdiLS4hMVnCF+PUIKvTVII6HaSz2fkb0S8F20pF6
	 5Y1SU/1wkepTMSV0B7jyTqEEk47ZoaLlaHXugHW9RxF+Z+8kJhYlMWHN6QpTUr++0S
	 4LtTe9e9LKJS3xWImocsY0MUp2AZ5h2S1usMxWqTszjF9qqLqCeeA6RjO6dLsfLLEY
	 hAgzTp4gapbLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C06CC36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174389759361.11933.14188541045818256104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01582ed18b73786cd836ca80a3b89d647e72a0471831bd41ae1b106f3ee907e6
Date: Sat, 05 Apr 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743897593
