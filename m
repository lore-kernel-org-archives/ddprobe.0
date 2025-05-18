Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D6F10F2
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747551594; cv=none; b=EAM5yLonYmMqnsoq1BMoDcdbq+mKY6CTg64Ij2byJwt5aVOeS24gw3vGcNB0TKUj1TTvg9dOqDH31iC+7BCr4KLtDo7IKbtdOTPA36D4l1mmGZiJW5NSlq3upjzJcWOBMdcG58Xmom2eAR7qIn6L0DvCU/MdR/YpG14yq42K394=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747551594; c=relaxed/simple;
	bh=Ed78DSj7J1ghccvxAebMlcQKJAv/PZeUqI7FioainEs=;
	h=To:Subject:From:Message-Id:Date; b=W7ZuCnzyJ8GWBFsw5EzOCTRBqM270gxVubpg+LIU51WVJTZZtqg6LcmY8yq3SNogO6yTeMTvO5NOLN953IGyUFDlyC0yvGZmUGzDWwES1n+lgFZcUghmWAA5xSgQUWlfWsm50vODkgwuLIkO7vWT5/31Bq8Nhc1GbyqaDiPULnA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rg87PUx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rg87PUx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E247C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747551593;
	bh=Ed78DSj7J1ghccvxAebMlcQKJAv/PZeUqI7FioainEs=;
	h=To:Subject:From:Date:From;
	b=Rg87PUx4n+YFGwmSAs/tgTnUd7n7YOkc6baRnY4VUCcI/HIqjaL4/tmCnEnS3+xlo
	 4xob0TnAdQ7lfenn6E5T73uXlOCr3QQ1N7CqErAPKBxBHayfl3qO3el5Lm+P8+56Ak
	 A8KNpWR/qNF7uem2o57+tQNl9c8Xta+QJ342PYBGayUR9aqIUcefBOPtLMtFJhJ967
	 VSgxLe21rmDZSML2QQrx+kugCFF3SQkqZAYsgKMXcUvFw3cbnRAnmCMVjKDLv6p4m1
	 xcqPOQMLRC21W/vn4Rizp3T+AKpnKzy6/5OLNAiUhzObX6VvT9LIPfyV4x6rmos1FM
	 8RD8jyg3DBN6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62BC3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174755159357.2759.1455664999634942574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bafae7d8e5ea22091107a8149877661649474743731ab08f9b0af5f6220d59b3
Date: Sun, 18 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747551593
