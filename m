Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C00A363CB
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748525993; cv=none; b=R354ZDrK7+8KDAmiwopuQjBto3Psgxsu5q5HSRbnAJFehbo37fd2Ye4C9zfDRwx8RyH7rzIsNtvwp09X7r7FBwD7qBoD2/lzJaWunjHW6gbKNoGzG8RGUtpQMdRA58MnjFZtnMDA/OQw/waj3o05F3LN+2NUkJPPPeO3UTIwFes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748525993; c=relaxed/simple;
	bh=2bxgZt+jPsLeDbEY8yBpGG15vyKl6HgaJiL9uaomv1o=;
	h=To:Subject:From:Message-Id:Date; b=fqtOvpkEOgoICE/Y4maau8EsAeVvO0iCp73JiiHn3c60GB9ksY6EN9dy7YZDbps43QOH3/64dftXJb48NTrCc4CU1iYHQb+8mrqNGyyseL5gXusDNxzImhnce7AS9BwkKe6o9vmlCrDVpZjNsOxhtvHk1hWirMRNj7BY7QPIpYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGCh7YvK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGCh7YvK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2848C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748525993;
	bh=2bxgZt+jPsLeDbEY8yBpGG15vyKl6HgaJiL9uaomv1o=;
	h=To:Subject:From:Date:From;
	b=NGCh7YvKx/Tbf6CMLk9CJn/Uo3C07R9MikAALLiawxUN7j9CkAVzbKS2S0pM+A35O
	 I0gm3UfGnQzyxoL5BoBepX1+9SA1nRMpLlG9Sz438iGcxuJZj2kvqHbfz+vbiLsdMw
	 NPPq3GZ7GXaEpTuHJZGGR7hZglB+wkBOt+s1nJe9gMSwD5GlfbX1rdL9a+DBaZvtiz
	 m5Sq2OiQ5LGIishst9VJSlRv0oAuNo21VoudgR3DYmmG4C01jBMruluqpDyhvDvBUx
	 43TmmTLAoANi6K78UGeWCw0TgD2x+xovUH66jckv7g0Q7NZ5qdHdsxS1Ov3jirX1+0
	 yzyZ5aM+PvkDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A5FC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852599359.22082.860063386183859850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4135611fca7db2fc225fe1fab9083142609e531b5f57b4482d9022a19ef012a4
Date: Thu, 29 May 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748525993
