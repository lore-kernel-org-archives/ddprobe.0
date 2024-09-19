Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217D219F49D
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726767354; cv=none; b=MdW9peBikekH7ftXfoum3IQ0Fs0H6kkmdunKzZkPdeNRF/A1uuEMqVs/vYCHM1tFskS55029aBNZYxesVSwNIcq4h2DN5q9BDwmTkEjaV+lKN2dIaUkAopQjRjSleFpaMp8jFutoqyuQm3YZZ+bcctlxmirN51asaovxjqsbI60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726767354; c=relaxed/simple;
	bh=UuSmuu4QI/vdfXlSUxLpA0YXymwoq3czNHdSWhVEogs=;
	h=To:Subject:From:Message-Id:Date; b=OOqXUZ+6iidObgX3ywjejrtr9GoNbLbONQeG1gS/8Olo0aXyzpXAyvH328CkCPg9lXYOlyXwVt+H1yHmVCOlw5ZGrwmnwHe4qF0uG4MD2fLMFLm3zDx7ZUgPzpK+Rd4XzR2wt7t1hajxUyiHWxVoRaaI5DTgWwrGSM1kwM551+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEj6m8aT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEj6m8aT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA306C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726767353;
	bh=UuSmuu4QI/vdfXlSUxLpA0YXymwoq3czNHdSWhVEogs=;
	h=To:Subject:From:Date:From;
	b=XEj6m8aTb3xFg3+87aFww0N61Gep5Vu+zQjhHUrsLU/8szgrcQeY5x9IwYw7muKOB
	 hw38cd/5Vz3oAWeCXQ/U7G+TxRkydBXonxyED6QY5IoqmjP9+8w90VnCxvrroC3sr1
	 PdfrzGLTYJW8xVIUaRfeClAM+1KlSNvxHgbBWdW5gXFBtQ0wcf1x5vgwI07YEFhAgm
	 kX931f8FDrEV4KWReo/HHhUQBm2vwHAXmB/d+D+dj2wtc2ec+muTmSLf8wP2tesO1t
	 6fwt1juBuyy4yGzRqSg0OQ/NpYYwTDjJZvfVWolSJsy1eUh/7goPekA+dAQKTA7Oo0
	 7gYPgH3Cn9oOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D75CF3962
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172676735360.10427.2350784135312068494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ebe5a95fc18e7c914c00ebad7c69a837aa7d2dc2f0e38b9b6c76d93587b7161
Date: Thu, 19 Sep 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726767353
