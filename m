Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A84258CCC
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751323794; cv=none; b=W71LydkdgSe3t4Z+1JuPb4YRe7MbXKtSTJ4h5bZTkPmxIf9EZPdpHTn7bKpGIWHbXBCJ6pFD7KdpnKM2wOtlz8PNFllnBCNyAAl7mp+QkZkvHgHss2poc2raY4txVqZNHYSiCxa4VREJTNGs0Uf+ctE6YcVuMweinOtsKCot0hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751323794; c=relaxed/simple;
	bh=qgE1TP9smm2hUDV3NbudExswbee3Pq8vKmTjzFuNdkc=;
	h=To:Subject:From:Message-Id:Date; b=OtY8IHxE+dNciKPmk/yQEY562PYIyRV6ARflkEww1wEq/smOu1ne7pP41tcZf1yoTUM1hFLFX0iNZFlGCwtiCwdiddyFXj5uPoXjuNBwle8mtOl2tbeiHolQ5nBgNAvfZbUR8d19cvWOi3hxk6QWNAhTxQfk7F+ggSrABKUbTqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVwaYLix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVwaYLix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FF5C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751323793;
	bh=qgE1TP9smm2hUDV3NbudExswbee3Pq8vKmTjzFuNdkc=;
	h=To:Subject:From:Date:From;
	b=LVwaYLixeZ4uHhWEpubYRASxoaFU5FX1Rg/CuwDcjNuh+4WYTtsGIIHrnIiXU7qm9
	 QKS5/sz/UtYH+ppoX/aqrKBNtlaXHhUs13Z+fPrnUrni8I6ZZYMIK8EYICN6Gk4uKL
	 ZuPfJ4hQRus4xql3dM5Txs0gn+rIXzmZ5M0MJJU/SEab8q/LFnxB69YzyrEwJ8RsmX
	 BAKtpGEpBkQHLB482oSBDUPvQVuU7ksbr/S5TL1HXMTijx9DNYismHkvAjb8s/C1hx
	 Wlfc21SwlMrBHWB11BCftd7hgJuq86ue3rYRZfY6VFdrGH/CZ2jNuUuuKAOSk7Ym3a
	 LQSYhrt4+zKTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9108AC83030
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132379358.18709.12192593207178778949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab492e6567c12432149f2207c15c2e34656cc7940f18e6eec8d4d9b111f0e1f
Date: Mon, 30 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751323793
