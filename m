Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9A913C918
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725318354; cv=none; b=HTfLthK+lGjFGrDaeJec+YO+jSYaAp40XP687lKlkFYjnT/oOsWG0pgdCIi91WLXIROEUyXM6forcqQfRtEgz+rRc3XPPOQwR2HfjNFNP2PNMXbaHPanZdDffqfVNjIGNTtWUrYLa2NOOezF6ecG/iKVlsddDImlJ7/VXcYb3nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725318354; c=relaxed/simple;
	bh=KT2m7lRhZRzJPbnTS3CX57KuEwQh44RgwP/RWLxRssA=;
	h=To:Subject:From:Message-Id:Date; b=tWApQ+U/4C3Vrv0/i/aInce6sOqP4Ls/3uUpDKEm6hrQo8er//7+AKk4FugH9HIODWGcr5JtXkC98NhmuwauKK2+I+npRWa5HO90ScCy312C7nPL621oOxOCUvjyzLC1SS0dCDNaBKJl8F60hixcN1tKSP4RUqhQnzQLhvbwMQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c97FsGdU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c97FsGdU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CD4C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725318353;
	bh=KT2m7lRhZRzJPbnTS3CX57KuEwQh44RgwP/RWLxRssA=;
	h=To:Subject:From:Date:From;
	b=c97FsGdUHo8HAmlf598uiP2PTI6NOdaNOsAAjp3IMuTpaZYTkRvALsZu1dWNigt6e
	 YXvJU9W+sCg8wmERS6HA+N9LSjAWOkXtWAuAGvvzTra9UpJLgoJB9ZB58IT91az6on
	 rTFqGYIfwXzgfjryCRPOmoCpLwUourvjlQI31a5OY5utS6TLQX9zBbk1SDtobaFtQJ
	 ZtJNxvtGVX8MZ+yaXOZ9EZ5jgXzDAEG8IodtBvRP1m23NTaNeAnVWZboLlz2X56sqm
	 vXcHAfkO1TfWbxxlZCvp4OfULieLMoLW8pu6luMACM40QNhLJJBqkeeN9aK6GzgQrF
	 EGyj+AvmYvoIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E468C54FC6
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172531835361.13880.17416302066073490868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8511416c83c18aa1a9de5b630be1930294d09b1d96b6198406e8e8a465e41201
Date: Mon, 02 Sep 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725318353
