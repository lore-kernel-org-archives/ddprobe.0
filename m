Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D95F2737FC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791111034; cv=none; b=AxKli4cPdDfU/I+4CTbszbkq8D7Rz5cUrMjald0Xuf/2PbfjV2zjRA4H+9mT7kKdI8NszZ+d49t3WXlI5FtmqEAN6AaC9oE6BA8c2rDwS979hIL3ieKN+T/136kUg0CJ53m1FNW5mZY5rYI9V/D3YWvpBlcUezvN/JZlAp013qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791111034; c=relaxed/simple;
	bh=eoKFzwa2x+fE44DALKmfIHqOiELcPBnVc2OSE8q7l1A=;
	h=To:Subject:From:Message-Id:Date; b=u6a3QbWOmlASdkFYSkSaonVUvZol765+B0D9iayECn5NvGWGkBdHo/z/11nlrRQ6k3hYsE0i6tha9mUE5MYKgp1M3EETdkWZYAKZbBKZPMZD/bhwtd+HTQAdV9LVmdt66a4ToQJ6Mc/IAfb/jPwyt1WCvRbV0ANUBJBuUNZSq6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pfQeP0TB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pfQeP0TB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE461C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791111033;
	bh=eoKFzwa2x+fE44DALKmfIHqOiELcPBnVc2OSE8q7l1A=;
	h=To:Subject:From:Date:From;
	b=pfQeP0TB3AYyZoBZx2aqRZtCJzToulkxJ6d2oRoSN8lMi4eUV3F2vAvZtPXR8RxQ4
	 1je9vSjvUq0JlOEHJWOerIfElwrsvani2TWB6Y3jQAYMaCUKvWaOuUZJFMy4/KBWos
	 UeeJoRwr7cc23yLWjUdWES97KXWG6ZSFcyxGO4aaZy2kBOeWqmJTUwrseJLsscBqkE
	 o4y8rs9FMCrnebEeuESG2ceJGhKMsGMuOyKwR5wvCKbiOMk2cpxXOsK3XTDUG7t1+U
	 dHgkEo26ScE3jpK5ynf0nz4MXDCo9u/Rc1K35Ku6Gtn8lQjPWX2fEwG16mhcKA1Hyg
	 ATmMm8spGgKOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B3BCA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111103368.772.8782435660911888169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7df8498efeea52aea270566d95a6d9afcb7461a69e78ab615a0909f4c0e33b0
Date: Sun, 04 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791111033
