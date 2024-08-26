Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3177B13FD66
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724711154; cv=none; b=ZM3ZclOf42RSfr8txYcRaO5v9BPLKkpJMVqNh4l0QZZxXa6wAZhzX3kIH56mtthtIwEZlI5G5WrB42ya5eCIEgxs7to19/jFodyNuNxx+DaXv5COZPF8qaxche+wEw/CWv3l+OGJ/JhcxPtQ7+LgNdHFDnvvNsEfOWGKZl5J3JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724711154; c=relaxed/simple;
	bh=KT6Mea4OCbklr/lFL0dvUX2mxZkAV4KsTbgTmfVhfDQ=;
	h=To:Subject:From:Message-Id:Date; b=dKccONvlpQYs+rHELO9Gk9BEen44mdkFNWHAbORx0mq+quMRc1two/qNNIpnTbbZmdkgEk6l7L2wruEJJY3H9W42zsahXa1JZMhQhWFOQWwu8/kBG76Cz3qkDekXDxEg/hfZTGOapsBUhJtsFLQg7hWA6rgRWm7yfsMzOGnFFeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BiT9BOu5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BiT9BOu5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3919C8B7A7
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724711153;
	bh=KT6Mea4OCbklr/lFL0dvUX2mxZkAV4KsTbgTmfVhfDQ=;
	h=To:Subject:From:Date:From;
	b=BiT9BOu5A9RevV0ugOpxGrJ5pSoaxNwzgHZ7PH3zLKtCscJVvUX2pEhTmiRCR8P6T
	 VhjKVatDA9clkaOnKje6xKUnGuSqdwdCvs4PHoUeg/R13XwNGgrFFLd+RUQJz9tbiL
	 Qx7vPFHlfUbNmkeEb3ZoqUnOIQQoQe47G3Xri5lktYJo5aU1xIrkqbHIsWp/aOcPul
	 KxV+i7oZBUp6ZieTcZ3a9/8nkvESy9NlC8WnorCuoBAPoKJP2Lzqzu3BDuAFrSuhPv
	 FntgZHXTvzDhcZMm0XbMwNESzKclKYt3RjngMnq/6mIyKVIJNHm8pTPT8BUg6X5p3M
	 Pli0N1JGc8atQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF8C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172471115358.11716.11827283144810265282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6831a37675ae81419dcda70ec057d41a55ee183f31f8e11cbf545d9f77cd9c72
Date: Mon, 26 Aug 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724711153
