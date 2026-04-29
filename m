Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A660169AD2
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777435654; cv=none; b=fqrqLqVVMQSiXdRwmmKg176Z+Pqj7/AghMdkljUeyr6tQwxVUOarcFLoPDwYTBTDewN2PYwXMxjzhfwUcbk8INH1xIIy21AMNvDiuQkT87D3eCRpvyc/fmBe8yrh+LDIZ04/Nn3rXcvhFwS71HAjA670sVwUeYfIwus/+PmJjKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777435654; c=relaxed/simple;
	bh=h1WzY4MVcCIsYlUJDZHhqu+UIG1zpi/Z4z56p99+q0Y=;
	h=To:Subject:From:Message-Id:Date; b=Rh2a19v+cZH93arqND2BS019C9es/dKu2DGFwzjcnUqP8/3dPvwEu7+TSB83U6FsnWrVQYW9TttpaX9hTLmiRFn3sb53uQnHUv0pzXweaadvltwNUtmwoWFLzt3LwhpXAnWo+rV2SHilEN1+in27ZGBb6LPiOaJE/0nnLqcdMZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbWHZFHW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gbWHZFHW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB01C19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777435653;
	bh=h1WzY4MVcCIsYlUJDZHhqu+UIG1zpi/Z4z56p99+q0Y=;
	h=To:Subject:From:Date:From;
	b=gbWHZFHWXkavKCzxVPuaAZb4CZhv5CjBXxbBgyfpDNbunkcQnsEg5II5kjDt7oBY2
	 RXopU1kpaeC5DTeO1n4OHbePNmXPoaGSDJ0uvnDu3qlJUUKVWHI72ImTtNBiqrHzFj
	 KvL8d1MGgc3ddlffec36ow+sSMKt99dK8ZtlUE+pO+7IfsSkKfyJexL+Ne7A+G0wDG
	 0LKs1tbNoIVOAK/MjV8tHas+CBe4IjmOsfi0gCtn5ItWyNxLY7fUUmI4R3piCisnDh
	 wS7AvLFxEDuDCc+QLwZtZCYR0vnq8HbkZF0LECLaxnbJ5vz1vEAgxKOWp+8MywUvnc
	 wU4UsdY5j4sLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA09FFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177743565368.11749.13294381835451933573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff9166b4fd01cd51376260bd308bf15178dac28beae313fc4108b195b2b7c50
Date: Wed, 29 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777435653
