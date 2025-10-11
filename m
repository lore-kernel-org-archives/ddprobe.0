Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C40C8F0
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760164194; cv=none; b=A9R23aOrKu8pXr7OdWyEqdGBeNEAJCXAgfG1RnaB++rOpKxifjR34pg49lw7tm9tpMplTJgFYRIJVDR7saQoEbmugL6VaVFrlwG7bc9vgD/Kz338nt6SWBNfe93uGCI/U7Sm9Phd+KXzMmzvlllumv8a/bhHl1N1pFHzIY85Iow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760164194; c=relaxed/simple;
	bh=P0X3OD14jcHpe51iBEcxfXHsNs+V4O639eVC1IPaYn0=;
	h=To:Subject:From:Message-Id:Date; b=DVP3TvthyHctjgvz2sJRk37BSGm0FtuMpJrU3tBZKib8qxLiM++csq3wZDGk3czGmjyuYEvBOKvo18VBgvKdP5iTTBeYLyDef6FtgV4b9XpeulqMu9qedekVgX6t1O+qMg9MkiB3TGnlMz+FStfKxTzFh/PRpuxjPTzdJLQLR5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C417vgbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C417vgbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22CBC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760164193;
	bh=P0X3OD14jcHpe51iBEcxfXHsNs+V4O639eVC1IPaYn0=;
	h=To:Subject:From:Date:From;
	b=C417vgbMbcDLyshAgodf72eVbh86ob96TqAfq3Kx7TDexgsX4fpnCdkRbS5YsxLap
	 O87r7pfCimOcxRrFmPwJRcWMDcNHb6r2NTfoMx/lppv6j0O9GfN/yW1QkT1h58etaI
	 c2d9eMJ0/uGCWQxA45J0CqUFGc1K7ngVDBi9qiLtlCkWQkC7wZ9W9a7FEmjUmv6EI4
	 7ZTz7RVYabUjOIUxcvl38vq5UOE3BqN9HMRQSsVCzx0XMU8yQiUm3TGVFbtObhc+x2
	 kcYwYJsxCmNvn3cAyWOdP0yp1Q7LXRjFMtLjpc1u3+SyKF+fxF8uO5ENhF4b24Uw4V
	 9WOI5n4SYljsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F794CCD184
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176016419357.6847.6003608038960897650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e5ddd13ac358274daae87b088587e3688ab01136912ab584e08c4f99ffb0a7a
Date: Sat, 11 Oct 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760164193
