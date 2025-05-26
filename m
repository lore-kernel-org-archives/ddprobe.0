Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B701C6B4
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748227794; cv=none; b=FQ55M+R9A17TAWzi6PemDpXzBblI0geGjGfGcLxHLY461CwO5o5QcoBWXKvCjZ0bOEZxDRfCNsOd8z356RLQuyxdiZqHcOAeiZe+IHoiBozlU8NEQ7rutXp8IInrHboScZthixKrmrhQlDP/kJwS1WRyytdeqdFkNsU7Wzszd1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748227794; c=relaxed/simple;
	bh=XCk+TwQisXw+5hLR879JNHsH6FQUY9cFwsE20EhAvcc=;
	h=To:Subject:From:Message-Id:Date; b=c+3y/BI8cok5mwPh1FUGrd6CPDv73+RfWW7c8OaRb7vhQOqV3BuXYtDvAce00LHELokmKojK49A9fsRJle4/BUI80Tpd/qGFy5EGuNCtSAEyVJWuxyxa0GndILhsTMq3+sn7r+2OUpgC4gR2X3Z8WL9Y5VG2QsuA1kMxOCMhJTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d5TuCPLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d5TuCPLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABECFC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748227793;
	bh=XCk+TwQisXw+5hLR879JNHsH6FQUY9cFwsE20EhAvcc=;
	h=To:Subject:From:Date:From;
	b=d5TuCPLr0dCGqNAjdVU4sLmBUmdm7lDvYkcgkHiHQr7xzxGGwZ1WPvBE/uibkqmHn
	 aJYBOAjRjTVJU5xUgGv1Q0/02Re9k6Qlo+re1VlmprDtB6yUUSExJ1lwMTK725EoTH
	 bZ72Htll9FI+WoaXRqvPP1Owzf3RrXTeM2MvljNyn+p2RiNwHzobtf4/Y+VJiAaeao
	 o3zBYc+vn9yO2o2x4aAbSFOGKl1eDooHt5kJcKzfhfiHSKW3f9MVrBPTKDpH15pn9X
	 1RIyQr2U2Mo/sWdcTGlHXytXCQ9kz8bpcF3scd6fBk1COeA0ec3MvS/dDWt4C8zT4d
	 3V1ep1LBE2sKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 999EAC54F30
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174822779359.27551.13437544861031810245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8fc576e65c9f5f39699fd0969d057505c61468f47e94d05ffecd9cfedcf020
Date: Mon, 26 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748227793
