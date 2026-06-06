Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337CA18871F
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780783474; cv=none; b=XhUGStRt7eBjMVYmYLwQVJT2SiEWe+jMDKQpNz3UYEDIy4FTr7p0FSQn3rMA6aIowyo/nQb5sBqN0eeHCXdFGt6e9DqdkerUTVmeMpGkv3g4qAiU7b8NeyPrZldZZsyXW+9ByK2FXp2YCG/f0pLrzVEneA6okj0TrQeM+9qOf4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780783474; c=relaxed/simple;
	bh=Js1osIvTUNakAeg0GgGSRVxtlfgD56q3IjtN03rhFXA=;
	h=To:Subject:From:Message-Id:Date; b=dNFZv6hKelSk/p2Y9btzScHP0VRcw5q9YF6xOHobqKKsNxJwK/nd6TqSEmBkfVe/drgVxgo+qjQbQ2AJKcCiqqdDFVSYnjxQ46m/DdyG4JvQzu3NAW+XW0ra1/VGHfNjocwu+vzKaekLGoG5mRHY8gJax/YkYgDyNl/4LInfZCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sD4nY4pD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sD4nY4pD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CED68C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780783473;
	bh=Js1osIvTUNakAeg0GgGSRVxtlfgD56q3IjtN03rhFXA=;
	h=To:Subject:From:Date:From;
	b=sD4nY4pDDMgNGB5XdvjcHKIZpeHD2eJvknpn5QsGb2r9Dq2kNqpvHLrQNknoHyOBO
	 K5Kt6ep+MH2kK913kQQvIeBEE11w+d0Nkj+a+0NuUWdYPa8Ca02KwJxSKvZkU4Fdpv
	 wGFN1wwwM4zbf7J1fvDA5WXZCeG9DnZJ4QcufyJ7PfWbv2cAANj2WCxKBp0CNaiNKk
	 M3AkTe1jTkgcFJ38HwuUjqB7sO1IE6SrNimlUuiihCb8Ow1Vg/+csgnmyzM5h5EJFh
	 5fsLAjT+ZDuY2yJba42hPZsT2XV/nv7gwUxY/UeJYEWGi0V/DhIdyLelfCjPvrwAbN
	 PV91EpCdl+odA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE956CD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 22:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178078347368.23753.11228348388732052712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f4b90a93478c2fd21bcd5f40706938412d44db4e87f4c46789b978484fa751
Date: Sat, 06 Jun 2026 22:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780783473
