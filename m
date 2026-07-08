Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8D03AB26D
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783472914; cv=none; b=qqQmYyg5qo21+zWqtfaFavbkWfLHYie7SI9CBIhBQXMKugR7Ac4UGwqvRfMhaLVR8DYiKON3L9XR36wfv16e6M63o+7pI+lr2h8nIi0wTXAMl0mgOK1tzElQX1/PA8zeJBNi/5V/WvUHERg5ieWDx7uj+4fbXr+n6kjxeWNn/Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783472914; c=relaxed/simple;
	bh=1+2v53tObBcQ5yvGjPOK7PeMyZmd67TDYpxzngx1AY8=;
	h=To:Subject:From:Message-Id:Date; b=tUC/ncOuxPyJoBWj2+nQwH9/G4ll8EA4DY/MLJcJDEj+u1lIqgEBB8yAyeuKQPjRx4RuKpx//coBuZxaKPQRsyuuDRe9rP0dDVzHjLa5ISWFlpW/PDF+oI0L5Uvrh2p6cjr50YvOfmxivhgCZh/JPN7TzolDH7UYCPr3SQka+tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcJktGTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcJktGTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA368C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783472913;
	bh=1+2v53tObBcQ5yvGjPOK7PeMyZmd67TDYpxzngx1AY8=;
	h=To:Subject:From:Date:From;
	b=mcJktGTEfEyV0Fk9Km6MwYQbBUpheQO6x9ZzeRhbRWS0XbFLHQFoLtwZN1G+Nq4SM
	 siyr0GIhQ75k+/083GrWRobGkKt7zyVN+hI9uAFZvQiLSe2EhjXopPUaXUDNAjQNtd
	 vpB0+M9C+aP899+ud9KbNUPuydcuwvwEG75XJwK6enRWxbDQ2yvlkbDJ/NZU9uH1On
	 FYi2pXlXyltZqmedwEg0JJI3r02zgmjlOYrAjectDP5AakenQuwtz/o/El7ZAxGWMT
	 b0uc12ti1S9OrBr4s5QtwYOyViMPjZjo+aLiHXCTp7eAF6QdMz+muf5wLTFEk/KBRB
	 CGgjN10CofSUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ED4C43602
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347291368.11339.13020775229329609273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d270b13e1ca6052e2eaa361aa6aa9e93d5e6705d4ce2600785b2aca25eaa2c29
Date: Wed, 08 Jul 2026 01:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783472913
