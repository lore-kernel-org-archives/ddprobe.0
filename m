Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537EF2222A9
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787342434; cv=none; b=SPCJLbz/NUYertrbrITTirq8eJBiUCVMSgHEHhk5Zv+K1w1ld70wcKyQT4F6RIlQ25w5Ptzgfhg/9NKc0GziRu6qpK+X5hyWg+UQlgrKaheH6t7hv5bzsyld0phdKiPIw18dn8YORebD8idYLHFSYiBjY7GVQQ1BGJYeaVtcKM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787342434; c=relaxed/simple;
	bh=ECnH1UEducVIGM1f8rF5YvSwr8Iclr9MJYA4JJVaWvs=;
	h=To:Subject:From:Message-Id:Date; b=fqoBKCa6SOmg0V/XcA8TT3ECp6uk04kc06jaJ5ILGoTUgOTW0HFtJ1N+mCcC+5jKR5Y/TDQAX8BlRtORSFwQXe3Di44R9OoVqQ9U8rTtXprCiCGI48NdFa71c4lc3etK3spzXgsmnqFq/PKPIprnoVTb3F+yKG76QPSlwMXLZGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQrL62yC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQrL62yC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79F6C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787342433;
	bh=ECnH1UEducVIGM1f8rF5YvSwr8Iclr9MJYA4JJVaWvs=;
	h=To:Subject:From:Date:From;
	b=MQrL62yCIZHEB3dvzEgPrqMLBIepgVcOdytDlvrWiX9mdJ0PFOP4pUa2XkRUa5V3a
	 LT1BJ2xZYYbmBEvp7LdRvCwI6inKPuwK5g0DEIKYPJlfemCb5HCm8a0WJ530XVz5Ol
	 26jtu6S6Z8QIHiBfEcUNLoc2E17lxm5AOmq9jaGk5afGGF8VR8Sx9Qz0bBoyulpxbT
	 tfEPQ2pWa5BzcXuXl1rQBwsSfMnuqeNjxoIaWMNYSUGpSiZC5ffPQwH2lOq8j9WeEI
	 hjYq9srd3LbTRsuNLELgi9zAlQFblKBORObD7Mf6ZOjGY+/PzEitXgpdwOv/eORB3V
	 WWx/cVnluaTLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B088EC5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178734243371.9883.2744250859153530519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41119638bf3c0b6733048f5c69cd34215f5224fb2f0f70bffc2ecd304dc14ca
Date: Fri, 21 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787342433
