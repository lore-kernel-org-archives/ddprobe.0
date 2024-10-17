Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B9317335C
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729146354; cv=none; b=HeczlivsOGCCibn71UK/GPoHgJHMaTJPQRsjCNQGlLrmm4tjKFDPqJKlAfwO6Mhcxq5dB+JLngsyI6r15uC2Yu3A9hFby+mw8VR/DxTAJXwO28H8XrvXQLjE9mPzzDJ/g+DyROknnlSPqWQgNJhGnfYy/tGMXStniqUKHSlNp5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729146354; c=relaxed/simple;
	bh=JoXT9F+DHmp6XleiHzHYzv9Eqyi5EVQGRvmss58HuxA=;
	h=To:Subject:From:Message-Id:Date; b=N7fxz86M/W6jMphdL6rOD0X8/UIf6mddqZqm6tJRjz86EmESnaZEEdqmeLkykWB1MAOajYj+qiO3OFTiWg7ILQydUKIJAO4C9BkrXlulhspxd7nBStUZkk6NWSgtP7zDqKodNLCd7N9cfejtyb2LJKMDH0Qfe7khQCx93nYUMws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u/63nelb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u/63nelb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9961C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729146353;
	bh=JoXT9F+DHmp6XleiHzHYzv9Eqyi5EVQGRvmss58HuxA=;
	h=To:Subject:From:Date:From;
	b=u/63nelbjU0a7sSq1i6aZdBIdmW0HcowFB4R/VVoJ9N9qTv+OZhzPjwTG+7RjaclA
	 J+Y1bMjw47z18TWSNYsebsjvQUpGvtUar6nhjdMs35xyWL75ussOS0+4kxBNdSHvIW
	 rO1pxvDgx7PkKcXUV/qb5+zrJQ/GqR5+TufII0nOQCigL6N0qWbWlz46UkusNaZOOx
	 SIkoDTLDofmbbi521DAtsKGtFUQNGHmY92qIb+J+EF7Qp+tiwKfOvKaWgioU/jg1+C
	 qtEli4sh495TBexYwGx0YnvqyMrpZkZj3/sG2xKJhiIxr0ZnJfnT5vkIqlWAXKuQFP
	 qkCax09pZdviA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9932DD2F7EF
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172914635359.4881.2866362865616587210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbeae9b848e9a70d9b72df75d4f362e5ebc1311a2f325559820169ae4bd0db3f
Date: Thu, 17 Oct 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729146353
