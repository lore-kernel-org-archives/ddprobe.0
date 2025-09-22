Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E2A627C145
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758529194; cv=none; b=rW4+hLNvv+6tyOm0i7xNdNSCZu8JsbmLO3HvFFFsWpZgHLon6afJlVHs9gRSELUVAzyDmqmKWDRpu2LqlzZ/7g6TmTuEdMXCpDxH+PHhyVTA27+ncdOoYxFR+jTczaYu1pwrdGspJj0IEpLZddgleKO8To9REwl198P+os8I5Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758529194; c=relaxed/simple;
	bh=Y4bLHLc+9yR46g+CGTrqcMgbbu/dB5xpUc2S7KoofNA=;
	h=To:Subject:From:Message-Id:Date; b=fVppKP0bzPytSYQuf14eL+ex15MwxOL0NkstXEnNKcIDBV77y9pkScykr6A66OlABfIsto/Ikfb8BJQXbnm7ULiB9oMRwdY9X9NBwlnvuUBIcmu+RhsCE5oA+PXAaow/4kZjZ7aupaU9+BISW2b0ErSCqcbYdBBVymLj9XL2rmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dro5EAh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dro5EAh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D77C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758529193;
	bh=Y4bLHLc+9yR46g+CGTrqcMgbbu/dB5xpUc2S7KoofNA=;
	h=To:Subject:From:Date:From;
	b=Dro5EAh58gu/x/v3tO3NcYZAdEajWtzzVdNTTHgW7ajB7xcNgk0y0lku7zt3n8a6m
	 mMdkUeGr/cMlSFPqsRYKABf6mt2qUxnf8YOaZtRr/0ncrZowyj+KIOXEz9QM6nLgH9
	 w8/ZRIPTL/bYeScHuqiJZ9pzQ9W81Nqt8vtEfHUn80occgTck8FW/auEp2bazel07l
	 ommyxFrEcm0JdZVx+Jsdty2HKrRtJXMA83bU3Pw+3imZRTUyofmkq7I87BtALoaLrO
	 Z8Q1J2wc8DGFbRF/KEABWRERXehXSmHUEeTXM7CXYpcquJk+9cOnhmcpOy/zB9AGry
	 U1i+iV192J8Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D34CAC5A7
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852919358.24131.16338656768784024737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b99b35703a830f55b085d94a54637a3b8d8bc5a7d55768edeaaac0fafdcc2efc
Date: Mon, 22 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758529193
