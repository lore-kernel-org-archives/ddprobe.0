Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AE541C62
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771293294; cv=none; b=mS0XDqoAS/BbvO8h9fFqpGUswhWJpW23jvRoyZKaMga90LBeej61THv4/K+kVfenGndu2MVE0/55rVgcCY+0jKYTExwYwL6Hw/oG8RsVpxIpE0DS3llxyVqh3hdAAbKJsgt8FD+2u2QRwk45AApkh54CWVY3Ip9wOuawO7r2m8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771293294; c=relaxed/simple;
	bh=aYhajU27ZE/VhFFytYx+1mEUna5emG0jCtcr6yWOt4w=;
	h=To:Subject:From:Message-Id:Date; b=Z2aJGKL8yuWbu3KtgstbqL2d34LwQNwzSVWbEtQPd6ijWlSTIU+vn8rHNNj/qnVyd0B6/NjM4iIVQy+7YRUehG7ZiUApbSf7VYXrrDT0+X5voGsKNRbBg7rFda4lnCkqQZOv8wL2ANsTcTyyfzzUjfEfZLss1xhYUR3AhGJa9qE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iT0Opn6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iT0Opn6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABBABC116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771293293;
	bh=aYhajU27ZE/VhFFytYx+1mEUna5emG0jCtcr6yWOt4w=;
	h=To:Subject:From:Date:From;
	b=iT0Opn6iyCtN7wAwUBaMU5PTxTbCQrzxHNgjVNGnbpJf3+F4P9WnBGOHKmwZE7nLY
	 E9NGokCKXTUbZ1YYqPungJ6FQ1WhLd2dPhyMpb76LYh5X5PQN8IXfwRAl9+oguYAFb
	 kWDjJjzxGSuuRnNOF1xmvov9mHToNLaa6G3qQ0f97cVOPWX8aRLQBUAqO1lra8HYjf
	 IWg1/PjYTO2E6otdmutS2wkiwHLOsiQBZM/P73LWy48Twx3VbscRXMQcWoGQ/9EJCL
	 JI7KbHwI9HW/yFaU4onSs51w3OsfKS7QoXY4z/ID2/2S1hcXGGgX3Q5zmaLOsGYmpF
	 DbCv4XjOAAE4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E71E83847
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177129329358.11036.5685087362054059489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52c8f9023fd75a5ad230f0358097dc66339532cfa71d86eddee3c7ea7b0fc85f
Date: Tue, 17 Feb 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771293293
