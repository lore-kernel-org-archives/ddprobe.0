Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C47239594
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766130834; cv=none; b=DLIhbDLbM0vsE6l0rXyAXyRJ156tg7g7YcJl58RMfpMYGYFec6queL4BNixh/dlFwLmFivuDrkuF+4ca2ewXSmApt8lc1pWka+cz5fx+ulURdhaH1xDiEcw5d2bRSD+a+Xcwje4KotHhawywnF34wK+GLfAYPgl2f4Mw3wCujnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766130834; c=relaxed/simple;
	bh=SJojXxGrVdJeOzxofBMRz5loc8ue1GjZiBlFRq91E1g=;
	h=To:Subject:From:Message-Id:Date; b=ou6rTyDzgDvJy2TZeVEssMjtP6bicWjVHdL+J7yeYHeQygpuGVguNNBZoV6wbLGgwz1xgpUnGfuLXyLcbHFrl7yiJtx1tEQKcuSDkH7OhN3ko2w2VaB4zuKwdzBoZ896zFisYHRsQaQS+ykrKx0bSdBUGCkVWIMEof2lPC8wEPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahuFPXHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahuFPXHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C08C116D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766130833;
	bh=SJojXxGrVdJeOzxofBMRz5loc8ue1GjZiBlFRq91E1g=;
	h=To:Subject:From:Date:From;
	b=ahuFPXHh9d1wEtl211qddI6N7R4eMqtAoL1QGsyMfyyrdULumZAUfmNhnl3JRERBo
	 s/UF9C/Unfr1PbQr1erkgB74yxdl/2w32TGg1GEVCawhYVVeQmyQAOzqnXxoFUVVVp
	 L0EvyU45YsrVl8IkNc5CBJYDL65fwPOkiU0ZPiKC4Co2KCYCvKbBq6UEumGUcjQBeY
	 K4TAlHcr0j0BWsY1Oo84rsTTTtNaH+119CyAuVI9ZP8odQRN9ZP2hemAiFeci98fFy
	 TQQLxKDSeJH9Od7x1KRt34koGcRDk6VU3/9sVqq9SfdLYE7KxHQI78mEWyf7pHArW1
	 kQJRNNohyW8uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F2D74960
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176613083358.9547.11768038274261680460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a9200bdae4fec4808e8b62370f792b9c2c30adf17eb61adae19fc1a4d84390
Date: Fri, 19 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766130833
