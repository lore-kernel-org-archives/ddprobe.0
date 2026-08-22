Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E981493627
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787431234; cv=none; b=fLlUXxMQcbIozQgp2E0qzzxgAVOp1oO1oOFqyvgQZ4m483EJpkcdGbipgaYPQM1AsBfvGzumPAJlcNr9mkN83cysFpbi3td6LACF8W+44GjSK8tghE1FOkkjZgI6eYzfiQKlNhp0/8EOWYJcF9NbAcpcRi71lbr5JnO6m9yArSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787431234; c=relaxed/simple;
	bh=35coKznodjt+h8HlynLjZG9NF24JDv1ODDcMKQv6yfM=;
	h=To:Subject:From:Message-Id:Date; b=cJ40PDZGBV9qRWCMriZN9Qp0/4yAY3nY5N8E9e2OdB45OgmRyxa5jXJ7eZ2gac1TQ4ueaVerA9RCr2r5e3yJToMrL16uu9k4YUC52UH1QW7msVGN11VXgUDl2y9IwSJ4+bH7CRdutKQRphtKQADEN8SnpAaZy2jJf/v98cg8sng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2OvHpvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2OvHpvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB3DFC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787431233;
	bh=35coKznodjt+h8HlynLjZG9NF24JDv1ODDcMKQv6yfM=;
	h=To:Subject:From:Date:From;
	b=i2OvHpvH1KPCVG+1hefTua+LB1HUERnIhTGXmWyzz0Da+0LV4jrtn1ZTsd2AD8wxm
	 zCKZ8S+9BTLaE6Huis+DIFAPRMeh2CcKaJTYf5aD6iIeHEXluc73L9p+7ZMt976QNG
	 NjLsv5VQwkESDn0xQi3/155l1FnSkOPFLx+qDd/cs29gWf6fb9WZ7l/WsS9H9x3jMj
	 SDWdXgtOhNuTIKiONhpyWZrheyXog27yC9rGP39XbMdnakg4kTprEaC5LWuXS6aIWW
	 /MmxyYhsX4aBnIcgr0ensgiF+ecumK8Jww8dYt2TWZ+GayNcWc8jx8BhE+NXzDgp0N
	 L42cK4d+qfUjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05F7C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743123369.27334.4959176056802305414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f975ff62573acf03cb1ff26c1ca0c94ba7834629e4ba02cee2e2e063425249f0
Date: Sat, 22 Aug 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787431233
