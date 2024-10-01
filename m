Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A0675589B
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727772354; cv=none; b=hPmWI+Ww8Qzs2S6zREn0mjyqPxohUwZs5bEwqVwxn15d34F9JDV93VHeJZCpqYDWng8EhToZwWYpm9jfcOcEdOdG7+LtF3YOFdrxabHR5W15gMmWEvDN2m6mxRATxOZ8aqZJYYHxJkwk0k8ZME7QnYoaLFS7rlkI9LMGmTj+oC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727772354; c=relaxed/simple;
	bh=eGgAqeeZIT2DynuqKNK70/1db9t0+D75pavVyiOQHgQ=;
	h=To:Subject:From:Message-Id:Date; b=XvmT1T3Abh5pXlvJXbT+8ZTMuf6g+gu/kJLpZyAvwPPOnzsv+NIeMc6e887Clmwjj/fBDGh2RED3ML5YPk19iT9hXI0j7Hyt3XzjJ1NDx+jz+S37mtjb2C7wn2xxQYzKHGc+7r9Hx87WZaHM2jidLytThVaT9kDKdyf5kwhWfyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UmJ58H/U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UmJ58H/U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADBD9C4CECE
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727772353;
	bh=eGgAqeeZIT2DynuqKNK70/1db9t0+D75pavVyiOQHgQ=;
	h=To:Subject:From:Date:From;
	b=UmJ58H/UK0ZtAVk4/8yFxvm4IC3jbaViMKz6uIOJo5diuk7PnDF9DSczvo1jdyhhN
	 /KzBEAqDkbyd5x/OM4ejAJeEkWm/IwwbfcVwGC4AIPW4agJr3NCem9XGkJYeJHeO9y
	 yjfzGCAmUiKQ8ss62DKWE+bKkHqIEYbUR4uDfMqhqHys1MygpYq6TEziHt8s8SL78K
	 70JY896x+gbPXlUDuZ/V+q/UyHyPCH/e90vcOI41GRlcJdoq1lZrOGoef6sXVYzCvx
	 RPEFmfptONPS88WRwSz/11Ymem/qu2gLe247PNPdcCUfE1GeUSEPE15mHWfk018h5V
	 PKuyagmdwC3FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A43BCE7CF7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172777235362.25579.5714681230284909665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: def465489b9746e07fca2a132ce6fcf6689a3d29c3db96d3396f2ecfed535b28
Date: Tue, 01 Oct 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727772353
