Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0231624DD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749200394; cv=none; b=d0batVWMfgNMlISfOyldaAXwIOdEHvcCdqtQz0LjWbhJ5ygC/2tx/2DBGtHtD+BBKOzZj1jSD24ugwZG5BVq2T0xzEoYUoG0pg7T4Z/za8BeR5Vl+yCKPuzivIKFI5GqpkGnTy5wsdjygij0xJP5K/re47D1vnIy34lb4+DCLYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749200394; c=relaxed/simple;
	bh=OamcPH4H6GhhIdmv3cD5w1RR2Wavcy//Nfv8NoZxglE=;
	h=To:Subject:From:Message-Id:Date; b=EDqVtJdmraTKOkRg+ujw4cxkeD44A9+rhgfB+5ZDTA29PAlo7+JZpEJxk3jSRikdSrR+MqLGuij/GeH6G3rsaXWjRtYMr74s7rqwG+MWoUB86pEZG4kq7nsUYK1CS+B0mIEZdJ3KHWUOm+xbS1Nj+h3zNrBbUnRpwbqcw33wOOg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y7OVCnWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y7OVCnWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A276CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749200393;
	bh=OamcPH4H6GhhIdmv3cD5w1RR2Wavcy//Nfv8NoZxglE=;
	h=To:Subject:From:Date:From;
	b=Y7OVCnWy177/gIDgSUj3rbMLy8wz/S48y2Bd+lvm+NcIET66ZL9ZfvhO5XFzCik1H
	 b+qkZ2D36oXDYbClt1Wn0bWFju/LRFK+k4bcRHfVrJpKF7t8UsNG42RPDFFXCD7ecn
	 A1lp35L5h+nVLUs/kK4JJs7e38nQb3PRQW5690nRapJitttV1/YL4ayhqewTJvnB/M
	 PMmPe9+bYycusXDBd2XCkgP38b+A573Mudx++aRyokkWSAONJcisB949hQrO+5JTlZ
	 f+wPKxx5L2B2YqtmN/FbbyXITfzKn3tgLSKZeRy5V3B1AD+fasJM5lkKpEhNkHyDSQ
	 NKS/RnKytV3Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E981C5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920039357.19165.9176892878761307589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb3701b75e8cfbd49edcd44a456f3acfe9160055d153e3de238d4b978f78e370
Date: Fri, 06 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749200393
