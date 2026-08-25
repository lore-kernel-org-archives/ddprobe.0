Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A57134CF
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787617234; cv=none; b=RMRhZzr4H4KjGqiuQT2pXFnXtx0fB5M39xYw04bF6nmYNymsaCHN4Sa5K3T3z3dPNibPNHHCuCT/lInpyeC5yMjTCRc/IpnZHfWC1i1l9e2XEOZAtXo+8AtrwDy75+ESEDSvxcCSd5FzwRutqE1s4QQfvgPV2d/uhtGIXxDlETA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787617234; c=relaxed/simple;
	bh=5g1y6uNWL/NjU9TGZAdq2YLWpb4IDX8TVJ8SVAJCsFI=;
	h=To:Subject:From:Message-Id:Date; b=Ol491Zca8tO1vDPhxeIvbftmufKkAYlr9BQlHY2ijf8n48/oUPwHdcOUNKZZxjkHtE/AmyTvneq5aKGA1Tol++InCgw1aAvgGzYPxbho4yILAI3WYfRvtIuCZCxDGvuLH9YRA7s9mlUQOjRODEK29YGIqdk6Wl9vZqjBLsCpyuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jOY3y0Yu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jOY3y0Yu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE48EC19425
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787617233;
	bh=5g1y6uNWL/NjU9TGZAdq2YLWpb4IDX8TVJ8SVAJCsFI=;
	h=To:Subject:From:Date:From;
	b=jOY3y0YuhptneJqkT4AdsnJs3ggXqucD2ULeQt+PFnMUCoLRGx8d1OQKFNvggAfkv
	 jhL7zjXqWPV3WaAvA8Vq3ekaML+ocxhnTKlgSFTZJYp02xVtD5/tjmujwqrPharM3+
	 MUgqQVNROGmV9SIwLV97Fpfc8Fp+eIjSYiGibRUiGQHr2WAX+f54k+Zl9WqjAeYcSq
	 aMZRle+fPDDVCpQhh5eqOEKXocTcArlfRUHX/A8eFZsqkuzLC39hONdWgK39yUM6vS
	 k0FIh63hD07/gow4UJJ3vNQmoQ2WJTmEu2RZORwqODnsKh3yt/bTxTyoz0vHGy0+Ss
	 iU3rsTKFnZKig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADDDC5DF9C
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 00:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178761723369.31127.12004754035100791057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c956e145337ba696d9deb187cb802d3bdfc06e4fec87f0eb209abbab9bae1a2
Date: Tue, 25 Aug 2026 00:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787617233
