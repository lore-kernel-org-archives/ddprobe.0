Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF42823DD
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770465834; cv=none; b=Sp3zZ9wCORMEm2VGQ6vsUCIN4i8rwxmkQWcaAWPvB8Ana5pQYfql6W3r3EIMmVthATbqllfPNpEvljZ6Qv12+ynmU/hL0/B64Rjmtxj/5UWIDNYdfOJP7hskowS5kCFw2fC3IiAYcf3ri7KoBklMxQw6fUs8217hOBPqF9tdfSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770465834; c=relaxed/simple;
	bh=WfbdNimWA4Hb9tHB4gi0mv57ojqEI7vJH71JQT7OBoo=;
	h=To:Subject:From:Message-Id:Date; b=aMNNTYnuTkioUxPrV/vhFByhNhmLY/ktGhaPPRC4gzAQsARapdPx1MsLmML0WVPCy65pV+IWBP60WoCpUvYNAIQnSrUr8R11AEwxvZaPLbwnCugEjiR8gfNEe5UB8E857zdX3PPPXPEaiDMsjYdL5bDhnrL1wre0BmZyfYnbZgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBSzPVa/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBSzPVa/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE20C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770465833;
	bh=WfbdNimWA4Hb9tHB4gi0mv57ojqEI7vJH71JQT7OBoo=;
	h=To:Subject:From:Date:From;
	b=BBSzPVa/vXUJ1BwOsVcjURri0PvK0yVVd8ukPYIKab/RTsytU5jqcLFfCvFr8/GJx
	 tjB6vrkUoPzIiX5Tr2lXoZLFz7IJLin/M8HIec6jNiPA1Nhcuz6v2YsVQl8vYJjUQs
	 jhhwbn0cif/HLUEQ9I18l+Rcno/sx1e4hsdfvMg3gwvAgHu89vxas7D8rQfhzX1UHH
	 CH+KImdEik52FRYJpixJooKaIdtFUidvOyPiy5hHaycgHtuh00U9WL73ZUTKfwB8Xv
	 r2rw86o3gtEBR2zyxnu8FACFNzkwkX/DqByxynxvlmqCt0b1s+zpUkecaVUCRDIc/l
	 ae+8EdWOEzBjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA32EE0ADC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177046583362.27535.12757115681654720859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13cec45e8260925a5a73f05f0fefc94ffda1f819e5c069bf8f8550e782e6f1d6
Date: Sat, 07 Feb 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770465833
