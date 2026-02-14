Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3572EA171
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771082094; cv=none; b=qucN+HOPHMBuqzYLdIKzF1QSKhU63dELwrgwvBtMKQkXdgFt5q7X2A7ww1VlZaHTkbW81c0+W/JaLtBHWuVg1EQiLb4Gluw9+2fNdT7bs1jBtzvSx2r9J2Icm9oWPZ0LS0l7hH2WrkPecKAwW9V/8TTnOWRN9JVfIH+klWk4fkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771082094; c=relaxed/simple;
	bh=uB2w+hWGv0UDMqqop9hjkbbVGhmhXG/IgUVLxYNLP9c=;
	h=To:Subject:From:Message-Id:Date; b=q96uZbDvslDVtgnjMhtI+MPpbvGCpRqYu5X57pbcibhxFg93cdFUGDeezfQ8fN8RJRH1jA0SrK1FxtFaczLt6CKYzff1o1cjyQYV4IlFoYX8C3oFugNvHIXjON72jfzM65KyIoK4Z0nCR+MGkU5q2gzTuNc62N8RT4zB5iRdho0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nljrDLkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nljrDLkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A874AC16AAE
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771082093;
	bh=uB2w+hWGv0UDMqqop9hjkbbVGhmhXG/IgUVLxYNLP9c=;
	h=To:Subject:From:Date:From;
	b=nljrDLkEr7gyqDUkO8zudoCDtJpTjh8cG1JdZfMFmreHOVEzT9QHXNcMuDA0zpioC
	 jkBZekJMY3RoUX1OFAtNUfGIQSebkRNnBHHcmCmnnn+xvIgHUEL1J6eOArZvuFfybK
	 vzDGjAxxN03TkCf24nonZWbiuBOdXtl8/o/EEPsjg1kOy4UUu7L/YsVqANWHLO0op4
	 wUJJJvM6SM2XsfezsmiTWsUg6PGctkXnMKPqElU06A5rq19P1ikh3yu/zKXj8AlUvd
	 613Yk7XygXAFLe1WHf7BJiHTUN6glO7HQlGGMWWBcXRrKyg6NSzvTXPhx7fkfaYzO0
	 yXbtFoeCYakzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962ADEDF15A
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177108209360.28639.12129687476493701534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68911568c5ab02756e3c09c13a445ead79874f21daaab8028cdce3f2109ec760
Date: Sat, 14 Feb 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771082093
