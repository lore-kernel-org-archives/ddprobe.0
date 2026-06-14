Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD4E18872A
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781400394; cv=none; b=qJ3Ony/+yySs7WOumgzQKMROal0g3vE3FhGneSB4TWFpLHWkaWUe9AKZySG03fmpFbo5vBP1TuGlR8V0N9kZsT5bqOCDSx03t9CCzEeFfa3yoMVGvTDv9hSDmJWEgyYOwr6I4lgWM/Yy+iCSh68fMsZ2gKf2TWIOrriGGaeVH6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781400394; c=relaxed/simple;
	bh=8mnxdhhV2ZRi60pWBXDX2mI9obh0wptHiWT3fFRhRmk=;
	h=To:Subject:From:Message-Id:Date; b=u9W+ljbTS+F8kSW16r954r0jLhD8Bj30xh5UevYYRT3R2IidD7YdUIxb/8JB2qi+c8uylmnrEZR32w+KS2QGhC+4hqdrIvvOCwQwasVI7uh6UwUEVE7lvK8gn+DpLu9AesXUy1rYnLHM1cisVBgsplGYhF9mHkpemAAU14CNHwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mmHH+3WT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mmHH+3WT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1F75C19425
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781400393;
	bh=8mnxdhhV2ZRi60pWBXDX2mI9obh0wptHiWT3fFRhRmk=;
	h=To:Subject:From:Date:From;
	b=mmHH+3WT9xVYW/Tmgi+8buD54c+GdNT86yX6FX+Ra6uYQGK9VVUQmuPHqJY/2S64Z
	 BIwoJY5y/eDFuz5r3o4/JGnH1UfLVL96gLu6ohHHLnMkM1ACpyWGux8i2ycGxnhhwY
	 l2WnU1kWQp4oVzsyAmgtNjjDoAC6NnId4DbWh/YoWDFhF6ecFQEaK80zZVCwRJJxQ7
	 uXRMKMuM7O6pLRbc0qcljAScZ7Za+IcqPo5sGktqXaZDDGVwmwg+RCyfZmKzRG3gHT
	 bI81QLxk+yTDkQ9sVEsCX3NWmwV3a7l444QP0R/+DPlytzv/Y6eQTIxoxQQlChRq2/
	 COHU1RU8TCuKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6EDCD8CA8
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140039367.2921.11168653539823693844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ec599faee146bf74455656266f4011d445480a3a22401f98d07a6f94c51e229
Date: Sun, 14 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781400393
