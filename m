Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC81821576E
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771031093; cv=none; b=foIOmqpwMUMflOAZeSgv4kIPhwgPv+zErmTFrSodlso/1xkr3GbosMsuVf2HkcxpIqRV6+VIhF2pwesxdZgL0NSLjiphFtlVZnck0uppF947Ui9nFhDygFq35JyAwBxHSmZXDjqXqge8/FChzY3hV10yAlG8GRO8GnKyc0ewv7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771031093; c=relaxed/simple;
	bh=6CVeRIOzMBw4xdLhb8zSMPTZmf6GC4GWyCxd1ERoA5o=;
	h=To:Subject:From:Message-Id:Date; b=LDOVQlDs/oSpeSRLKFCSTO3VIMNZ/pGrsZ8d6TIiB8FJG3RJKz7DrvQzCqIlhebkXDJRFtPaIc91edckpdR5W9sprgPRf1kP0UBY+6AA94W8GhS7dy52obJh/xd4BKnQoubDUBVKD8VXoAL029xCug4A9rVg345TFjfeiO/PF18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yr05ozd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yr05ozd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0CF1C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771031093;
	bh=6CVeRIOzMBw4xdLhb8zSMPTZmf6GC4GWyCxd1ERoA5o=;
	h=To:Subject:From:Date:From;
	b=Yr05ozd53QaTnbHGEnwDDd9nbKVmXCl9EClwlt2oZrKT2Xxdyyane9Y0gYL0x52a4
	 +kArE4d+zHvyaA3+tEhSIgGGYQjHWwio99Gpd8DZtvzYwwy6c8QKB8iNGaW3JiwWt6
	 FrPHrdt+vCoZMBIxLOcq+Ibsh3W6uNZwwO/J8lKdS0BW1KAFeQC/yIjc3frMvECWX7
	 w9+sSaVE1bpBWYrmQo+xaQjHp6g3gLSf+TGXUAKfGP7gWpz8Qg2ap9nVA2WZbGwWLQ
	 TJEAg0/h9wSJJzCCG8RWN7oOzKbFbRyOVyyIMnQpZvPSaArVcl0/C5Ts6t0MV7j0FQ
	 orOTl4gm6d5Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B529EF99EA
	for <ddprobe@lists.linux.dev>; Sat, 14 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177103109362.27832.14643876280427892361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b9cb7a9e61b040ca9d31e84845f4c1522ccbe7d88b8fa7305587493c384346
Date: Sat, 14 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771031093
