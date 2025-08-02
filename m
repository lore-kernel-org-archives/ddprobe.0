Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230A82036E9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754137794; cv=none; b=W80gPu469YYU7xvwexUPF0joObCQNAWrasaR1seR76J5xQBU7SGm/rp0AS9urn2wpYBhpgDo+oDQYB8Siqz3zSa8PE5imhnAhAOPZH8w9pK+US1TGd/J/vcu7T9jm8jBZa0vSV3shi1sDyXvHPWpYd6gG2WQvH8VGarBP3Jdgeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754137794; c=relaxed/simple;
	bh=brB8xLiUiCI0OkiHQJSGA6oRCyRual4z0vbDek7+icI=;
	h=To:Subject:From:Message-Id:Date; b=If3vXpdHrkLkHbb1Hh3dvtiSiaafjAsW+fSJbMMLtZMUr+KeoDgOMFMWmGX9mhYH+M2XZzQ9D92n3RofxvQBw71sQ6QOtBj2Ycz1QHNoitMJ/VuMAqSDfwSwD8Lu73GkMc0Hl1c5lhmfXFEaFdvBgxchCaF3sIvYbBpS+wUCcRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYe2y3vn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYe2y3vn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7540C4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754137793;
	bh=brB8xLiUiCI0OkiHQJSGA6oRCyRual4z0vbDek7+icI=;
	h=To:Subject:From:Date:From;
	b=VYe2y3vnoPc1tijrwnqzn6Oyj5bUPTIReQ1KlPUw/mjUeGx0jQM9E0gt/rSdG7xql
	 2EcDKgjwi//ogFEfIkSiLIdjqbFsTuxyG7PikLbyXInrxihvfQQTryxDPJmRH43Ur3
	 jX/oGvKL1vVtsK1Qq+8qehOJQ4GQorUB/uihwTD8IEEKo4drnSVimOt0mP1gg8/8jI
	 AOD77ZnbBDT8LzKOjwvHXb+dF7baB/efb79tTdaRLTv5Bu+nY9mTttkZIIJZmESq5Y
	 phquQJE0mzyE75VIDnOIXxIhk6Hhczawct1YONlWFj1HCRzVaXSmMisFPI70kSHg3d
	 U2GpDThkQSbYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957EEC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175413779358.5387.4823686840749119053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2c74f6cde2bffa57a588239099f5530b2d8bdf1c5a9bb743e2d3a04c3fd063c
Date: Sat, 02 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754137793
