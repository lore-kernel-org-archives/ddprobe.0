Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485FA7262D
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764597174; cv=none; b=Xm3ok9J7h398BadeQa0uMmDba+7J2hZSb5VCMl5DNzNp30LWNe890Nyh5n6eSUEx8LsIX39d+w6WsCWu3pNsdWJ+SRVgY7loayPxuK54DruRUVDwqLQPVP0KCQTob1Svq4TKqnPoffoinY90YXkWuuSGIT+IVuWpdGCWtm8qwPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764597174; c=relaxed/simple;
	bh=jKEqrAnm/2hheUaw2z9tfJ9UCOMwLgmCU/oPzUx20mY=;
	h=To:Subject:From:Message-Id:Date; b=hKTT5+KguoAgA+dE1ef3zXgXos4yLHndwxNFOIFn89HzlgWYGUoqYPkp6Jrd3YzXCqPsxqmSL2t7hmAqachuZramiv4jRp0nlZzU1csW+ABWgpa4vzCwMAZvyZo/vjucoAj/wMVshTLe6YpQI516yJr9FoaDCV6FGIHm6/GuRI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S4cFN39e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S4cFN39e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD74C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764597173;
	bh=jKEqrAnm/2hheUaw2z9tfJ9UCOMwLgmCU/oPzUx20mY=;
	h=To:Subject:From:Date:From;
	b=S4cFN39eT2Phgp1KatdsTFKFf2HfnEOTQmnCF43fpICYkM6bIwBkOfgBv9bviuGpp
	 hBmz3LQikrPB+dmE0TN+FQltMKV3MoxeW5BvUz19obYQb1VaMeNu7ERhkiayKmbkqx
	 2+zkdaJrHRNaHrgrzZmcXRyvcE6WKLVdP9kHd2amxDxud/TBxUnnQ6MJIP8tAnKTmE
	 DMh1bErP1kGdt0cv2smOzM1Muw7AS2URjpjrfVObf949wMXzO7iEPyNuaBCJyUoMqf
	 0UnOGpeSpBYBEgasKRcIVRZvfLM146o7Q7d82rVgIDQizCqYNvfiChFxic0DKPbNHr
	 MDD/PG+Ko8gNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958DCD116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176459717358.2406.7982702747476344552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dee2d4dd8c5fdbc9bacbbf179decdd229718645d86a760e2a6bf4f4823dcd7d
Date: Mon, 01 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764597173
