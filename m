Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29965292936
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750435194; cv=none; b=DM8/3C9ZWsGB/n1qlt812NocwM7hF9vOv3e4zMNcwnYhaCYWbRMQmx/BHFmvIwn7n4ESJKHnylcQU3S7ziMW9zUkxI3hRFoRZy387l/8Wyg81Hld/1Ajh6kXVy83qXKegXksNnt3R5lN//Va3ipFsGM+hbR5QozsJ3XANNrRZts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750435194; c=relaxed/simple;
	bh=x8e7IugW+DDrBwkLHZ88xJB/URg3kE1XcTmNKsnwtZc=;
	h=To:Subject:From:Message-Id:Date; b=sw7Xx2MDyH2Ky8AgANBkJZSNT3niKbNzpnjqZ+dcHen/s2XiT2XsQ53V7RvjHswyEC+2HB2plNVZZHNereEEy8KKTN0FTxj23a+RqkSHocWHrLaFGnWUJqirWpyPywouxx4KDScRVKlP6WJqpOWGjp7Hgty+stA0yNfmUFc9YK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mzeZvY/I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mzeZvY/I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F64C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750435193;
	bh=x8e7IugW+DDrBwkLHZ88xJB/URg3kE1XcTmNKsnwtZc=;
	h=To:Subject:From:Date:From;
	b=mzeZvY/I1n2r//SvzCUmDnIDLCq/W1gWTsJHEsanNXH4YxtlggwTRNumKJpKwyePp
	 wtCWn3Zp+xKCSKFPjRx1cRWqygfRsxlxYjhRQAoae3wCTZxy74qKbu/Rhn79qaPuGN
	 W9CPjcGCcC0MlW09FtRNERZe2auSlW+wwfV/cBY7qJICKRzJfPH7FZewXAAWW5SEIm
	 jaiTPkv9V88k1baIfjeA74YKQUpV6E3OaMD/y/Exz0OgwI6Og0vZ39i1cFv+ujKdFy
	 WGDu/91iwnFqKaw7ndqp9NZ7V3u+N6LyqmwtFzqyYdaIjymKwzGMcQofgrRxTuxAFg
	 AT7rztx+EIkXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C13C7115C
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175043519358.15389.7390691863138340085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c3390b030a8d957c184b8f940cda990a8262e86806c8f646119bcd81b165795
Date: Fri, 20 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750435193
