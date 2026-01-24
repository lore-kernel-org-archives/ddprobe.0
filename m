Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D9B25B1CB
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769224435; cv=none; b=JF5gb5634UezmN2ipPGjzWabL+LhSNrtdvU7Wz/ScJm3osJLHDjnX4pEp6TXaQiGWQ1+TQL6pFEwZqhZflkVv+4rKgFVfox1dPhk0LOR+we+9SlJMI1VMrOuQx0yiTngEbtMcOV1m6o+bKCYx2atYJ/ZIVs7N6UttIdMP+DSN7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769224435; c=relaxed/simple;
	bh=4Kfl4/k+X7dxh6iimF7C6E31EJX45zHDUmjzo6eg7Vc=;
	h=To:Subject:From:Message-Id:Date; b=hU9Dk7AeTlhA9AJeaEX3KSqOFVoc1RKBmoLEjWqjXHtH5sbnV2uO6I/YrFSVrvBeP0t0se3EWcN9eg4qjcP2TCUoFEGFf/TOP8hQe4lU+r4Oj7RgvqxSDxbtfccADE5lJC2k672v38Qwx/Ve8Im/eBgq9Y8rShxXeDWzNL98yxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBtGBpGz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBtGBpGz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76EDC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769224433;
	bh=4Kfl4/k+X7dxh6iimF7C6E31EJX45zHDUmjzo6eg7Vc=;
	h=To:Subject:From:Date:From;
	b=CBtGBpGzHSmuyAnbdEB1wXWllYjL9ZL1k/UqQbl+FTzODLPTxRzQcp9GByB0XRGEw
	 48u6kl8AKjf+F7LoV/wMTglqNSgkhZfX67tAqg+Mx+ZIVB3SxqAKDneqObYFb5FLSj
	 MlbLkeHgGmE4ckQjTpbStYkfCxVkJ8s6MCzQnIcXCC+wngpILfABc1OvFXEVJj/WpQ
	 BJhHkp/e5ZAyMtUK8X9HmPpFlfb3XJzTg3SGlj6Es9hQuvvnsd/oCuDqOcC2TAP2l7
	 tt4s0WwXYdksoamTX/kAOyUZrqmAJY2seozROs3DoHuLg28uWppkh9zmYqZ5zlsWc1
	 PulFzgOdxLWhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A6FD6CFB9
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176922443357.9294.14853390672445138242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f0c0c2cd965b54b5652dd353bd994ead618a4a917cf9d0354c6d1c9fd3b5777
Date: Sat, 24 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769224433
