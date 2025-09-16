Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19071E571
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757992794; cv=none; b=lo7SSheL4qMprVODo1MkjfJXOQGdvJZMSr1elf0uxd33fXLTEqS0WjDE3XhjnUjxZ88xo4ifkK8Z+ppN9E9ZgUFt6oGqWeG4xAIcttKLXb3GYPywadAyNyDMNY88jLHx2r4X7uLmPVl7qDJSFzsO7YucX2rVCz09S6K+Dhu+Rd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757992794; c=relaxed/simple;
	bh=fgPJskLA7C280ctzuQPUsr+UtsiWzS4j2V/ckVN7qqY=;
	h=To:Subject:From:Message-Id:Date; b=nXKvk09HZWTIXu7RtsbVZW7MlQUhwdKzPoz1+jkzxreinYKjg6heBfQEdweLTXuuKyD+F2UIA+Pi6Dk1bBScPjobiF9y7yIN4OtsPv/UYggIvMTuSCVCTXyJLxbpZ7o3gwwShUIgbgJTfFmj4MslGU0lST9v1NmvUJ0QOuwvKsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pFNE1XaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pFNE1XaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FDBC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757992793;
	bh=fgPJskLA7C280ctzuQPUsr+UtsiWzS4j2V/ckVN7qqY=;
	h=To:Subject:From:Date:From;
	b=pFNE1XaEM+eLmrBucg/21SgswXYonYgXerH0/lADeqwcFXwcPPVPpEzOaOF4HROPu
	 X+2FBrB+1Y2kvdQHsgiYM9Adfrbe+cpNHpo2br1ja3DqyeIOM8mU5GtS3QSl9SfAvz
	 D9xYRgrOYzWx9pwFT5cTBDkCMwtq/aKEMOxi61uPqexg/a2Ovai0qBIcBH3ZIHGdV6
	 cVPEEwAvU4L1dAqEkmcbwQIkrcLfBcz9nYuzt+7b7chqJtyDhpiJJjR6c5OXIw4RVX
	 +SkFURUe3ixWelt3M96TnjcJ5+CFIGOj4Q6O6P7zDMgYdDNLWQtzhvDkUd9bUGTMU0
	 SAhHtkf73NJiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A75CAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799279357.1318.7653073401546527850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec22ddaf87301228f7dd2acc2b4c3647c020d714f20838a1d8a3431fdba72c78
Date: Tue, 16 Sep 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757992793
