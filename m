Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3183342DFE4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784222914; cv=none; b=Oj7moVsHcb8p2XpFXu1XFOJEekFmD2PNNg6RQrrhimEVgaYRUyxVdpAa/cSraHQXV4PtVnDn6VKbWRFUj7FQQhh4728yp45y1tYdHNczPTpMHJyXo9CbZnyBkqHtA7un7+Y509W7l3nOiOPbLxIot1JVFSOQ0MTNW2mvlFEv8T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784222914; c=relaxed/simple;
	bh=+b5YJJoQKrLwQzsd7ov/bC5y8JQgZWeZzO9M/hB4pjY=;
	h=To:Subject:From:Message-Id:Date; b=dtxeI4Xaz3SaPNDLV2RYE+RvpvuUS6rN3ECU6cI+OWM55IU2QaXsua3J5G0wi11RQ8eiPy+1uf43jOimVAQJwJywqJQ0UrZxCwEcjDj0x+FzUM+4pgcu8a5xcgsDd0GWE+Fk60ZR0zeQ9h6/1M2ucnqZpF5dkJ8n+5Vkj/Vj4S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUrxrRUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUrxrRUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08C9C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784222913;
	bh=+b5YJJoQKrLwQzsd7ov/bC5y8JQgZWeZzO9M/hB4pjY=;
	h=To:Subject:From:Date:From;
	b=kUrxrRUGK27Ximwnt8NQzZaMQhzwfqZwo3yZsVU8EgEJsY94CfCaAFo+7CCfbGpjE
	 q1gqsAeojvER627P72Dw5CwmZHulTO1TFjlNf5hb2BJiARNDvJFciQU9qajHKZQbZE
	 wxKaZx3G7qn5Ra4XwHapRABUuAEv46Et8Y+UxJXVUjSZa+fYRaZU+pIwByOmbuAgEm
	 SGNRln/RqJN3LKCwsWS1oiUCrhc6x2w7d/5jnik1ltXfITHbTZ2IXsbZC6i7alXJHI
	 6QOKzMHfztVPtVJZbgUAq9UtPguIAdp8emX2JX8sjBafDexdT3CzAoZKTQcK0fWgBT
	 BSPe7YkF3DphQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ACDC44515
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422291368.29794.11097926111350323187.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7794772affc33274ad2e11752746fb30d4859a950e87e29cd9b19a0abc25ba5a
Date: Thu, 16 Jul 2026 17:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784222913
