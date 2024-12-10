Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4030322F3BB
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 08:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733819154; cv=none; b=nCZlY1WDBgA/x9+5x7+A3v3SDoWJ92fikJT9bal9YFPqmfmn+HlWkslz4nRDf7rPKjAKO2/qVgCacd5Cwqo8JecUQ9W8XLSstXXrpZsHGsEQwWtFjoy7+xfjcea7sh3N4xgRPBKdJk4OPmKGeQYa0Ztfalsv+VTpjWt9xN4zBLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733819154; c=relaxed/simple;
	bh=kZIZ9kXg+RkiDjnvEKiImSy8nzwJjfvQ3p+haJs01A0=;
	h=To:Subject:From:Message-Id:Date; b=nHXydYjWTdneOiDk3NDJcUH8o3/knuFgMEk2kRa8K+jBcstI0/nScnqLiSFGyY1Mon1oDrYCGHUfd17zvxYH2QpWkgIdiSc3ffElPa3AJGhpbzBSd8FYthrQpkng/iRX16ku94uUBBpPKExPw5qW3zNXpj3fdCE7Y47V4p/bpDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iCxNS8Pl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iCxNS8Pl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD04AC4CED6
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 08:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733819153;
	bh=kZIZ9kXg+RkiDjnvEKiImSy8nzwJjfvQ3p+haJs01A0=;
	h=To:Subject:From:Date:From;
	b=iCxNS8PlHjfEo4XwinS7be+8c74fZm2nBzP8+n0YlSvkwsnnOgqynnHhRQv7e6fiz
	 StrU2M87x7RECUSdy5NEPaeC2c4iZnB9LdK9GU8+78GNcToYGupm2xDK1LcklnTkZU
	 I6j5EvlGdbv0wNo18p4/NI17s/HvrvdO/tvMZI8GGrskpHNes9CNtukFh8RsQlqdKr
	 ohipc0iqX3W+zKPCQVGFn5z+WUIu3ZMVsdaakhq4Q51Tfrt5W0l0oB/8muIzO9LwS9
	 jOjOynCfiWGcMrmbHsK0msjr4VTN1Aq/E8iAuOU0myhWR+FJ6I56khYxQVmYC8wwLE
	 XCLTGX/Qk7o7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AADE7717F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 08:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173381915358.3721.11678044993491344600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7981ce1d0c5d18d701a962caef9d34d93b382d54c02643b97501f2d302946ca1
Date: Tue, 10 Dec 2024 08:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733819153
