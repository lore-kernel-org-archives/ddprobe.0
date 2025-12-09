Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0909E22A4E1
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765291974; cv=none; b=JfaYdnWStdtcnf8HxzNgqeN7IECj+tC0AMaA1FCjOm29LuEezU0zpB1AzxvStERv9EnFqfAThzpFDSpE+MEfe4dKY8PWgrN/A45N2hwnnEORspYu36hRu4vYLP53jLJcdnTttQ9iHT2J4XflZb6GIuoIC5qPKJUzxtZv5cL9q2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765291974; c=relaxed/simple;
	bh=KdLFPG79rFyj6DjNtLA/I0jXBAMu/rG+IegnS/FwAgE=;
	h=To:Subject:From:Message-Id:Date; b=AKlDuUlDNx9ZSLe3PZYdisOhCo+ZXM5SVzmKAlm7gWGLLzx9lDo4yG84QbVCLH2kca1DlHO/IGVHRAGWIEldWkvwvrc5slguepZtW87+YgS0L2U59xlgu6xWFJP5PQHw+I1MG1zECDI/Sld3KLgbJ5SNFIfLrg7us4U0JgyqGZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vEd9RqBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vEd9RqBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4086C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765291973;
	bh=KdLFPG79rFyj6DjNtLA/I0jXBAMu/rG+IegnS/FwAgE=;
	h=To:Subject:From:Date:From;
	b=vEd9RqBTIvW/QNs2NCChxbCFCRa6/mtAOo7AOg0LGFdAPe2CeJuQYanSKjozqPCXJ
	 1kZO3eWjk2L0rGBpAOAuVG7He06zpjc3TKxtz3uAuD7gM4bILsWlwE9yNi1q2d5Ycs
	 N+mC0TSxy5lIp98BER2Mzlfyzyxi/7dX2IFu3b3hjO3UU5AT3RtcRhTMV0MioYUgNN
	 wEHMYbo/D/fbyKjnw+qnP71IJ+fnIen8VEZalgNpVFylbuNF9mupwN7YaRTBfg+Jrs
	 N1BJb0rnr4srXvXIokQSjHXqgpDXHIhz5f1Dlm6AWp/SXu0QAskcHaZpbmOAsyuuW3
	 YMBwjzh4w0Ilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901E2D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 14:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529197358.9846.1240002225445965837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec9850e0c67f0287419d4a37aa7eeaba4fa7ead1f57ff169cf86d1238f8f384a
Date: Tue, 09 Dec 2025 14:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765291973
