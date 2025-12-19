Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344432C0323
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766134434; cv=none; b=n1+VoZ/W9Bf4Z0hxlejvHwSbnCigagu7l5fboahjdubtTwAnWNZElT5bS/stZj5auWudnKfUUT8lH68lKRaTBE3hZz1iNoKzEmEZBBA5M+cj0erBh9tAalw1gEUeAkYj6h+tgnRPU1WUjD2J23qgHjstG+TNrbOJ32cmrvKRCh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766134434; c=relaxed/simple;
	bh=XzFaO7eSceVzmVBqz9bdxjmrehLywq+to+uY6cYuAag=;
	h=To:Subject:From:Message-Id:Date; b=uv7UwvAuhT8LqPlu23xqet31LoYNQJ9WgrSIE+ZDxE84O8Ypa1otN9cPZpvz5reaKfA2K1uZ+wKZrjmAKtzt08WQhUf9wBTwY93VVkkRkLubXrhZG5m2CtotqboXpUuu640sq0QRYDsHk4HHuyB9KDoN+EmbIxn8tsAi8KnHqIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bUHy3+Iq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bUHy3+Iq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ABEC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766134433;
	bh=XzFaO7eSceVzmVBqz9bdxjmrehLywq+to+uY6cYuAag=;
	h=To:Subject:From:Date:From;
	b=bUHy3+IqQmK/4vzLjS5O0/C6Za7W5QIqTb/3IvcAyhdQgFXOeJL+ytpuQlirTjMgS
	 h4HRAR3ifBUmJXfwbLfuHCIpTwh1LCd1GccpXmscGF+ggFBmpPCDWTzG1NYpXC1Xrp
	 hbK+RGAYnkUw4ozHcdGO4KMulngBpQOo32rPZqfXggqeFYo32rFZxFGsIqXz9pjJtx
	 wL3dqSSauA8WQc/05H4ztvXzKUNxydghKPR824ogRLwTIlKik88iweHgJXVP3UU3xF
	 BVWHuc9MqB/Mh1jNcypP21whwbpB6DUTd+lT8F/bVTPWnMhKPI3Lm0D6BovQe14B33
	 oLc32p4GGRj8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB9D711D6
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613443358.20231.15388402682272469268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84404555dbf53b6a6c51760b32a7eac2233f0a1e02c20dbf354a840230e0bdf2
Date: Fri, 19 Dec 2025 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766134433
