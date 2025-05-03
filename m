Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFA8190679
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746271794; cv=none; b=fXQSpKAQOblUg3qbA8rOr7dmi+jWVBz4iVcOXyH4bLLIvv3M7RlXQ+Meio8xvPFMQn7I4k2ieaCxEtlAE/ePSZ8qQBA6wavWAHZ8xfwJ3Kq3rlzA6i+2pxpAxK3qdMG280FMakE8uMTdARyfT4X7IcWBvOBgk79L/GZ/bFfQ8EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746271794; c=relaxed/simple;
	bh=/fpYSrza5WyTZlNaY2If5TxQ1jrtgllbfSWppB6StEs=;
	h=To:Subject:From:Message-Id:Date; b=KvM6g39y6pw41j9xhMijYxsWDFY21DRUeCX03nQCIZqGp2N+f+8KskoWyVg3PWHwjHc1oBjf73y604ezyRdrcGOdVbzw0rLxOJwtSsHtvGsj4r0f8l9aqN+AiiBFnOl98e9fpt94G5smS7l6kSg1oUsxLR6ysrnpsNDZc/1mF8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5TIGRpk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5TIGRpk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C3B2C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746271793;
	bh=/fpYSrza5WyTZlNaY2If5TxQ1jrtgllbfSWppB6StEs=;
	h=To:Subject:From:Date:From;
	b=W5TIGRpkiS2N7QSU3NMCiUV+J8gFb8N3M6cdCsWPtd4i+fnF7//Dw7Ois6/mfgO6c
	 BoXJt3+rNgEEYHOH7i6TMZgb1xuYrhXX26phXDIHN7JB3TIFUCPKDrDxHgGWyUCiYl
	 qoKP5EsKVpr9U89ouVXL+8IJS/Ajm2izEUvJ3pn4gNtPqiXHBUQa8LlGWMS5V+7yXy
	 GeQ8nwKKF4qSF7u6zFlAkxAxfwGxo6nBWN1QUZp19eBR0xdCBXPFpnYnSgX+SUJGz0
	 +dpBAlk0hs+gETyPgpLIFd4QA8c7SEdb/c9DJhCTZemPQFBjNLLM8LFClP02g+cIod
	 jDYPCr+Eho1vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DD45C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627179357.9439.16522641353506997560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db613a0a4aa09225d32b75d73ce8e3bdb60684926c28378dc02ef1281e7d254c
Date: Sat, 03 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746271793
