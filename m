Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A4B2DF152
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756842594; cv=none; b=FGfesIYZR2NXnmoMHCultxXCG15r+JeIQ8Lv4/GKkBiLFysWMWDnGKH3Uzs7H0knKxAEdOQnDprzD8r2RaXWBVkKHpaKueeTyXPMu7y/pSXdDckKi/mLTutP0oCdiqiJD+D8H1Rol4FzUI0v6VWdgGG66rlbmSsy/darnhPJ8lU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756842594; c=relaxed/simple;
	bh=4jWMTXuatisIJHGW53z2zCabzNRAvRCSSYnEP7h58hg=;
	h=To:Subject:From:Message-Id:Date; b=p6zSQ+kSuxENkkixVSs2kM98gBjwZsPWkqLrVnV3l0jObjRhi8+oxbZq3x9a26il7Hsfc+mQWkNDgHgAB39TOPXZigsH0u1ALcd7rVf+SJvwzKhjqgR0NO1LqIlaMDhiSy2EgG45Wtp6fvz+x/Mucet+NJPobqeE2lpWr8AgBAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gs8HPo3I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gs8HPo3I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A393EC4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756842593;
	bh=4jWMTXuatisIJHGW53z2zCabzNRAvRCSSYnEP7h58hg=;
	h=To:Subject:From:Date:From;
	b=gs8HPo3IxISnCsR9NuxxHYhLpl0LnvW2/aUXWkiKp+7MSTUwUPoEv0Vn97brWQeim
	 yKZznJjhKanBXNA3q8eifELvIw4wBXuzDITIH0ybc2WhI6KsqHWZzlHbX36w5/0B9I
	 fNCozNRZKvrNWqf/z891N40+X5VK3AODYykzUa2vaXMqTTeuu9j2NZ6msdxdwgrNtS
	 6tvX4GEBC/37GyE44p0lzF9nxuaRpE3o3ATzC9cfZXTwR5VHmmLmwwfr7hByMlTeS7
	 qp993YF6w0X0NRE5MeW9EawGgMMhAOjf9uBKVCtxdb0QmLbAydKeFRkzu/iXajjIIq
	 onbVd5DQDm7Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F540CA1007
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175684259357.13822.8404692672748842788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d62d44fa041a6402b68f1b8bdea4995f055b86f8eddd17c46e522c440938dcae
Date: Tue, 02 Sep 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756842593
