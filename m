Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D707D33E379
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777411653; cv=none; b=ZAnwfIf9XuQofGzQNA9woHQHlHewZMYEAZwzQKuvdxaA2aV+PuRaxGRC0iozZHXFTx220CSnVs21Ae5kUFfoARxnHrbiX393oP26RnG1zudmLrrbRqdDZWSWnU670ezFroKfnt/4GpIRW9Zc6GVxmGl8e4ArRkn8Fyc+QjFfr5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777411653; c=relaxed/simple;
	bh=sgQxkmeKYi6qUiBJHvib+5YijQvoVa5qo60VPSlMXF0=;
	h=To:Subject:From:Message-Id:Date; b=Ok5agD4kmpN9t11W5hkXjedn2lwRAlL4r31/rI2GyCiYiW6RyyybPANArTEScmUlNsYXZUGvx7zm4LBEz0ssrdnVpWELp9rH+sb8uO8yaGIy1AJUejV85xE2KKAM1HjGpSogE1mG6mukzYG3jgViBzgEAJx6T5P52+fo3UwP5XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXW61Du3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXW61Du3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCEB6C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777411653;
	bh=sgQxkmeKYi6qUiBJHvib+5YijQvoVa5qo60VPSlMXF0=;
	h=To:Subject:From:Date:From;
	b=fXW61Du3vyWiNe/L2T0n1f1ZC9v6cdPMkmtHbEiA4ex6Xd7juYrv2hXVlYm66Wv+l
	 nZ8OjZhl6Hl8JtPQ04LXBo3+AJ1PlJdHbkfU3sAGvO9aziY9Pb3ttoL5xgNJKKQqXt
	 8VEelotbHtiefuc9SMIONgyy3qebh7nJ5R8Kn1fkBR4Rc60dDOHox40SJOg8oug64d
	 zuGkHSEysYjzVwmoJxfKbLp0tfHFk/d3IRqTshm2FpO9Z94N2ejXTip/oEpTKb5YQG
	 5wsayFpsxcK0uUE8ImMCzQGNm3nEVDyLZ7uD/MRRd4g+MppeWxPREkT+jVm6wptpjn
	 fIMALfFz584Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB64FF886C
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 21:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741165368.31243.15167314044192108367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebe10783391ff166eef09716f7d11e2bd0158679ddb43961d7cffad37fff56ae
Date: Tue, 28 Apr 2026 21:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777411653
