Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72E5E2AF1A
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719437603; cv=none; b=tpdxeHAXWWgigmQiydgw7VIS20ye4G322noTB0piGGZ+NNr61LjkIs/Dm5NLSWYRf9RRHNW7pp4xwvUFB+DmbU+Fi0hoONGyhJ+FN/bHdsR+APksM4UPsgtDQczi+SIbXbNYPxa4o4h4bJph3HH6s++0XWVzqnII14CpDvnPSGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719437603; c=relaxed/simple;
	bh=whAe7CgI+Oegg8a01eY45Bcj14IHIRLH6ackkfH+Mss=;
	h=To:Subject:From:Message-Id:Date; b=lRYLwzuL1fZsLcOZ+SAPQMvJmjtDfWYObARkPLPAPkhsPg3QHbGkhIEsUdqGcfoH5iQJei3Lh2JPBHVj7t+Qa42cMu9K6PQy8f+rRyajr/CMgrhRjQO/Q3LYUdJDAVOsMht2fdX9ipVRw2y1/WVXI839UsWXh14Kx4cNiNz3OzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5dTNGpO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5dTNGpO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F21BCC116B1
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719437603;
	bh=whAe7CgI+Oegg8a01eY45Bcj14IHIRLH6ackkfH+Mss=;
	h=To:Subject:From:Date:From;
	b=e5dTNGpOXH/ducK0TMy0FNnL8DYMIJlMG94URv2SMy27LmVZ3wM2Uu5OpNQsoF28l
	 W+I6eXW+ALznU0gIO1nhT2cDXoV9spiUx82QXJyLH23QSRaSV09DqkABLGyIoahMLv
	 mhT8GNHBtTFv+4wRhSsfDChn8N7pKWZyuwoRP1vCKM/K0ILmjB2/aNbjacm14zuPAZ
	 HXpbyF1vwnZYemIvXGKxlUUd1HdoQ+4/7ptYhDxCb2QqhBQxwk2itGtLx0eEzo28sO
	 UjoT9T/q6ox0Ck0XJN2M7VLsoi3tcaFQMfJ9dbzX7eCG/eMZ8H3+N15ymhUwVCTxIZ
	 pDzWhRq4rg9KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9793C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 21:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171943760279.17040.8434204600762781944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc45ed4013d859e0e6855d81f6b6991a75d8dd07fd12ad21ab517cbddcd8bcd
Date: Wed, 26 Jun 2024 21:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719437602
