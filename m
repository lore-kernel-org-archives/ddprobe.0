Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DB7136E3F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770445434; cv=none; b=ojptK/fsJCMxFQRKYCJISq7SMvBslGbECxz5fpYXchu5owGfT819WKH5+HXZe42Em0OThJxB7+JEYn9Ft5v1y99Kjy/PyAlLluLkZz7vj0niW6p258FsbJPYMZbKbiP5Wa3Cc2gH8Ebae9DQ9jPq/8PCPOBYN7QE9XZo6Eq5D8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770445434; c=relaxed/simple;
	bh=BU9cuAPbpxx+trnKZZLtPgousy2OJOLFQonvMPalNSg=;
	h=To:Subject:From:Message-Id:Date; b=bZCCo0nqhsOaJHHQMX2yE4hQAiXEKoL/H17INBA2FSNjp8xaACQgin6TR7SGYxMOm5PFwArX0opoFtXSOA8z/NDmpFcMTLiA/Vqe2Pr69HQjAuS3Xwjcj47fff+u2kYx0nSbOoZ2yRexGxwKDHnpXT4KblRV1IUuzCCVZnFFZno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XofLWVyc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XofLWVyc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A889CC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770445433;
	bh=BU9cuAPbpxx+trnKZZLtPgousy2OJOLFQonvMPalNSg=;
	h=To:Subject:From:Date:From;
	b=XofLWVyc3ZbBbhytpTixuQ9gukbZGHfcuAIMqdi1hYGjZrt7r4falayfjMnNrwk5D
	 1o2++D7gL4hoqX6XtGbpk4VdN3G03bS0CIDU7geqLrKKj5FP/7l6v/7hu+97mPx+sb
	 NjW86z8j3r/qrCOGupPeyNklj6ORThWlmieTTEXAiV9x/pOGUzxiMgzKp9YC5Z+Gi1
	 Yv4KZEnN516ONrGtQ1f768Ukhdx/QFMIDV6qp6S3XSKYrHEJfYqSqhUlbJcELxZMUs
	 MyuWjzdpYbQjx/P1IvpAvon5mSRhZ3Ss1o8+/BBklDPaFTVBJKzUlWoJdCBm1G0UUJ
	 7t/ijy4EacHHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9673AEE6B76
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177044543358.12509.3796924536929317953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59708440ab42dc9477c7e782dcf0b5b39a9e859a72d23012a0bfb0e0e5f0e338
Date: Sat, 07 Feb 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770445433
