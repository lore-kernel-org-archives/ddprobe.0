Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E27962BD0B
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777720054; cv=none; b=Ugl8lkcjPBjgKjObZ9G4h+8uAgIYwXH/HRPYUIRVQfP7nS+TpVSV/dgdFGKbDkoNedFyAmK4xQXRk3bwPvWP5uU4IoiSKYzQWO5mQcziDm3GR9TKHh90xYqSRWLkq8G4GyxWfyS+n9xFZ9jAVHUO+qnkvdfTqIl0zdV4LjFGwjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777720054; c=relaxed/simple;
	bh=hRGFJJyN3EcyIt1xfj8wWWCeOVjOQdRjuApr3mdsTcY=;
	h=To:Subject:From:Message-Id:Date; b=SnXzd11+RY9R4hyE3CfQum2mxUUimDvNWxOv/o/s/l7/J4iofnQRPhydq5zuky0F2YMaIhizNkPCMPbJS7WseLWu+YBOyS5YiZRWnXJhlU6iUqjozUbKjv/oVUBE5P8BgriOkNXb017DOxUPHU8ssDFvtfUGbbs+ztquhC689w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4jAaGod; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4jAaGod"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8DDC19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777720053;
	bh=hRGFJJyN3EcyIt1xfj8wWWCeOVjOQdRjuApr3mdsTcY=;
	h=To:Subject:From:Date:From;
	b=c4jAaGodw9U5ENh3BHzR05XiOZ7hVYDWRan224Ozg1Rc2yyc6LKjZlJSMLFfsghX5
	 05jTFGtUWXJlu5YTQ3tsmazvwW4oVzlSSijUz+PYzrFv/v6lvS2Y7LiAO4R7E5gAjD
	 jhJ3YiqAVJfXyzOV9YtOr28AJkudVnfz/pxrISvP5GbJ/RZQGFjfz37EuNBeIWsEi8
	 wfQlVc8/+BN5/Szrinz/xAYPlNzxXLF/KLk0BQ20pnDE6xS6x/Y4AzaJTmoy6T6M/s
	 B2mQ8v7ffUW3e8Cw+WHOOP9RE1uOY33j8gzzKerWJN9CTG6n3zmWsAhydyccGsQ8Kz
	 4QJ1k0TfxhJ/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2F7CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177772005368.26137.18365768199125946402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d473b83b1b49b81ad11ecb81ca97e9b6420e42bf28d3f27ac190441f119c415
Date: Sat, 02 May 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777720053
