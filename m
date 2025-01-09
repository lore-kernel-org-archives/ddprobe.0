Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1915720551B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736425554; cv=none; b=djQcDXlIE2/VQ6QH4V7M7Eq4p7nnA710uVdXkfNM4Iu3cbSdJ+KJ/8xp7NsSLdbD+6xXMqHGIUB/3+8mFVq67WTyFKgP4GfJ9tjtulDbI63xJbEOWHv59cBN+ILFZFZ34ixPNqnQKfR93cO5gDRpKC3wvz3syB1igmeejyBwy2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736425554; c=relaxed/simple;
	bh=+nccMl/ENEGhRMT6593XExg2I9VhUISjOj0P+SOKIgA=;
	h=To:Subject:From:Message-Id:Date; b=S+KJELjBrsUMUr2J8Cijrr+VHsFkukDVcfLIjgDcz0AApXT1VNcgIXtfhpglwWqo5ZS0pnkSIralYInmi7396EmxuLfcpl14nQcmw3reEyQbhMtuq0w2rHTQO+YBTR+0jWih4C/+RMWWHlyjMh8yZl3yR2bBREeInd7JOVQUOKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XqjPr2TQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XqjPr2TQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EA3C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736425553;
	bh=+nccMl/ENEGhRMT6593XExg2I9VhUISjOj0P+SOKIgA=;
	h=To:Subject:From:Date:From;
	b=XqjPr2TQJ8KxlhzSp6E1hY8V5Xo5scS2i8FZ97K6Leu/MIHhVVxDTpKgiadyhd8N7
	 WbOwxsR7SJHLz8MiOkq8pRtI2/o3bTasQRBVLx1v7Za021hHHcBEQHgY8+qJuj+nZF
	 rmgcbJYJfvBNWFLLxcnlK5ejCmlqBYbVZLAt+J/FW7CjMY5l+oSE9ZCxVptP0mwDg3
	 1jpW0KFaphTrC6s2e5DVlYkjhdyOuDTb+iCMSMOOc5X7Id9pzHDJC7wm820RjFV5RC
	 fwtJuNOXDLaYzTHUv/jgDpViesGAvMDQ5pR2H+nUEcfi/3o0qeEYZBeEKx4g8Lvysl
	 mw2rL5g5yYEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A1AE77199
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173642555360.30253.6716466123453438101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d053622a7a7cea93b5f314d2cf90a11d7d64414799e0e5569b5f1eb174b5d2e
Date: Thu, 09 Jan 2025 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736425553
