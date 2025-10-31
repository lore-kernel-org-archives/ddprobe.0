Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37701221271
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761877194; cv=none; b=ZyDgAgnVngsPKZUcYBw6HH4/pn0N225c82tglAYd5BeBunxIZ3NRj8vb6VTNIpFTKFkRCqqDz+Q6nNZAzLtS9G5lxDgrS+e4D/bD8Ptp5wkMQcOqyLz8jSv3qk9Y+Re+yxwjn0TMporHHfU689JjN+vy+c0HsNBLZhUJbgaRT9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761877194; c=relaxed/simple;
	bh=Q1PhkhN4lejqwUsnHR4rlyChMNC+DvyUTDSl4a4urQE=;
	h=To:Subject:From:Message-Id:Date; b=S10UBK4tm3cPR20Wgd4gQ2Fmhn8DisyjTpzfDXwcnciCvQFduo/voVBizgcT9FEqzoFo5rfq1wCcwUiDSp+apsO0/IKUkeMeliljSRs+HfppXHCSTJxf0rcJCejagX0hnEFL9Cr013l4BqQqGguB1VGckORKnyM3QjxadzTxRGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aa/3yS9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aa/3yS9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE90C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761877193;
	bh=Q1PhkhN4lejqwUsnHR4rlyChMNC+DvyUTDSl4a4urQE=;
	h=To:Subject:From:Date:From;
	b=aa/3yS9M4AJGC21rHr9WDAHmi/Yem4SSnYcX4+s3z4Ml1m6iEHsDL5jZM6Jl0SGzF
	 If8bZT0MljdnW9ml1M5kW1ChwEK90zvi5lottHXsCujAGDgAgoaoJOaR/OLybcFm20
	 ZVCmk3SsScxxqtDMQNllt3gaeDImlIdZgZTHJU/Zkqm/aHI9k03cL7EfYPi34lWJzw
	 aAFeLEFrbChACPTjB19r8e9vXcpGBtEY9wa3iMoHMdz1bqVwmWFDlFIeZp5hBB37kc
	 O1IxjCcpJeACNTWR+1gB2BAGvsBYedgnqkMjH5UPrP74NwP5CRE+fgpv0XfPPytaRp
	 ddsoM5fx5dyHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9AACCF9F0
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176187719361.28770.10245167566993019833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfda002ebcfc9c2f6e01b15fee5025f74d97fd3c8312e12002aaa61808610708
Date: Fri, 31 Oct 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761877193
