Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC22542B721
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778836233; cv=none; b=DuR8fDEC2B8HE6vzyWuUQIUd6klJG8eMY4TlmCyqwtXKT+bWLhncT4rpKncPf2xzsKroDxSvz1xM3Fz9UoIJ1kmethUjSyf4OGMAyhk9Bm1tQdqFb2/2PWNQiUv974A0i11T92EeFnSl+37ME7j53JYXf1nMqGrDZW8IfcFph6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778836233; c=relaxed/simple;
	bh=pjGhBBpZNl3xXru6W+ngcc/oBnmwKMsv5LxPFnb90qc=;
	h=To:Subject:From:Message-Id:Date; b=NeCesXXdJ1yq8vc8LkZzk55x5VR9Qre06Vm+dGDQOzTfT1AHzjgcqjkZfNHPwz40kRf971OKi0dpd2i8kRJDrp6bKnnzrUq7zLvo3z24hTIi9rDhLEDYGhInCVx3RghZ7E1cvtphqa8KhJbyH3jDFNRkQn/y20wXQ0oZbuvIJCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvmAThan; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvmAThan"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC9AEC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778836233;
	bh=pjGhBBpZNl3xXru6W+ngcc/oBnmwKMsv5LxPFnb90qc=;
	h=To:Subject:From:Date:From;
	b=mvmAThan991+ItMaUhcEBflr7WzaaHiAmlVBrydz2391DVAqlW+pPeq9aU+DbeK6t
	 BGr41HqvXdpL4yHvVRdBewu27Si7qF3gyX4PY6zgSUunKwaUM812dcxq0Pla4XTPbZ
	 LOvmBXsiH1qMVsu0hEExWgh6psH94cdv3NkpJDQTZ96fpy/v38NELnXUl1TXWRraWt
	 TZRr8RhEOUa45uoBrmo0pN5rs3lXIVAWPZwXxmpDX+zXpQAPCpV7HEOkqFCUOsB+Hw
	 nx7HpIIcNvezbIhRwTPiVixqc01PpJwr9YIobcmRYCcAlOtaaOAnFn4iigIxU0TBaG
	 0buGwSYlapcQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5EFCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883623369.11839.6712029117185071766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 962b7cd6b583a688e188dd2020e8bfd3c5580da52e0404d535fd00f804c255b2
Date: Fri, 15 May 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778836233
