Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48310200110
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768982634; cv=none; b=mUz4bqAhJ2OaQrYtb8sLs0YK5R8MNWyB5HmU7ME4FNW4fT7EY8XLXoazCpc4apfxvbshpqP6hJ9YfuTNU9ZTz1q903wu2gY++17T63n+nbouHvVDY4FsGZ+iMYFv451fXctXXmU7TmXxRi0G18DPtcG6FACkxiDRd2rPBC8TV/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768982634; c=relaxed/simple;
	bh=hRHNIOAcsy6nj24cA1RCbS8syIBbakvnag+UFIMaTVI=;
	h=To:Subject:From:Message-Id:Date; b=pIQ+Dl1hYzSYQy2Fcu2lIly9J4wuDmO5Nk5lVbGJXDTbDsIpZh3urDrSMBiZR0tJlqeH9TXyvznxGicRjoXD8kngWXYOwt+d6VFc1Jn4y2BWMdKo3C39T+ttghj3inpjmGN44WaEmSP4QDaQhK/pi6WsoD4i20fiktlTmleMy80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kMQa3LTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kMQa3LTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7732C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768982633;
	bh=hRHNIOAcsy6nj24cA1RCbS8syIBbakvnag+UFIMaTVI=;
	h=To:Subject:From:Date:From;
	b=kMQa3LTj1y42kPMNmEsIAKAnkHBJUP08C5f4vTQm9EOnZrG1iHFULJyp2nQFB4m4U
	 KoeC9vvtCY9CeyIjtV4XO2pIifWG+P34K2cMLvc/qJMRi9vu04lJg7ERq+yiB8yRqf
	 J1HsVIYX8nKUbZGRkm5BRTghlq+F2b2kTeh6VPkVacysjoLbpp62Cqqr2KmZwl3fqH
	 GZcvuY+7hCNbu0MU5+zO0rDV1N1zw/PlxEAM5zyYzg6ypYa4vqZN6kGM/wvCGmeW1b
	 HpPow0uXnsLbjITI3+O1mo8sSf+Jo2Bp6MbCTagwYb+pBN3crIP90Vf23K2r25p/2M
	 m3PU+MaZHXrLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6E1D262B0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898263363.16340.11644647041503710184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 283d63d26622b940f3745f470c7b04b558732b7046fd27c65696c69a37973f7a
Date: Wed, 21 Jan 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768982633
