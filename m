Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B28A1B21BF
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757688594; cv=none; b=m97FK2F9WerwL6I0AEH5jQg38q67NyV16RhoIhvGO+j/zinylkrii/G7mzKQE4UCbqan3J5xIqr8I2wQoB/nyS27hCyKrS8JK5qewdnY0H+yzdcD+m+f6GdoM8aC2llf+S3NmY00oIxMsgHnJ+yF5smpPg1I0oF1IsEYCeXvcfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757688594; c=relaxed/simple;
	bh=DBSiiR4YtyJF6ZCEQTTpNtJDsRG2mwzZZVhk2XXBLks=;
	h=To:Subject:From:Message-Id:Date; b=u91c3bimItsW8nJeXzvWzD2v3TsMBBWct/W9VH8kTZX+AVFVIvQ4j7I/25FbBK/cnddTtEFrs6BzwA1VMPjslQcwAQVW+AIBacJphX/O4Q/uJ3hOEgEmJ2bVnyDu5LjxvrAKLhvX6Uo9EnYthhZaDe1/+h2XQySEu0h8YJmu4YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIQU46vX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIQU46vX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72D5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757688593;
	bh=DBSiiR4YtyJF6ZCEQTTpNtJDsRG2mwzZZVhk2XXBLks=;
	h=To:Subject:From:Date:From;
	b=cIQU46vXwk1jXsvbyaTsp1LRSnU7o5YaM5mT+YwK+Q5fZ77+IsA/8YoR1Qz3qUBR+
	 td7iPHeJrfUaE7/rNbLXI07mRA+n4G2BXRpeKzRxIEYH9JqGrSl9pcIMei6NxvNpGC
	 WeJVpmzGc49NO84hkGTkASlYL8g/z3KzlLq5RbXAGpeaf36i2aGxvFWED/JAdszDKq
	 TgfkNveCo/VcSXeC8EIC2RSbC1bXKm7FH22y39GNZd5oa9yym0fUVW6izVubv/bGtE
	 3KMjLFVckUrhkqWQ/jBUSj3JXemx8tUgOa5gXkRqeFYLXHYyA5cf8jP/2sOx5cHTda
	 L1wAyXEezfsfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E17CAC594
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175768859359.29397.9633554424316869574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5adbf3228a5c1328dad90a5b8367166d433cb9d4bbe23bb3a64fbb98ff6ca158
Date: Fri, 12 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757688593
