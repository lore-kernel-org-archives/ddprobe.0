Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137B319DF53
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729696554; cv=none; b=oNzS0B6d7iaI+P3re0FD4LfcSahVmXNCWEqQcomsHj9aDiCZX2z+WGygkaKI+W2I4u9IQQ5R7wxXkRomUNFYo0b1GzY1V/4vIpBOgW42uXN+GVniuR7stlwZi6QFwm9lGRgVqIcvy8jBOMaMcxUKZuhNRyL+RHgN5qXcOGsjfoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729696554; c=relaxed/simple;
	bh=mFvAdahofuxKy4ga1TS3AgZHtHG8XrNwLk2QGytTjrE=;
	h=To:Subject:From:Message-Id:Date; b=aUrXAIcv2TsFloAYl44YM3RfrjCnBLNM8c+X0zwPbJlHNYW4ImJNSfrtnmnUHUlDPYrtlsb4CWycBmdh+34h3yLAOhmy37ye65AJ/7jmF+Ow3maC1QwtlmcVlf+FUy2EUxMMot+9VVDwJVNyAugliMv8802Gk7LBI0i4v+bfGjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ASSLsSwL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ASSLsSwL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDDAC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729696553;
	bh=mFvAdahofuxKy4ga1TS3AgZHtHG8XrNwLk2QGytTjrE=;
	h=To:Subject:From:Date:From;
	b=ASSLsSwLb6kOJd1GmL+9lEi2bmG7tlWaDY0UX8Ci1OU0lFa0Ra4y5hkWw87Gr3C5O
	 b7aQiA6u2B6QXM4RbzzJqun4Lzww/ekJuFKaAQueMUn4p+xaEGW1AejMvQJff/a4rz
	 vnQBVBZMq43u5n6WjYzn9qpl5js9HQ5ChvXOpZmBiCsN+icugUi8CZOgkNGMb1KsvZ
	 ZcMWh9vQ84Bye7HWMa2TWQS5AAyJF2xRt7r4lh340L6494ICsTJvsnS+5lZ7Y+4v4E
	 OMLe0K2zbRdNSFvl0QysbR0SFeG0B64Ug/mQhp1CTTM4SmZY4oFqXKsWvuf6Q791wc
	 lSB7eo3kVMAZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE0ACF539E
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172969655361.18399.5624690660582821427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf1e61b03ac04eff26b0ff894199a658057e67208ddfa15efaff49e9d11ab438
Date: Wed, 23 Oct 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729696553
