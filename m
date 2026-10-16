Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61C2D175A85
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792128634; cv=none; b=Wqh3UNZRxIAO5iYbz2zBtcMHObMgTn9KQ0/pQIv3RpxfM58qgxb0/uMUC2d/Uo7IvW4E+C0tbh8Qwl4dpE8RchGQPgagcOzelYG5e7S3m+XzealaTIykt+P1Arh95s/bq8AoL++4HGqjizmAQs+F32ASduUSAkxAZMH2oSRCL90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792128634; c=relaxed/simple;
	bh=SXWlcZYy5IrfAn1/FLm865zC1Sp6oH8ewHYebzuy+RY=;
	h=To:Subject:From:Message-Id:Date; b=mmG3vm4RTfi3UOuvNRsO3i0niJ2S4TCExTWIRPg+QsrVY68ygos4/slqGzamlgxSqnWJ7I+LN6RpRe7ZrUexluHJhw9xpcWIBGLCCCH+GMkWpaJmumdcQ7kuCvNxHxM29bhEjzzrLX7Sg/V5V6hwLj/H/c2Gbo0H7BIyhbDY3Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nXmuVBFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nXmuVBFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF230C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792128633;
	bh=SXWlcZYy5IrfAn1/FLm865zC1Sp6oH8ewHYebzuy+RY=;
	h=To:Subject:From:Date:From;
	b=nXmuVBFWUaZ7Nympojdyr1nu2L2WllThVDDPdBarXMf772HySWcKiK1k/Q0/UgWbs
	 HER1GEwRqlPb1pW/NWyU1hEFmWPVGKa+WY/1RwhY+2OS2KWy9vCx052dN0Y302q40g
	 L6PnXvxRVsOA9AJA79kuGcSjuN5Cpuxof0mBoAG30S2yVZF3hgZuPrwcgFFeySrwWZ
	 pKqTT3/wfB00eD6POt1SFk9U7vkUFdBqvqUU5HvYpAWovNsHq01WavyaooJBFfv5Yg
	 SW3PODwnmTpgF8EiFUe4YPJXbnF/MKrDOvS2HxhM4TcJ10KrJjszZ7jASURG1w6N6Z
	 Fxeiqm9LgkODQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD4BCC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212863369.16756.4152029132166603865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 059bf1728caed8c41584a112023a918728a12a2561b6f8d6fff4292bd7d9fa3d
Date: Fri, 16 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792128633
