Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F12B26C39B
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764588774; cv=none; b=nD0ED+m9yzl1bzqs2f2HYQdKeAqxzjbsnezSqPgziXI38cVQ4NNDmakgmWo2jNp/0cjghWHXuH7mOycDVbhBR4x60Og/yJGnKbvRTqDu4pceZCEQFJgylPWcLWo0qyY/M9kjE7LMTfB4Q5kFYfbx9K9PMnMv0UGTB6Hygltmo3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764588774; c=relaxed/simple;
	bh=GCEY+gh2TgZXIRZBWoc3cADNDB9vFRAZpM0Mmp/m5Kk=;
	h=To:Subject:From:Message-Id:Date; b=M/QtPYRrvAy8RGC1DsoNHPAiUwIfPWWVY5JFUzCVELn9NBrNf8BrXJtGAqObzgYT++kYc9tn3P8NmvpdMnQrxLW0BjqJil7i5zNgx1oqltQIU0Dq8efDrEp+tena+ZD+/UlEa7AuaQ0Uaq3E5NYLus4mTYhf01Tm3h6nDu62nss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgqqWFMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgqqWFMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A54C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764588773;
	bh=GCEY+gh2TgZXIRZBWoc3cADNDB9vFRAZpM0Mmp/m5Kk=;
	h=To:Subject:From:Date:From;
	b=fgqqWFMbV2Ypi87uwLUtIoDg+WzCNcmW9Q5EqHHt16j6d73mN0+3RNdL32G0MKqJ2
	 qAZIRasFmLJmX9LaaQIQhsEFYJNA2jCmTulhRbJRxSXREgFJP8dSxdKbDvjPj3hTce
	 s1dh9DxdGK5Ve4Z6kUdxpgIh+TbV4U1YCDda7HoekCjSSsmkDfQNYJ26cCufFYuPur
	 nfrJ12frfgrTz0XRuqRik6tTkyvO6MkuXHIYJ66bebNVPBabz9yYrucR7SeMcQqFLz
	 nLwdXBj+yYzMSsfw8pfJiN6O9vWgMFNjCjAdcwX4TbMUJYvg3nUZGr7R1FPsPPrBVu
	 kSo79MRoIIjZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E9AD116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 11:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176458877359.3142.106041324455287676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 800ae803a841f55268ca391f92e6cc1b0d8ede6599f23e3ee88fb283d6756835
Date: Mon, 01 Dec 2025 11:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764588773
