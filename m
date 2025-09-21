Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6EF2C187
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758427794; cv=none; b=ASjVtD+FuBqixx3F6izQ6CuJFgHSFqShyu5EFpeouWKyWH7oQT8fVOJMgLbGRKjRihd1dpD2d19x47+0J5Y02P7JPpYLCt4qa8MID4fI5RX7ZSpFnpCxSz1M/Mx6T6+b5UxyOMjjPKcPCW3WMLJvBOl77Okx9sAYhJA3xgVRa2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758427794; c=relaxed/simple;
	bh=xG6Ds7OQmnAx1GJSuudzy3wd+dcDmpnBQ/jcWmwxJ3E=;
	h=To:Subject:From:Message-Id:Date; b=ReUGhkHGfRtat0D75jGtDpfChyfkihQ986EtJc9Gv3MLT6WP+us9b8BIV6TxWicIgxp4um0MnvkK6b8u0UHGdozK2XGJLkN8Az/qOWp0gHhUXhbR9bmCTti1hsh6cSEXLHjivGgnwmdEcdBTcpwGkX69FplfdFuhMsEEIWI9CGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4dRPBAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4dRPBAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09B4C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758427793;
	bh=xG6Ds7OQmnAx1GJSuudzy3wd+dcDmpnBQ/jcWmwxJ3E=;
	h=To:Subject:From:Date:From;
	b=F4dRPBAQV2OM8BaxUntlFdImuMcaiUWmunNjK7tkhCHhKVCn7248OJoH7GFt2bl5C
	 anw2D0FCASUFmDuc6Qe4fU6SAIlkb+Dq9/TBNRWCt5lGxHhmfU5cxDOIdicHOA/mpH
	 UzSWtT6NzwfMaQrIDAibhwQZeZmHwBAdp1/Rpnt8WDc8V8MhPYTuq4CuMA6iwFTCKz
	 K4kczKL5jOryEDtl5Uso1bDI+A0/KrAfSegJQlBQ8i0WaLEysDuT4QikNneRg+/l+6
	 Nh0TcqDdal9rTD49ga8eHrnmNWioz73IS3AMxdbsKd14nCDip5mJ+NMj+bQ0/ZRYDT
	 98wnee5PaWXng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E997CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175842779357.6381.10596982870015094180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2136697b0c15577d59c79aa6765c1135537face3eac798a8f581ca40ec688b5c
Date: Sun, 21 Sep 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758427793
