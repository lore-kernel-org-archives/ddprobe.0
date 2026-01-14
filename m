Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0195F2441A6
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768409634; cv=none; b=fE0HIgd5OEIVDl3Etb5WBUjUY5v/yvOchbj+CUtxCq3ECppUQLrjQsD0FxpFSrAUb3zrV1WS8vgYLQcmckoaGEWJihe61feAEtiifyLaJx9bRstcmCyGg4nOSiBOJ2cQpXtkarmhHEGls3n+8puIeJJt7m2seUgNxK2+HQDEbSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768409634; c=relaxed/simple;
	bh=w3c4cG+pC4SQ008CbhMlDkTMu4TYXGlClYognvs3cCs=;
	h=To:Subject:From:Message-Id:Date; b=SAaSuQ+/Bcai1e20f9h57iuRX+HrvTrBKN64CqatT1JJt+bQWk4NxgD0v1rxcQ8sJgO+QITrktOyL/QNf2MiV2lzsDZ76Zcc2jKvTwXPB7lzlJMyniF6uokZGemjb4LhqCLL6LBDYljZSo5307uUHnMFXPHkgciye8DT5WMiALo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XXxfFRc7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XXxfFRc7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C0AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768409633;
	bh=w3c4cG+pC4SQ008CbhMlDkTMu4TYXGlClYognvs3cCs=;
	h=To:Subject:From:Date:From;
	b=XXxfFRc7Yhm2d8T5F6/jcujapJrOTzga5SxveqkS3FriQqHWvOw3aOlqBAtG+iNoP
	 ryTLO1XwJMHSW0IYJRBPjEQkQStZjIoNVj6GxwJ4BuDvHbRM4tD8Ceb9CBirEivQcV
	 2JMtap6YKA9ez4oLS1g9/YG4MTsEeuEKwzMoLkuhpMl7M8pWcbSWCCA/BKn1kZOohz
	 YX0DQNv4X082Yz386sOFzPQySFvPlEfLnN3DNm0JnbkKh+KS+eRyWl3XsnjY2MyvNm
	 TDvgDXShFwtPd0/OPl2FzDjdBqLep/T/qUu0Ct5l+N43tJGqZOvf/tnPqSH3advVsn
	 u0XSplq1HeggQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DD4D38FED
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176840963358.17451.16965433987203767224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9ebbac0dcdcaed0aa5b25571c76fb846f45a351ccd165bae8a78b09ca00258
Date: Wed, 14 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768409633
