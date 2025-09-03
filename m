Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259262FABF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756898994; cv=none; b=qH1oeS67xeDKnHLIT3NwBwiWfHCqinb73vh73JJD3luCB5gnopvHVK24g8+sCVfQKKhRh/XUOkFf6Jnll9szMTvTIyfct90CYv91HoxiqV82M3H+SCHMsTf5IF7eaTLaaDONQswvCd9D5Rb18OpyfTRf70tHi2rb/uGKsH4MOis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756898994; c=relaxed/simple;
	bh=s2TLnOFtv4TFGTIyGvlUW0QqLjWatrbLssGMZ8FdOX4=;
	h=To:Subject:From:Message-Id:Date; b=THDz7InSHLWPYtNdhGoH27Xbknrff5tnLVn+IeopCnFhVZWUKOz+AIIw/j7bComtalvUYfoWVqwidibxrMGbjv5fqLY2+zKK0CABPfhHm+pEtQRuTDFaSZIjfJJ+By/zAzvgNQdSfTnTvcA2apYOtoNOndQybIpS3n6knFMWEw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EjmKyuEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EjmKyuEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF9CC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756898993;
	bh=s2TLnOFtv4TFGTIyGvlUW0QqLjWatrbLssGMZ8FdOX4=;
	h=To:Subject:From:Date:From;
	b=EjmKyuEYSr+g43HeDvgKHgKCEQOp96f9EmV0gFMfiWr52LG0sRVsgiuAVtVJW9r8g
	 RPZPB6+ClTdlVnT8OeaaMjAxDJWVDESjlhjcUSVk6Ymr9ynvZ6BaMrtSDHBlQR6RdF
	 NzTqh3E0lalxeLWLA5Qt7242/8hI9B9yK3u0CCAlxdWKd0mHWMGeQX0K/p9kwR/oGu
	 epiWTyrmur+72ZoDm2nJdl4alySNIj8kxAgt+W/6wdsMX/HgVd6yW4xBkrW9wnXtWb
	 1x6dBF6qv1bnG7RCc9wjl276CVnHf6y54feuLBRBAr2UbnVHBNLgxS3hRTkOu33Mp0
	 /3UNXC6AELLbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94952CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175689899359.31407.6053385587708750165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 357c333904434417555af48180536471a666b2705e925fed597d71378f756a10
Date: Wed, 03 Sep 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756898993
