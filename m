Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105673148D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768359834; cv=none; b=hdSywrrRTeWZVBXwhkrHQlRIlzsBN89IbTic3WfSRhOaJZl4f7N1j5yunqxF1x7ylp6/LeUcTUz3TCfVDFuE1PgSQvme1A2cbQoEJBIrFfGQMFdc+MZ/spiFIExFZhNojEe3k7AIdV+Ol62fDxqB9MLMeVsQcKCp9K+qeQZ76iA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768359834; c=relaxed/simple;
	bh=CNeUuizZ2CUptPV+2anQIW+gaGaQzNyXTcT6yVvM5mE=;
	h=To:Subject:From:Message-Id:Date; b=TX3UUOHfGyLKg4fh/zpRrDlVNUDoW2bomh/kiNJH2c+lawGVwX1Ak+gLsqxvDUd4rAqUnjaoa/5U8d++S2imSICref1Etn1D5m3WUgG30RAKDYLwJJLEGMwrrR5q7BVQqUvtw/MYMlDEOWRKmKjw1e2U2jM06GqCZqzBHfCn6uQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=maDsTEdg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="maDsTEdg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BD4C116C6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768359833;
	bh=CNeUuizZ2CUptPV+2anQIW+gaGaQzNyXTcT6yVvM5mE=;
	h=To:Subject:From:Date:From;
	b=maDsTEdg5+QiJ2ZqEX7c/R3n6rhAM5nVweLPoxLW6DWbn1KxiBfKfnaE6Mjhwt0lA
	 0o77VNt7D0JvLwJuisnDih1NXniRrOBU4TthkHTxsXqS3muR6sGSLJyKraOK8u5OWa
	 Pn1R7nx1irkcJFW2078CZk4eKUbhIRU5NercHdyZmaF46AL6DazliTaXAvAzju5Wf+
	 OGQJcgVpBaWQYAyfPD7Wk5Q/PWhzoepzTuPKIOiJH35xiwHKTMId/bqFBUWHB9yYRZ
	 Aj95SYYokYwLHlgCYUAGMfPHtwCaNxycXYWTh1KrXNAUGv07CP1m7t/YGQvCOqenmb
	 AmhMrRbHJpSNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B26D31A09
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176835983357.25711.6181544576437030538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c48f1e4d1d48385c962f434e17a759cf654e40500e80563d922b6052ecf399a
Date: Wed, 14 Jan 2026 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768359833
