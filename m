Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A33594028FB
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783499914; cv=none; b=T3uDDdOnIIooJZnDcBB5DeePljxrV96mlYAG0GlS43hvwNagWCxMxfmk4J3JBc9hC4RnjdeYT/lw/B86vHmFUow/ubo51srl3js3+apGDk3qCsMpjQK7m1ls9dA+JX3RzqxOVz6P/bQQZ8XhrtQXittUjZ8IeJTEtBxWqxlTl6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783499914; c=relaxed/simple;
	bh=J7Ds/hJqK1HQt4GI1cCNV+1OgePPNt7cTZj75xHJZz4=;
	h=To:Subject:From:Message-Id:Date; b=hSMEN7rGP9gpD/TrIpjLyiwYXXCBiC1xigDtQtRNs6UfVQrBAqZZ2xKjAuSDzzyAdnOdTNqARM/ov/0HvplJvyNRHRKKTdMeDLf45K6hU8BdK+dOZ27/Rg6Tx6jLXJiaCF2tMYu35W4BqWt3Hjpo8fDxQTbl0fzkgzF7jX55GYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnAk/tFk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnAk/tFk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC914C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783499913;
	bh=J7Ds/hJqK1HQt4GI1cCNV+1OgePPNt7cTZj75xHJZz4=;
	h=To:Subject:From:Date:From;
	b=GnAk/tFk+9MKQhksdjNWFvi17QdGJ1u4aqZRBKhLKDq40uk5BG5xLIV1+V2P+YWbo
	 FC2Hl7NJshzHW51YTOJLCD6EmzHHyYreI4DoDxXs2PbCSvJVd1K5/vGQklzDP8GpZs
	 Mx+99GVFDYXJdrQ+GH6dEDAyWUwPj2/dwSG82UFHGKZ3vTSKodgD5Y5H2/SYbTq80b
	 4ymYJAbnmIFoS3+kzDzdG51PHl4nOr6XvkLw0VCQVxHll1+0axKx5jbuYFZlsSCifV
	 EE/ZWBNi3z6guw+pm+rAXnAluPJYIqtv/MTaPmnclma+L+4YCsgohWBRC36HpgoY34
	 yzOf6IQZD8JhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA62AC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178349991369.26785.8835792644788533542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5919f08820e5806024de723ba9d937797137034199308e91dfbb36dde883fc8c
Date: Wed, 08 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783499913
