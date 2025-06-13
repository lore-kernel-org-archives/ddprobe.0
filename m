Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF0E83B7A3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749818993; cv=none; b=uFWh+fBVSJKgt5QZXacy0RNIJP1s3rr9lhLjcYbx+mMbOCHA+ZEhgpK79YhCVKLhcbfEiI/yoxehTTS1+en+deB1i6ZvAiYVAtbQnIAznZJ3nnLQ6Y8trYad+JlsMMRM8xiQKX38etM/kU6+i1DEdkwvx16Nlr9KMtXyvDPNVh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749818993; c=relaxed/simple;
	bh=9Pxqy/TvJtzNlqL3/9IQ6DfMVt5kMo8+veCdW1icfwk=;
	h=To:Subject:From:Message-Id:Date; b=TaeWZtlUE6L4eQRhvNglfYNyl310Xql+BJyUlmSx1fpfJILHaT5o72374vbRAqdFWUNHMXa3dxO8CmmUf2CdunJcZIfCUAQkqqC0NHEG65ARSOVINWUzJgeAHWGKAYfieJgboxwAJGAqD/AWO/05GSyeySQWrCw6LyNCOkiZUIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqUzBrWx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqUzBrWx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B028EC4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749818993;
	bh=9Pxqy/TvJtzNlqL3/9IQ6DfMVt5kMo8+veCdW1icfwk=;
	h=To:Subject:From:Date:From;
	b=lqUzBrWxHfl1lgUhtNBzJowXnTL7QgTj+1jruvcFt03iCxH0K7okAgZLmtU8CX9hu
	 HKkHqaeC6XYjuDsTmfj++ATXjJZzAYdOUqBkO6sSQtI9/gqBMFWFnTRb02aRnakn5l
	 zS8KrCSRlK6lImIUk/+UOzCVWRZaKxLErn51rmsTXRw7+0BRNwczXdJR8MsP/mS0eq
	 +NEGyOkg5MvAvMfMztye449QYU/tgleXhVbYL4O/fH6tX5IOTcBjZvbXeYYR0/C8I1
	 /asQPkeP0Olq2XutNhxRn4+mghrSKUTMnFRBA25nnZu8P9DrQJW+d8ONq8D/LnO0+l
	 GaWNum6aWZ6KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F096C71135
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174981899362.1236.6545693115133222955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30394897150bf56bc6a224bb92e5e5d5973861aaf31f20bd0ccae496e05001e
Date: Fri, 13 Jun 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749818993
