Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1115C199BC
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753854594; cv=none; b=tEpQ8sadveI9Y+CsjoDenVjiSFTjx7ZuY6SYBCmqR5wXwFopzyBmojE+c6iZ2Xe55sEZ9k8/yuFEn6Txk/6DhapwHPdyk3mZuhC03D6sWiWXskIpgYrS07MnO36jlX924Q+wl9TMLOXPdhgCIgTI1RCyYKyzWw9EVjc5sqVAw/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753854594; c=relaxed/simple;
	bh=wpdf3BxhU6+wlk3SE9/VsgMmw8NX2abnSoWle/sCJUM=;
	h=To:Subject:From:Message-Id:Date; b=DYDXJ5EK5fvz7gU1x+vFrpSmu4H0ey9KAYJNXej6eXIYeRe+mM+xly+aYXYLjak45JGShkT41MTXndG7qNG7SRRikwOjCohHxmSrgxDx12Vbd31ngEpc+iuyUN+6gpdeS5t8+23tRgYN23bqRzs0oakHr0yNv4pc+xjeCben+kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cH2aBAVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cH2aBAVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B5AC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753854593;
	bh=wpdf3BxhU6+wlk3SE9/VsgMmw8NX2abnSoWle/sCJUM=;
	h=To:Subject:From:Date:From;
	b=cH2aBAVz//FOEv8UZ6zSjlQp5c4LfmCr6fBbZ82bZVstzb0o0tbqyt1M6mJNXAk56
	 k9T4cKkWYiQumwFR+n/ZrHMXO3w0XgoL3GU8/kjTA4AMkg5Bk6wGjXFwcZo5ilodSS
	 ZJT/T/8LDV/q4EQY2nOQQoclDw4lmAiHHmIxtUbFMDt2440GIzgi3GN99EXRHyy1ol
	 eEr7Ae/GrgH3z1gp6V0yl+XV7j/2GpOxm7MWF+QfRtRw3eIvsE1kkjTZg0YtIK3z9Z
	 ZmvHf7/p4jyrhEdj/4BHaZV9/8AcEggVRcUxRmnXLgCaZyYQiUijfXm2F4KgXFZFZi
	 oi/TQeypT+Zdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C6C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385459357.15296.12708459488538977327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd2ed390d3e211091fe0129230bff743f72fec7ffc579c5b4efd2e041a16aedc
Date: Wed, 30 Jul 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753854593
