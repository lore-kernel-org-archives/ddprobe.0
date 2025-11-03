Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1294B28FA9A
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762214394; cv=none; b=ojxizR3/wPVWOCvbUkgaya3gFxTYkd9+oNcmnWbAfrGvolbko7O4OLhkF4z9S9RwUIs4OL8eOIsxNYJmXetrht2f05QEXmIyn4wY4Wo3gwWF2YDZ2pW4S4Nmh89q+Zar8edrNjkJ2GM0iC5CrC5TL0poQvC4d/Bfp6Nu7SjECLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762214394; c=relaxed/simple;
	bh=9fUdHLhsD+WTgAUcEYqmmYUcw2i+jQbd/MROsuAMuO8=;
	h=To:Subject:From:Message-Id:Date; b=XWtzA/VLFKrO/RdAASHBrY3LB65SfnZbnHE/jxD7oBTcGstX2bvFL/O8Y8BEkp4KX9utkEIdWPJczoC92JnoQGV0r6+Wlj6qNwHkLvtGv37gUrbcbDf3ViagZx7NjkkS8PkqtLaWy66vTeFFHV67ZpDuTxMvarEDIHF+owIxM2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UE3NRbcu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UE3NRbcu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D77C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762214393;
	bh=9fUdHLhsD+WTgAUcEYqmmYUcw2i+jQbd/MROsuAMuO8=;
	h=To:Subject:From:Date:From;
	b=UE3NRbcuIMhYgJl4B9eFKCxXgXV0g/6yzX7Rjqjgto4++ZfLUByqcOWCqvtsfay2X
	 G/cqLYMuOFCdghZ4hUTEAvSgZmE8JfTP6Ebe9SGXyOEvLyt3k8n2qa5s40R6WABZ93
	 OTrN6Frq3CM6JQ/lN43yDY2DUspz9VuMfpy/U0AaJLq9mZiQP7xQSc88xlf5TNBzVb
	 JnGd/pdAuIx5nfXS4Dn6zDN+hLEzqxTvJmHbMdCZDYPQQAu+lxYxIN8CQF4tgnPove
	 O8jLORu5tE1RSXNwQjNkfRTbAwO6d7yI8z2TuKuIVgbCUXMSm68OXTSAlIGeMayqvj
	 F2pBZ6Fj3rl/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90566CCFA03
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176221439358.3499.2612947763396911368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72008f91e18fd37547a1a18c2a0479ac5317384eba80de4d2efa735c213374e3
Date: Mon, 03 Nov 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762214393
