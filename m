Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028A11397
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773101094; cv=none; b=ZblG9O9C9+Vb2XrA+hQe25WRqY+sLRKvo221UzLueNb3f0wAO2noZ1zG9Mwj9Z6R1YPpygeIxbtv9n7efZ7cAchQw+2kCE4d/aLsgn6tlyUHKgzqSemOZM902OYrElUVW9y1eWluQLOVLZW3zQK9afAAe9e1jxF03abtVZQmAIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773101094; c=relaxed/simple;
	bh=CB6KgIslPFCKNlu326MgY6i21we89myNm/AHcXNFosw=;
	h=To:Subject:From:Message-Id:Date; b=lYo+dRPMHH8Cx9vHL+4Z0iFxj6MiWXhotxB5vbXEOqqRdoKoivAP9MDhHZ7yi5ENVnHgCTiaaOowi7TgQIkKodpGL0EBLp8AYFzcscerkXAGkaZRZLjK0oL63ynVebZbb5flWhNjAUbGDT/oaWCPzXHeCtrQ0xKkZPXEtZ9I2mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=usMY3sAh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="usMY3sAh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6B92C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773101093;
	bh=CB6KgIslPFCKNlu326MgY6i21we89myNm/AHcXNFosw=;
	h=To:Subject:From:Date:From;
	b=usMY3sAhxSV1gJ+DjLd4pPl4SqdW3/3Y49fDTW32KjaCneHyUaFv0svI3mKbJNuSy
	 TEDjfDUz2EHvkiywq7x9R0v0X+Dsb6QPFBFQ0s0ggis2F0nLx0KkiJl8ztIzt1eRlY
	 OZ7UJSwIzajLFY0WYt9K8IpwpQtSmSLgQWwRho3R1n2onwlvWtNTdKnu/b7TrCDtWV
	 XDZkh5UsebbFeihUB1AahmgAppkQ9dlEn3j2Qytso6LLm8NKFovt+Nb3/YLHbPJiMo
	 QBQ0yxR64t2AryL5ruXaqDkdIj/jSKDNVR5arA8m3X6wYz3g8APlESzhsDowSpoG2T
	 PPkK8Nfl0UdSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A22DEFCC9A2
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177310109364.20639.10653218539298561056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa36c91cda48d7977e135f69da4f003c3ba49e421cf8bbe4c26b88257b89ba64
Date: Tue, 10 Mar 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773101093
