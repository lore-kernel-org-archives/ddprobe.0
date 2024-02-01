Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C433B786
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706760497; cv=none; b=uTdCgk6hR980wglqIKj0lOc1ikySYShOueisx0P3Rl9vFAEGCOAcHZuIT5e+GSxW997+S2S9AuobQiRluVRscqLcH/t+yvOp0V/MBjadoqkNRQdIWryU3jtpvMuBhmbwwWT71IMFz+8L/Y9bGrVQn0keJoqWjvo2N3GDyBP/rpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706760497; c=relaxed/simple;
	bh=cA9hV4GSUMVw6TiPi7TdqPKmU77MEkZCGXnH+ba9qfw=;
	h=To:Subject:From:Message-Id:Date; b=AKj8h1p/8Wg1XE1iAxLof0BKMXVUajCkt+I8cyCKyzp6ZQIkf5ZXafDvOvIGr0Gfrt43gjdZqEjAU0piAC3LC/0N6fUiVTV1wewJbL9IpHKkU9F41i71REYfs+K0Ws8brAhKoQyGaPc8WT91yJ6MsNm1qq7L1lGObCFsnp+SL/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPp/GalY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPp/GalY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7ACB4C433F1
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706760496;
	bh=cA9hV4GSUMVw6TiPi7TdqPKmU77MEkZCGXnH+ba9qfw=;
	h=To:Subject:From:Date:From;
	b=jPp/GalYaiR0AU+QccCBD2CK676zzHG9e0k7vlEkgVbu9xkB60C2H3WxSa/gPO39B
	 rIIwsNbNutu1sWCfT0SMSB4bOTNfTvc069rZA/s6tYjN0pVwiZuMyVOlsZvsdX1+zv
	 mmMBJPwSNpKMiBqOw5CUsJSNQhgzKMqzMkAspm/QLJu6PZjScLVwiUhmlQb91pGPAC
	 RUW9nqdGmiisAG6kBNfjqu1gCQVJfNzkpq49neYwZGTKXA3z2jUf1bMe3leMMZl6Lk
	 g/c85If+ouDZi9T0ZHAXgVJM3QZsHi9tV0mhYiNUpyD42fr3KJZebxAyACCeb2NDSd
	 2/sgZRL7k+pHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EB05C47DDB
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170676049636.20565.16829597095621886755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d149776bf9378eff37d9f69f7265cb7e9d318a796ee64062aa5a03f8c1d4df88
Date: Thu, 01 Feb 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706760496
