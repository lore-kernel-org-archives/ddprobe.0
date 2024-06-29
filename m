Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF7921364
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719630863; cv=none; b=B48zm0Fot9XXjeTFvXitCDydBb//TYd7oz/oDOmpPnnH5oH7X/tUfFE2DuojYEsAEogAdg8+eLWyMvy4vnOZcO54OatKPEa+RSozTuyzkJzfnc/4kOSvDxtZkRZfy95nHS7pN+6KOTCRBANQDpqhKSD/QyebLld8qHFnZwyN4q8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719630863; c=relaxed/simple;
	bh=/CeqCLfnqxJGmlRhnLyVT/jzAFxN0jg5DjgWC3IyAvk=;
	h=To:Subject:From:Message-Id:Date; b=OWurq1eK9bNoYVNhl3+NTXFWjL4iI9w2tFgeopGgiQmvjOYrIWXQ33CQUiPiD1x77VlyuJEA5DNy8q4qk/sbbFMZblucJuaQWJ1T3mqi1sHnE4bl05RVwWFaEAS2rt8B/RA5KRpHGCmDKPxY32njLgvfKG25jXuh1txqeOi8d1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XuQ7ONkW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XuQ7ONkW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2AE5C116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719630863;
	bh=/CeqCLfnqxJGmlRhnLyVT/jzAFxN0jg5DjgWC3IyAvk=;
	h=To:Subject:From:Date:From;
	b=XuQ7ONkWG1xnh/ERQHP3kt5WL6kXdlFAh8k+o8kG1Rq9aKwij8a88dUDLxfNTkWzB
	 Epg7carEHfjHSNkCk8tFn9eB972hGTNlMTDUEsh369MX78mNXtY25x4KwtxVgYiR+J
	 vag74MsT+8FsI/l9kXexUfnwm747/EaTb2yZB+jTM7DLutE6f5sDT05zcdbUtykOTR
	 w1udtGboL1CwKBmh2wb1SwI3mVGu9lXmaH2Ttd85jfxpMzvXRRyXBRRVSvuKD8SNiz
	 4hS2WOZV346TXyNjcl8RMqPZiSu94xs6I/XXzwCLLFe/tO6zx3+gDvSo6wfYIgtH2M
	 f4SZJ5UxLPzjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D92ECC30653
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 03:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171963086287.27158.9104544167789775593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8f308e1f74733c7e8b6113f2ab4b591f622a3c1d81ad2df3ee36b8253a22f7b
Date: Sat, 29 Jun 2024 03:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719630862
