Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4702D1EF372
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746227994; cv=none; b=IIa9EssfYBSkFuHtQLhBecgI774s91y5Kn3poqb47kHEYefO7egDzAYZOpZZH7nCIZKk5tZRMq6hbFBlU6PlTXGbG3yOq6V0yky8s1F6uyck/wC1CPsTh0RZEUiPgxifz1vQ/LMsdBGqHOE143cZeS5KBQwpv62UprEhE8GgVo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746227994; c=relaxed/simple;
	bh=Wz8fLrOFyQNqQMm6GoWGY8fNehg8s9JphRVqtvjEwJs=;
	h=To:Subject:From:Message-Id:Date; b=VeIiKPFskxRVGAMkRbChzaSPl+X9t78ot6GZdWUyeFvWpSeJrC8IpxWmJkd8z553ae/RHTLSW5h8OD845brI4+zMP+NjaoO7Ycn/Tgix/keMFKeSOkYypB4CTTje4lIwIpk7aIOdFe1+TeI4ai7qogizqSsHD024ikGg9igvx5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YoHRQ61o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YoHRQ61o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51D6C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746227993;
	bh=Wz8fLrOFyQNqQMm6GoWGY8fNehg8s9JphRVqtvjEwJs=;
	h=To:Subject:From:Date:From;
	b=YoHRQ61otj15gNsmDDc1I+9iuAZSczx8Ol56Nwt96nZmf5uZLP+Y8GMc5VPGSoGj9
	 HvaCEGmbVrzS/JeDomyuM3pmuuOugNcA/LQK+jC0t/eZdQPEeZWmKcTxxwHIF8Zylf
	 LCYpO+i8HK2YQMmDDpSNpfEsNJNzMHJmDcvonQSH94wXur1UClQ8k5diCTqMeehxdi
	 nfKvzbYPWcYnqdAFLSZc8gPmQANPntdV0pBiumeHstsRCFvOi5QD1LrJrUTZH3bw68
	 BwGIqtASosVOFfAMfaMlmOPYNK4McfL3vUxD/MzRAhcUMSWhpQkSV0FvfCc05xVZ89
	 327cnpBEwqTFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93719C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174622799357.25263.17618738559452620389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bf16faf6859249d4228286508f59f594a1b8ee9c0b90ee79bc29c8ecc8db731
Date: Fri, 02 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746227993
