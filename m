Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DB2D3DDAF6
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788669034; cv=none; b=oS66E4nsqGroEU15e3ioRaXUZUqtZRmlghZTa6EoJdVtMfVHKfHHMJ41jE6ygQQ1n7K+Ail/sBTt4s7PeEiIQnMtkQgassARwDqLYgmBNs2i2hHVBbjeOegqzT4ld/r1Y6b+iVJEuzCLv5igFPvASr2Lwui8y2f5a3OAzkrYbhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788669034; c=relaxed/simple;
	bh=LHoonMIyNk7UPWlx8UR3uJHbEMt04GNlgZ+TjUdm8Ts=;
	h=To:Subject:From:Message-Id:Date; b=FmcT9d6vWA/8eGakDWtRKWigsbG16ZeXsCIzNFUC/1q98LTltqbmWYsblwQdBV5J4wswkYECA33UPvhhNqCdrXR0wzKWL8Hkouw3L3blyXbwJbtF9IX0P88EAtwCI2cOytAStlpL/sf9sMHLG8UZ/1J0iTr6+XzZueoVIkzlPHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mLUewG5W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mLUewG5W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0983C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788669033;
	bh=LHoonMIyNk7UPWlx8UR3uJHbEMt04GNlgZ+TjUdm8Ts=;
	h=To:Subject:From:Date:From;
	b=mLUewG5W+aE0ZC0hy+gWZYFvjzBWYKmAzYncoNSvldltw/FtYWcqfDGXNdeAcPLZa
	 UiUJUg/ciT/LhVe7zd/uBd+722xSKOn4Ln5I/Wcy6yxr/XXT/z35fejpKnCguRVTJU
	 +3125yYY4NoBSc/yys9HcT/r/QO9lI7PVSfUUYF0Lmpgm8t/sj8WF42J0d2T3JpfwJ
	 LoAmAyu1U07w4VOO2AIj0PfGRtf1sDt7cMRatr2Kd65/OtYE6WOmln3nI9Gt0w8kPd
	 cUpyC+N4qolNi0qBenN0ZqwQoCMNpRf4zDv1VE2Yml6jWNcRaUYKyyON/x1/ure5da
	 Dbosi2kQ2tISg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B95ACC79F91
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866903374.22169.9330363912320616895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faca989e568a1bbeda8cacd4614567547dd496e9b3161f2ba0c0cbd1734df182
Date: Sun, 06 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788669033
