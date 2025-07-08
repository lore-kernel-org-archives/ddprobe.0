Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167FD6FB9
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751996394; cv=none; b=ZWDCH80JjuGPbPW5A7wkBxZe2sQsV0Rvxhn+dSvkfVAXHda5QvvNKChw2ucCNAZuAsX7OAn17RocFj+IS/MMqy+Oa1rar7Kvmm2iUATC0o0L9C24ZKtZeDkZ1EhPIaJvx6i43ZUte72dGhRIzPW3DGNLVMfusv+LL3tCb09T7dQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751996394; c=relaxed/simple;
	bh=F6oRUNDwyPuXcHj7fW2xE6KlxuMqdjyoZA/hcOVlw5U=;
	h=To:Subject:From:Message-Id:Date; b=S00NIecsuyXnHph4aP9Q2/t5QiPJ+7ghEaeDi22tqc1YpBfmqbe+dqdtdzM9bfmiPl1hIzfe1ZC23uM2yps2rBkob8N1Q2fjiVWj02gSVR3R1y3RFwlcFKSqVk3zDTfrNGZBip/rXBZsRG7EBjy8XCeu1NjCdPohv2GHqPPFFqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yw1ojAnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yw1ojAnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8A4C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751996393;
	bh=F6oRUNDwyPuXcHj7fW2xE6KlxuMqdjyoZA/hcOVlw5U=;
	h=To:Subject:From:Date:From;
	b=Yw1ojAnNvFBupmPZ9OGR62VuHITOUyPC4H0XBPayf9Lgk4YdZhMWSGkTIeZuZnCFa
	 w7FAwcM9U53LZylQLkqXnLz7Cwm3+RBBgieifzkIB8q/v6FKfPQF6ZXHymaszr8J6I
	 0X5poVKyOpHvbc9kUB1RnboWRsPVALcdYbx24DLPLXM4LDc5yKkOA6ycc68+djunjH
	 ro0cmaSO8cAeytA8R6Avicz3erpTONkGMszBVPEzMiJuv0jWqQKUQB3JrfMELbxf+j
	 GmB/qmbMR3/B1WOC/uQDNlDxFdtgdcsgf9t4I3x8kPjs/HUHb4nRZNtv4Rki++RU1F
	 PL0BZ5gojrOtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903C8C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175199639358.2252.11615021955198367459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c37d0724c2bd602fee2fe683224f3e292308784faf341daf2a691b8a0dc44153
Date: Tue, 08 Jul 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751996393
