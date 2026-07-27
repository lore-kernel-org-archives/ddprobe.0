Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F09A3FA5EC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785169234; cv=none; b=muylbb4hD0NPENM3hOALCfTcOd3ssBqjjjX5V5C8sF/7FHsLzypH37B7Y8N5HA1Qz1Tf7ooyY9hSwXEyqPxY6LLITW9QU1LXy6hxloVtanAz+ZQL7qII1DVUpoNHxYFcjWx9rF0ltab2x5vn/ydHPGwGxwaGMF2dRFWFVFdGb5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785169234; c=relaxed/simple;
	bh=YCHrpjOi5KyUJQT/B7y05SpiehvDaPHX+ac0YbUcDNg=;
	h=To:Subject:From:Message-Id:Date; b=ttvVsmxdI41lkoBp+N1BMbvrc4Tb29H0hSMPli9gNNGzAgBWcdpjEEMJbB1r51jBZfGQmwO6KgqK5FqTsS3DhbhTEkhl1BvFg2F4n0TcDgdNHOPB7sKhpe6kkfjN1Fp2Ufasv9Q1H6SrbN4YZZybXogRHe6sw6nV+CB1KepS0PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eu3ugw0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eu3ugw0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBBCAC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785169233;
	bh=YCHrpjOi5KyUJQT/B7y05SpiehvDaPHX+ac0YbUcDNg=;
	h=To:Subject:From:Date:From;
	b=Eu3ugw0DZX6sVYJLHcv2gRHPkq0XdIPqRck7nLpp8Ix6eMy0jMzrtvUKueqbp4jSW
	 UF2X2P/1GHdihyagCfXfkP2diV9GKtu4t8oOiDt0pgUwc2yh+TKzcL1vNjIvgzXdCp
	 NncOr8Tr43IvYzIAvSuF4ez0J9akrN3E46a3PHGWe6+PcI5L0h2+zcRoS59cH2mlSP
	 9hq42SmaaXnU1l1C0PJsom3QJvjZknbOwNSbV6Lkyy9ayrLnDxKx1KLQH29ayvAJiz
	 /X9OctCec+y3nQ6QYo0PzMv8+zFTwa72MWEy3XS/+UeRTx653aP0YEoQV9j2RWawsp
	 dxgEhFpLhd5uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A68C531C9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 16:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516923368.1677.18051872497805049471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d5706f858b61984d9078b384f55a8df862b2d0d3b1200f42a4cc8841aeb3b97
Date: Mon, 27 Jul 2026 16:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785169233
