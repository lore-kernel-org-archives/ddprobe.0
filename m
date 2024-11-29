Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA6BAD23
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732917954; cv=none; b=Zg5NCKuBC6sres/nOXum0XulCz3f5y2hizvCwXN+g4LvzJzkOkixpj5cjqKp9ZVkkIo24eNwcvnj1YYu18sjGGMur8isCCwVIKLYaxes9KKwR9mN2J0LarZNooQePCxtia71MsKJepSGVvAEOLZ6WKUUmU0wXJePf3xyU+3KghQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732917954; c=relaxed/simple;
	bh=CKmDIhoAk8RLx2OZc+IOpzlmS+PYVTlljIi3MI3JMcY=;
	h=To:Subject:From:Message-Id:Date; b=MRnUj/+9rsCLRrolyGHcuHaezxfYsDsTtuJA04+g9VEXFPc8IzaF/NCLBbqGSjQd6YrAdIHBPQ3hMP80/v/6GB41ey9idp7QnKqjz/efbUBWN6ECJGt8tFMLVtE5epc/+liShiHWR2bNFCOofTalQe8A5pGmGb1d2COZbFWQnYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EsSRbPIv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EsSRbPIv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B238FC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732917953;
	bh=CKmDIhoAk8RLx2OZc+IOpzlmS+PYVTlljIi3MI3JMcY=;
	h=To:Subject:From:Date:From;
	b=EsSRbPIv2pQOXXthdxALw0CGVWuQGM30qCt9J12rn0GUYJ5knZIcT5Z26lyf7A7V8
	 vjn5unryoXoNsMTNTYL3Vu3TUFLgnKd3aAiQt25jeYOoTFcDnvJbXBGdjBQBQqcr0D
	 z1SbjbEhtkWUPuwdmcFXuNi94Fme5IzQZfwqrFPVZ8MWKDUIdO2vKSEpb7S/NSS+Xo
	 eOQpRIPRtu2PSD1Axg7drOeUFnxm9R5htxRQRFiCs+xnTh6KAIiI+n/nYsllpV9daC
	 y5iMKddpPjtlmjrAmkQVy5Jkxs3YPdvgsFSZOs3zwDNqNgRS+20Cmm6fEo5zzoIjw6
	 oQapTobFQARBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C9E4D6EC18
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 22:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291795363.18106.1744939951876684095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc19a8504bee3231643c30b0853ec633aff13b2c67f6f12f31f2784113823257
Date: Fri, 29 Nov 2024 22:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732917953
