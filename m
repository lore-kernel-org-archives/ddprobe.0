Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FCA3859FF
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780560874; cv=none; b=kHqS8r9TSdvbITOOexqTp/1DJ7bFSrU6+jXVdWXZSP2OAH8xSEr4tbG1CjgHfBt53yOFQgroX0Hnk1gdN2x9WaQaq8nCZDKo+Zcs9yyxlL3It3ZyTvueUzOx7XQNzBwoDNxw11nB2SS7C9kzgPXMCXyn0cq13rriqupMoyD8FkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780560874; c=relaxed/simple;
	bh=/kxj6T8OSEfBhB9N/rf3u9BkB15ucAwhSDY2oMCnpoc=;
	h=To:Subject:From:Message-Id:Date; b=BaBXivwPIy2lhzY+guSSOp5H9uu1vjFJl8eMSlj9dN3IYMhH94kBVuyqLJA4d3jEg6gT6v9nCNtGw+YiMYD9Rdr/LpYznkgl2sM0AZcLme47qeGiuifFw9TFs8sgjaK3Q0/o8JQ0O7a9EROOmuEUejTjVJrg8LrIiMrw01xbf5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bpk2otNf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bpk2otNf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC38C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780560873;
	bh=/kxj6T8OSEfBhB9N/rf3u9BkB15ucAwhSDY2oMCnpoc=;
	h=To:Subject:From:Date:From;
	b=Bpk2otNfboYuztuwJHdsjHyNl4+PtEYwQ37RzIVKI7+d5VtQeeN3gNqteFZsYNrsb
	 6rndOlXOEhb+LuhzPQksBDoM7CGJhFiA2oBb2i+1hTiCTcJ+b3B0XS9OXuHGjxiXwZ
	 +inimvKPgFSluQkOr8R2AUVfB3iJRYh6By/sX+SaMGy0SsJ/TZ8WYtdq4MFnH60xdm
	 V5psHVxmJvs1Epkp+l4zNcEZl/Xx8AiUBu75alzgx//1sY76dODqfcpWb3Ad71pW1h
	 pV1/FkfVwqR+0eZl2YoPWNvzwgStpeiWUF9lAfhic9LgcjeWxrrSfkZKXOtwjKs/iu
	 D3UGKqIOaQewA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B52CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 08:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056087368.5349.5538621183712516171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 051e0e78f7449bd0eff445c4a8220f52a155b79adb1c7e7d1b54e41171193b92
Date: Thu, 04 Jun 2026 08:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780560873
