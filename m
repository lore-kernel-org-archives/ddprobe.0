Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54CB61CFBE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 11:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721127923; cv=none; b=dmsGsBH+US7hiUSadrd8ULYuLrFNxfZyMLubbdyTzkXHP9OmKGbATm3RSSiNxTWtX1eo361j/UGoxmt8zoxHTEvVZTyhvNiuXBju9VWIGf30C7S72sHYsBizfBqRHJs9yQa9yUvaUdrk3sU7hiFGCoyf293Cf++Ru4vb8Xc09t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721127923; c=relaxed/simple;
	bh=Oe9xAQ0HyVEe6m7Ba52d98WUs/F+Y7Pp3L/DFAwgOO0=;
	h=To:Subject:From:Message-Id:Date; b=IiG0BwbnPjkUC24C3FbjeQJpYoffwVxyjxPWDfS8Wm2QdWwsqQ/To1SN7oVQj9Cuv2X7IcUu6yz+zeLGh9Qq4+fso+qTw78ejdX3HzoBA9kNAFGh4k8y/MDauAJh6gMFw1F87ytbwAwArDo8W9bSHAKnTU7FBMZXNUT8olsaFAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgQlgG20; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgQlgG20"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D310FC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 11:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721127922;
	bh=Oe9xAQ0HyVEe6m7Ba52d98WUs/F+Y7Pp3L/DFAwgOO0=;
	h=To:Subject:From:Date:From;
	b=RgQlgG20FB8ZFk4Dul/0HQ1tvSUd6jqR8kI7hYHQW2Pf1Y7tIbq6rvsAcrAXJkMJU
	 OkZ3xhaRKxlorZqQjQaa4uL64PK4UnAf5npMYDcXVae+xXQCTjTPDruds+dqSBu9Qs
	 wk9axw6DY5/pv7z9rLu8mBVteIKu3ulJfki4Qn7KGCok8oVwu8GLqZLFLzxqqGhD/f
	 lIr/fIbI4Wt4hAgCE7M60J059WOsQ0zlJEt3IpGJzE5lr+lWPXcSIoFn3kJrxp7upS
	 wx0hRZmEy8csMDLip714cSWlONLg/0KG+jYMem0WY6BwozHC26kPEmDarE0RlWydTX
	 rOQfzRTEgpCVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF249C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 11:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112792276.24893.5771391247763262362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb4c8196a339a9b704c9f96fdd632aeeec453f89036aa78925679d1336d20ca7
Date: Tue, 16 Jul 2024 11:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721127922
