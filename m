Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352464B1E5C
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747602595; cv=none; b=m02Y5ijPtikncm4lqCS0rMd7JKBcqdX77ZHV19U+RZNjW/kEFLanEM8fZpSDJuMbL36dEUuBrOI8x6mkYMqBu76+Uj4biwiXSsI7xw7rmkC+F1D22h/CvkQteoZXgYBMHXoMOHKJxKlEDwBAMZlHDDzQVI/tGwwdjOsjKOhOgVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747602595; c=relaxed/simple;
	bh=LBNlacqe8/eUY4T/dVOP/0H24cJZHjdxkIetvITH3e8=;
	h=To:Subject:From:Message-Id:Date; b=MpgarDXPrwjeE8ll5VZmKI5YMiLHJxp6U9heaX1d0+atzBlH2ayrFrkKsNlUGo5iK6pWD2Zo4vju7Cvxuqf8Xg1t9NqhVt/WHkfA3QPzBZj6sdrOHKyUQNcWp0nFguK2FeDJLAqSKAmBEqSzC7QDhJhsWy63Is7ajec9njiIMoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAcBvHMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAcBvHMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7293C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747602593;
	bh=LBNlacqe8/eUY4T/dVOP/0H24cJZHjdxkIetvITH3e8=;
	h=To:Subject:From:Date:From;
	b=aAcBvHMjXBzhC8zy9WQWQZNgrE6sF/yhlQjjP4g2YXip0UA97nFIq4a786UgBG4/t
	 /ladLV+ku+TwiSB41Hdt0sUWEekm8RZjhcWLp2dhqbZ7/1+TyTNJqCFnSjNJLm3EmN
	 nFEUiu9vZCCWhCHLEHQSvnlI4HaN6ycikHtpO9oTBFx26Y8LYiCuC/G2qK91KUnV+4
	 +bxCLF5akgtHA0/16lc5B88wzNl6hRWT5ctI39UlkIUvG8uBRJNSjcvxeMEBdaZx07
	 I3BarVjvsr+nBJcCzjKJrcnGN0hMTn68nvM6FYMfWg9IICpbiNlpLlKDe4KHQu87rC
	 ltFumCdH+Mj+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BE8C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174760259357.30453.9538431682172667433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44123884ac761b7b7494119c11db168cca4915b50da7b67e03c8a9999e3cbfa4
Date: Sun, 18 May 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747602593
