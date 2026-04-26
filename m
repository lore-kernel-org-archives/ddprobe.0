Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EFB8208D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777176454; cv=none; b=ZNAP1qL+3ROOFxkZr1RcUhdyvavv9VRXpmh4T8S5cxX6rKyGRlZW4GgRqXZaqwXUXtWlZozu20UQnLKbyWKwzZ/dCLT2AoWY+vwOCXW9aYitH3BpLzOk8dJFGiyWjmeCskEQPkKTSRAaRI+GB3FqBMnuh1wZoULfC29BKsVjtag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777176454; c=relaxed/simple;
	bh=cqDjNIgf1eEzRPt856mqYf1QWOMVTjsjWCKHjrL/7Ts=;
	h=To:Subject:From:Message-Id:Date; b=q+j/+uteEtSIZ3v/hOuLduLAOw4c9xwRhdCqGZSm4u+1ACKH3hukHr/F+lNVGetPxqt65BtV39ye0HeAOQtSgqm30LioAi4YR5OLubsECf/Aag6drQGGK0GSBW0OOevK6ifyIvywXqNrfHLYyNu9fGLx/Pwj2fPVMbhTA8iE5Ag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWQL30X9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWQL30X9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3618C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777176453;
	bh=cqDjNIgf1eEzRPt856mqYf1QWOMVTjsjWCKHjrL/7Ts=;
	h=To:Subject:From:Date:From;
	b=rWQL30X9qtIgp1blXdTNWvPmHJ7tbdjh5hdftE0JLABsdP+FQSfzRdycnSE37vFq4
	 uws52Nj2kJ1eqwMHCvw7NR1+XkspKIyJr4Buus8rPbcPpN0VH8ZUN1/0DJNbIoWgFz
	 Kn9zoUnenMI0q8r2ZFfCG1XLTQ2IBv4xskJ3UBkFUhF0BR6Er1vAVsyNYtLHjZ4Y7A
	 o7EcunPjYr4BKq1D6G8w+d/VRiVzmxJKQIC+b1tEpZ8AhngB+RFvtnH8MRQZ4jDKGJ
	 /yw/FhwugJvgxUy4zMyPd3axJUlKjpLDuM8FPrRe04ay9X62LRNaqQPlM5uLwIgEFs
	 aSNsCW5OnyGxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF05FF8850
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177717645368.19414.3023993327872795378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bcd6fa7ec034be675fe3feedab42dde752a053dc08f8c62b6d1c57796c08a7a
Date: Sun, 26 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777176453
