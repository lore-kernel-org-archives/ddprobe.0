Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4432213E88A
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 12:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714135943; cv=none; b=NkxYCJqwyI7isvZ+YHbv1/IbCZIDPbRo2MdvkayCKEOROFykvJdDHpV4hJRDcqwj/7Q05pbtoUqVd/HuMNsWNBTQYF3IJ+FXj6R5hXprftSnZmRf+x+NJDsqB+paO3Li0q9gvCIoLf8xGZHUN08l9o7t1aB2r15p3/TudueEJn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714135943; c=relaxed/simple;
	bh=QpDElnXKkcsXEnDANVWCnq/bRWlsmlBJrO9iOYLB5tU=;
	h=To:Subject:From:Message-Id:Date; b=iQ94yCuQa5Eb1hGYReho6s7THil7jyc1FWTZGFGm+vgA7vVhxAWz8bGIvw3HRNDvugS2Wvm7Rnq2bvYHBxnk/QCAeKQ1WDPHUvaWCVIYfFgKWR/M/L8NaErnHcIpY42LJpWsV416iLIP6epykau2enTZKcdmovM2YbwVihOI+dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xx0EN3Mz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xx0EN3Mz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2D2C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714135942;
	bh=QpDElnXKkcsXEnDANVWCnq/bRWlsmlBJrO9iOYLB5tU=;
	h=To:Subject:From:Date:From;
	b=Xx0EN3MzBR5t0oqTE5GbsHxtsUJxd1elP9hyThCxiWNLR7+c9JNbgrY0A1N38vOFZ
	 Q07ilzTgP9lLQGGrMxsCSt8XriBfL8LJGxvT9ldQBDq+LVYUY1cPoy6ApUfQBWx8Sg
	 Zq4K3U4+fkVTZBB+QMdiYmhF00OOmZUTSLhib2sugJiiJKPE0JPZSAUMlY2w0wnV/k
	 4cjo1YCxUeSsnw4ucnSRZWZ2hHADx5TFnb8yJ/dyy806CvsC8QqxCCpji3pvJ32tMQ
	 e2iCWRn5Doibv/tWi5V6Icmqwqy0hKuPq2sIeKLnKX7U0Ivt4GQDqOSh4L1bwoi1uh
	 HH0m8v19Ed4lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD4D6C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 12:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171413594276.8734.16314135723554593903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8052fc79e70ace1885d7c23eb7031d6af7b188227bf208bf7b8308b2a71e631b
Date: Fri, 26 Apr 2024 12:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714135942
