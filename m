Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6CD279912
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753204193; cv=none; b=VAl6/BmRWZp/oUpFfHvHnbfhb3QjWbKMsb2Hcmx29uEvJduC4kkxIqAEQYL7T6+i+BPPiYFzzmVfYQYUAQQbrhHX04blJCgjo4Ogpi+PFFUXVZ3SYLbwcfZH+A/2qI1rDiUapLG1kYST5oXiXcKt7hqd80ZbntCqfP54W7p6oRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753204193; c=relaxed/simple;
	bh=FpMEW17DLsqB58+AbDo6Mo3bAZ8sYAlnd4FHrn7zqsU=;
	h=To:Subject:From:Message-Id:Date; b=Eo4+FIl4sYCsAB6UBnfnjQqFrdOkyc603MqivjeZ/g9if8ucRYDvGp5aL7T0/4ix+PLdwqHABVqouWwUNnnwDn1Bf09AqE35cjHDNqZnKOSOMMxKJzyn1K8XIFUfh82c1U7LxnhD+QGWAv7j8lkgsjmDWB0XY3YH6rdQzft67Hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcg2iHJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcg2iHJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9ECC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753204193;
	bh=FpMEW17DLsqB58+AbDo6Mo3bAZ8sYAlnd4FHrn7zqsU=;
	h=To:Subject:From:Date:From;
	b=fcg2iHJOx92gQLy2yUUO5E0hsdy45PdydyXtUsD2ShoOzLxCDE7UOklCew0UTBtYT
	 GZK0ZvqLXieIGukFBNYT21YsshYLlP/1xfQScR4uMz8TfvoziCBMs9uNGJGeLJq1rX
	 WgNGLnH1Hi3+NV7QjIHWl0ihTu1at3UnxcPozX/AOATm8+u9iE8TtV5MasRFe8J90e
	 nRhIJu9a5c+o1nQeFveoVP4iIO05+kGi8Wh/cCXoBt2M4mvDKNAXXuceK9UXZxhl8r
	 dLudKqOaNyGK3pqmhlxl8oqIWY5/xfpWqJkqx7DrHu0qE6qEIZKG4RMfSW9bG7qPA/
	 ek+WdksTALViA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900E1C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320419358.7275.8013078343573057277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e6f6e74a8572399b6ed2834e62abeb3eb6e20ebdd0577c748099e78d96e8a12
Date: Tue, 22 Jul 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753204193
