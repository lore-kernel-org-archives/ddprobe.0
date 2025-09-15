Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3698F279324
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757927394; cv=none; b=YgxU+u0XAnC1n1FAWYk/MUZJSxaNYDGqYlXTUguoYynGfLMr2CUy/aWu51c9CE5xgkQDrRPpaOzfkfCE5yPlVCuBw7SUhdUWdm6WKEaHIXFA53+vU+KxTxAdRe3V5qGfvYtTeiKj2TYYE8IAHm+AYL/TOPhIpRe9wFTMxwkua8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757927394; c=relaxed/simple;
	bh=NzG5IAA2jFXwlmwh8DamRfN1/KPlhmNKL1rHI7bfMos=;
	h=To:Subject:From:Message-Id:Date; b=tcV696IHMu9eRBGFo/hPq4bNnx7sd7j81150YDgzxqSDBJ8XAdvwKpnXwbXvIU/gdAZnjZ1uj1z/8fdY/m1Yx923cuwyEapA5uKiYYipHbVI0lKGyNbJmk00F95PV4es2aIKbdwQ6V34oajlAMnRUYn+oBwW2ZXVvEn2VW/J28g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gqzxeoIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gqzxeoIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3924C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757927393;
	bh=NzG5IAA2jFXwlmwh8DamRfN1/KPlhmNKL1rHI7bfMos=;
	h=To:Subject:From:Date:From;
	b=gqzxeoIyyySAhTpzN1rAXip+VnS06axF6XzzOLlcV0rzLryAiLxIVWkiEegErvwuu
	 fVAaimSJUnY/itqCFKD25oQw/LakJxbqqgdWez4CRJh6zthBWKJE2D/3ZAiHCDEvIW
	 mE5IOaHzcp/ATzhH3HtUp+rB+HWbXAR/VZfDB5TlguDKzFatZ7IxMs76HAWhZgaXW+
	 WIjLVc5GmPyUycz58Ei2lvqduGtiZA/ZURoL55+mGzLX+1WuBL54uyV6kdqkctukeT
	 l7sZv1DwiRGMMfXal8wzRZJSciFO9xtWZh4e8LdpdBKJJrsDHnbtG/nw7yXEKChmtQ
	 FZ2YXUk4QiSgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9202DCAC597
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175792739357.644.1036662720912105372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b66a2cedc355a9acc181e38b1fd3847bedb9c1ec5c29053147ee302f0a183119
Date: Mon, 15 Sep 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757927393
