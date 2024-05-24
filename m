Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7BA85279
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716543803; cv=none; b=Nj+BWj10zRuKiXo9OCyHpxayIEuvZPAqIYL2Li+bubFQX1U8BrERhKQgrqOm+v/iI/y6T4i9Xwl2FWGmg1kG/yf55Y/hoX23cQFTN8vWP9aEGZHqnm5C5eXhNXJzLPEnUE3wi2pbZ78Y5VuWzYOmpkF9mandZ1iwrTWwLCzKxTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716543803; c=relaxed/simple;
	bh=SXNgqt/gVock6DrYShegqTgiJi41Sg0TQrxmAf7TihE=;
	h=To:Subject:From:Message-Id:Date; b=U56M76Wec1LVJkAtSiYxW/gY36uhjlteeuMziuY53n27m9OMTtizD8qkwRJzqc2uhtlzBu+V41uun2ZlTbRX0cAQywNkZSnjZ+EfnSOWLwfkv2l9+lM53Mbm/FNqwQ7GncJXkK6iNOguywwbwSGGmWqg5OfQY3yqb0qMmIlh+ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3N7Zdnm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3N7Zdnm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD166C3277B
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716543802;
	bh=SXNgqt/gVock6DrYShegqTgiJi41Sg0TQrxmAf7TihE=;
	h=To:Subject:From:Date:From;
	b=L3N7Zdnmrqh64VwGtgs+cBmWFc+3TAzp6y1KnWa0Ewx/FJbu3HTUZ2URxtv55lE5W
	 8WgzTRddnVrszqoilAML3xC65wh/sfpX3pOXdSwgBEZA2ie7E5YtcyD2XfFoPoQVtm
	 ng2Pyfk3zgET05HOuTpajA+EJKYX8JwzpwfmooD/3vUGIR5ItHJzjw9FlFp1D9GF+c
	 +Qa8OFRUyAuHxKHEXkzxBoh5daLBQjATa5Ab4A8HiLUnCVK/AGwrR6R2U7tEC0s6Z0
	 4siw/8XohTaqZWtSSY6xMacMpMVs0KxL518Vcm7M3uE3pPuTwFUB9fgb1Zywbo7u3/
	 c5dcihGJKcm2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCCCC25B79
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 09:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654380276.23231.6940213789060211341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6361368bc1914110b08f9af0b626b0c3385139c74d03a6e78c2dbb1826fac545
Date: Fri, 24 May 2024 09:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716543802
