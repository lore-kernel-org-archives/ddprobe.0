Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9162AF1D
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764036174; cv=none; b=iye3ntAHytyeuLemnCmosNhcMvIQlyx5jkvXzlP1CG7IWWGmNhxQI34nrAV07di+mT4f3AyoVyuEJ0bCs6LNmepGZTviULx4WMJ8E6n3IhzuGAC0v6tSujbqEXvTri5UNoVbUMXU5AICllqdB+Id8FHhmqD3wUopTuItvZ2VKWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764036174; c=relaxed/simple;
	bh=KrgxHww76wmjZQfmcMStmWBIf9gBdZ/8BzMiE0jiXSE=;
	h=To:Subject:From:Message-Id:Date; b=Q2i+xfCRadr4724N7qh/fvxgRbGI8N5PcNzD0cN/if8TrQD8f3Up/eqj1Jiig2HEHIpzuMAgNrQKjmrKFf2lwVRz/AvKrKG4SKUYuWjWa3wONCvOMdJ0hfAyWomQ/ejGyRgtP5rfjecPhqWx1S2NvKJQGx4KNFtVQXoSvI3v/gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K0sTCLCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K0sTCLCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAE2C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764036173;
	bh=KrgxHww76wmjZQfmcMStmWBIf9gBdZ/8BzMiE0jiXSE=;
	h=To:Subject:From:Date:From;
	b=K0sTCLCMBxHbV412PXbSDoxM9mN9Vkds+tGsf8Y1IvgCK292YSH+PKmKxmV0bzgWH
	 YS1WC0vRI/ywEEue9asnqkXDuigxUfxPKtusNbblqIbfk035Xt3AwUMlmsV1L8k8cd
	 FxR+ZqjIqsWdB/UKmr32ublZp5FaTjMTeHXZnfj0k/9yW6EkDDXuUgLO5TL+x1VQDr
	 N+XTBki6Km2awDEagNlk9UOH9kWQOHtdZrW7y9Sq+Q+flGgXXgoVEkRXevwc5wt059
	 yKtQHfHXJA/xum1fJwrOL5QhN3PEzDmcufXvIr0uDZwoa0Pv20puzF0ZZNmQIg5EVi
	 1sNA3YyD3omDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93639CFD372
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 02:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176403617359.20199.1501715392411267320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 576a66a8aeccbad99f33e588950310a9f19e5ad14cfccaa0abc2cd51a8c56b91
Date: Tue, 25 Nov 2025 02:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764036173
