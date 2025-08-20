Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD20221269
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755707994; cv=none; b=piEDA6sqB9l3c5yTQevwYi/pEufUOHPTRDO4IYauWHJAz3yl9p6Wzz6Dd+AueCkF71C4/4lb4L9Ci+04+LfzrF4mfdngZl02PE9txT9bWWcFR0D0rgxKn1svdrXtPP/jTgVJRB74JGCy6HC92/f9LIntrf7Ep2ShmEcTL+dkBSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755707994; c=relaxed/simple;
	bh=RWCrjwN/Wm3VB5QzUBPrlkVCUDKiDRiqDRi3hkXt/uE=;
	h=To:Subject:From:Message-Id:Date; b=n8vNtn9HzSMrxD2Ba55CK5+zNSx4G/LvTDFGEb2i5nxb2tG0phO4fnkge6O6ZQ9WZ7Y34qjmuNPcYndUhBRdHr+7FOVd9D0Z2qIHQvRtugvqKwXRP5TLQLu0AkZD52LUOWdZb4JmU7pEwEqnCDgadbeeXYoRZR2pjyVkPcCqRZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UiofJWSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UiofJWSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A72B2C113CF
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755707993;
	bh=RWCrjwN/Wm3VB5QzUBPrlkVCUDKiDRiqDRi3hkXt/uE=;
	h=To:Subject:From:Date:From;
	b=UiofJWSQM0RU+Fgz/GTltVAqKbGQE6/vThVM9SfymPVQcInar2aRHITRXMg+WtQOM
	 uSAr3KwO3L6YATbfEGqGlTeiEbj60a4p6PBwlvkIR83OqtYwZpZZptRA0ezcsqGniW
	 I52fujDaeVo+oADKgZpikT5ey41Sr51MF251cttBpA96WslXVLjIozpJJH038c/GR7
	 jLEIo+JL6+Q3gBeAeSK+EMCneuTVxjSP1CZjXgVXdy0bUHlyT6+t4bEmwOMjRCI7a2
	 2NgQlzFGRY0NtbBv0ZXyBKOi8IJMCcl8oPHIMYcxgcjvurARZy/dtxscEaMjUy7F5f
	 s3VQfwViQMZ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BCDCA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175570799359.8324.2041828517472921758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d6961dd6b817005fd5e13e5c8386634622290e905393645967c7a508a9abe9d
Date: Wed, 20 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755707993
