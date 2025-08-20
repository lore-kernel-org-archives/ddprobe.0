Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2133570823
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755654594; cv=none; b=fHIW+tYkmwU2WS0OII8mCgk7gbogvsTLP1h+JG5ufG+K06e3gEdHJjTKjLblVUtEBpumpUWFFGc0Rb/BGF79n7n7zDTVpJS/PW0XbbJQu5qC59cgV6STLom4Pra1FaTaXStB//mPv81Og389MNxE9xfUc4zwPv1h6H6b3e1yOno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755654594; c=relaxed/simple;
	bh=/NBsPLPd7mJsVuoQZbL9QUGNmseb8pBo7u9448ISfOU=;
	h=To:Subject:From:Message-Id:Date; b=lfimO0lY5bqfuWe8fp+NAQKHXlMrFhrast0qPkkej56VAAY76+fGj8+sC1VWaWsUa2wKiLn4H8ECCV+Aie80vrHGDgk6wfv7QNVDCP0eoOsxc1vA20LCcBuddMkAUvIETp6amI65ajcdCsG11vq7mlmHPf6D7bINCU4N0f2CZUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc9i1tRr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc9i1tRr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C13C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755654593;
	bh=/NBsPLPd7mJsVuoQZbL9QUGNmseb8pBo7u9448ISfOU=;
	h=To:Subject:From:Date:From;
	b=jc9i1tRrlUNdJd+hdzMmc9fvtNNoHFaJpi4AeHCDYSJJyYVV/0MUnLXw1KiElaRXJ
	 8yI0EKgGD2YK+g7F34eCsgWNgiby2/Ci4FI9OoQbcj+DvtQ/DmmswH0NrsBbb1C1KR
	 O3/Q642XrlHNQFdgwj2h1s+EwVfpmXiYp6Ij5U2YQcgm5ViI8j9bYEVDa+Yk2AIQ2M
	 I9NKKgmVk1QRBF1OS9D5ttpEdQtLYsfLjMxdMmjhza0hxY0sKh9v5NLHiDanyiYPle
	 Yt5ZCIQBvCaIsin5dtT3OUxl4OjWIid62xd8zLrfHtlmpNV+l4/b172Qz9zlDz8iZ2
	 M22aiLkKoUE2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F876CA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175565459357.28985.8296342865760093542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb0a4f97f4852c69b5a532a15c7a5f875f7199b03664cafc51b1d7ef3eba5ea9
Date: Wed, 20 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755654593
