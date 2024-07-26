Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447A536D
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721982954; cv=none; b=X80EKASqu5YBT/4KYBRUEfvwqSvbO1nBrhZCWlB8JQ4hJovoe0w2H6/FxgBQORPpJIsHOGt5i+TcGVd5kmATI+4CWyvTywioWRMjg/CZoUFIl64p7lG/5YpSaucwSD/XVbiOPLkRPiXpesq+WYad6tuL28iBLXneugswwFs84B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721982954; c=relaxed/simple;
	bh=7khjkmwAIVWqIdylOkjTFxti5YW4TJFF4RHH9COfsxg=;
	h=To:Subject:From:Message-Id:Date; b=vF2BB0oRWhVg7ppOCFolkV0gmxUjUy7DTLKyyIbGVbva28t/VSXL/OkLaEvjU1j79OCvimiHx9mjsMSUFkwe2ys6s7pEDztv21O4g1gLC8Z4f313bKRsSEHshmfy0k7Ugw/Rq8haKMiKKVq2x0OEavvTWyvd/Q+wzUSdMLXZxe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SYLJJ3oL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SYLJJ3oL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0196C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721982953;
	bh=7khjkmwAIVWqIdylOkjTFxti5YW4TJFF4RHH9COfsxg=;
	h=To:Subject:From:Date:From;
	b=SYLJJ3oLQpkTdAwRcbYayGq1oonNJoZ1YppDGL76BiSkeJ3YR8xGa0Chhydq5sKtL
	 xOF7o0+NGaIMk3KTjWPlIUEX4siaYYgr6MDUJSFYrEdTpuznyqE1kuvtuX88xAhwzE
	 mZLz9N1TslG+U5Xz+92i3+pmbGOxyT3yweftiD4Mmi7c0tkfS0Dav3VmxIoolBDQLg
	 mmVBGriSik6np9Ko7EVC/zTLCUuBOr/qmqPxJAlpT1++kWjGIZGRJ+b75g4voajjc4
	 t83KdCxyRWlwjAC2afSiFlfLTg7HqmYuZ/DZlDrRyxIl8pmxzTZG8vFqj+5ZadHPaW
	 vxZkI4IeusX2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA54BC3DA7F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172198295368.30573.11119830534850336633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9798dcc6b33bd2948521e486b48d01de42920bf00fda4c5966ec4f188c7fe212
Date: Fri, 26 Jul 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721982953
