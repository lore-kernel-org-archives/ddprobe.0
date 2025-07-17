Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309591386C9
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752733194; cv=none; b=RthnouOuQILRdRK7pjYYuIgsv8Icy7WHMZ2zAiRIAFFG446KluClj1ZqQjZ+i1N4d2JZxwBjbYtEG+0EPwUAJu0qI1YfIeoRnTxPnKm0tffI4GlQS0Mz+nqxoTFIuO3eNn0Dr+SRA1axrcwikbBiFTTSJSY9BgT0HdPs2dBpMAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752733194; c=relaxed/simple;
	bh=rrx/7KLru95HBlRXzV033EDkHZnicBHwzz4bH3kwp6E=;
	h=To:Subject:From:Message-Id:Date; b=VWjYISbpVOk38qeqPzBw1RbfnsSw1I1XJ7t64YZg7BmF2sDbnaNDxAPN54/gZJjAOpQ8IFmRpuCrHuXOrdEsVDCja9octOzwP0SG8Afgnhh89yc/+3l6CqHbXNK/jLxwcaBZV7GFbIXbjMM1MaIdQBnOe4OomuiV7zE1Coa2SQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IlVCRn9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IlVCRn9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B9EC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752733193;
	bh=rrx/7KLru95HBlRXzV033EDkHZnicBHwzz4bH3kwp6E=;
	h=To:Subject:From:Date:From;
	b=IlVCRn9+hWDHFvEVXoSkHWI9jhFCHuYsjYPlzcZe6kdeutp4uBRIc3fqb4MmZTPr2
	 fBtNxoPu5MnlpHM8DSRwZAQha/stFW8sOjn8o+raFIC1o8hQMAHUKJXzAp8AB63P34
	 sNwraP8830oO/TCiHGCc31xrh57GdEVd7OY2466jac60OiNdqrNSlVseJkN+IHUDsL
	 M1yNLaoTC4q5Inf2TjHeItaF+zsLszQQSsXfW5sJYVBMkyp559czGNOCJM2bYMAJvv
	 6HugRWfX/eKOJ9dD0LZU+DLeQ5oO03GnxJAMgHxDwzin27gX2D+ihmPt9ufUMBWXvO
	 YdTDtxgL59ZyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CD5C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175273319359.4911.9160306893692045558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1907b115c5e37f45b18c9ad30bd41b7f27cfa9a2179067dfd32714c9ca05ee11
Date: Thu, 17 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752733193
