Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AE7717E
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749599994; cv=none; b=O3XlOTjqAkPG3UNINX8VgH9j8J4MZ/hfRXe3PbqmZK4GHaYRI4MAhZW6ibA2+xYvGOSrNXL/HBroVpGJiuGduXMBJEwcwuAjtiwNDmrAisTkv+jk+q/l76yzUEb/NbYPTQXU9tpMBcUHgn+5ZpD88YgmqirtNk3Pcx6J4q/mYrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749599994; c=relaxed/simple;
	bh=SkUAYC+tv6bJpXWm+trxIVh/LW4q5Y4Q+mWCdHQCpp8=;
	h=To:Subject:From:Message-Id:Date; b=IXp6U7WDj2yQxGLlTZdssrgEKH3MW4doSg2EaI7w/HUm/Nucf+FFEJdfzN0cl12ANAJqXlzqOTICHsLFDqGrSeZMT28VsI2zXVa/VOdCBeAw/3CqWbCI9pY2XslWS6TCRMGbKrlq+l5h5u4hxWh9yZkQRETRDyJwCkau8Gad+WI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HfTZaWEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HfTZaWEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A58CFC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749599993;
	bh=SkUAYC+tv6bJpXWm+trxIVh/LW4q5Y4Q+mWCdHQCpp8=;
	h=To:Subject:From:Date:From;
	b=HfTZaWEW+gGrFU2qMpRy7Jdx3h0fnU8+s5MnFSbo7X9yCmWdizNNK19avuCUAvBUq
	 qxd8FwBDkfJBCLjXNq6cq5mBq+y60g3yoXMMfms0D0yH19v6BUMsvwtl1X15TDq4f5
	 zzAgxZngBqUZc448cTwbahlurdvGtSG3bXaLpl9bB8yOX/HpDcZWkLj4UJWAn+inRp
	 1BNsMBPIKyOMzV25VVK9NWool8rSqqi1GMRa3XqgSMaRa07cxqLL29weoGy/VRoX2l
	 G/OqOPIDWZLc1Jboghnd/2m0oQxHZ/HCX2fHxMHRuji4gvAW7x+unc+PeE8/gCq5Fa
	 J0s9l/2INjfxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90037C61DB2
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174959999358.31666.16364273480926694544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2147ce30a7c8f34614f5d290e6f3ef0b2496d6ab15155286dc8e4fc8e0e4a154
Date: Tue, 10 Jun 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749599993
