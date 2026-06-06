Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3974930FC1A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780756474; cv=none; b=RYlBDZB/DdaiMeGlf4AyAeMz/4aXZmp5al8/uRlseH2MnpFFdGVQpEnYP8GZlAGpI21cnemMgFaRnMkAfvZg853Tj+Q5s7xHH9Xf16omlWPe2rOfb+U27vINAX9lPxZA/0esQIvy1JsJe9piiRRkI0svrcGXjqSNzc/Nv/z8JRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780756474; c=relaxed/simple;
	bh=j3f13+QaJqkhGC9ia1CHSsIGHV3A8nGg8cUmN0EJvW4=;
	h=To:Subject:From:Message-Id:Date; b=AR3EzXojSbM/spg0UpzSNwfy6JMO3swg0+yk5xnPNAgNF+SghmllEkXsITSgbFtJd78w4V7Yx4/LimSBmh1EnReZ177IW8b0w2m+CpKm5gwQZAEh856LHxd/rDn4pOIl00NInWfL4TJ3tiGG3Up0tMTqy5KQ95pMlec7ybWdCVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vM+2t/X1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vM+2t/X1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9987C2BCB9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780756473;
	bh=j3f13+QaJqkhGC9ia1CHSsIGHV3A8nGg8cUmN0EJvW4=;
	h=To:Subject:From:Date:From;
	b=vM+2t/X1Qx/HJgHXj2yKpCfLEveoDmCBu+c+cYajomnO++7SJ9SGWqyim/dcX6Ky+
	 iuZ817IJKBiOE7HdIp09LzoHh9PIvvvQYzbbX7sXjw6S1ktAmB4dZWOym/G2j3KPZc
	 yMcBcSG2xssge30K0h486ImE3yPjVgEVyJx0uBHwKnBTq7bEwLvwNUrowGuePd1Zab
	 d8Ee0kEda1f84+M2vzOmhnrNS9ZLc5Mn9BFJ4JRM43CwS697RuvRgIETkvxLZtBNVj
	 M3lO4GxsiLTZNV43Ok1K9gd1m34k13oCEeGf1U9vsx4Rnj9K7lGxC5t2oNXeaS7W2y
	 cUkSLI6/kp/Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A931BCD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 14:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178075647368.15518.8650045659725484043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dfd125cbd50a7a5e43f90aa42ea4fb54a42615f916f0031b75baee1fa5d8d18
Date: Sat, 06 Jun 2026 14:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780756473
