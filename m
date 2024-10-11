Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253331474BC
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728663954; cv=none; b=LmO9zJQwm1FIIht3VfLbdCTDgXX3ZT+pNoc0DaG7RC8QAi7kxmMc0w8EwocRhwBKlFcs/bWKBCYyDeK5P+6ghQAFV4EWPtYSPTVmNXTiWVe0fgIn5nkr7lF/euRkRy9PjOSmpoxO5duF08yTp2xumiorFYw9OZzEm0yctcP5tOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728663954; c=relaxed/simple;
	bh=PrNkzxqfHbZnRlMNsuJ86MvOGD+sa8lcT/sBuyWgBzI=;
	h=To:Subject:From:Message-Id:Date; b=p/1TbKpMViaOUAXZywXDBhRvHPtC0VeN1ARY6JBqjj7/1sW8keB99e3qjxWOG4/8qCCUyu7iLXHwaTK0CejGcIfbn1vHQdEAYXxceH5yjJjPwUSyfE+NeEvyrsKcNhhWBDoN6RxDoSmS2NnMEvgdVEHTqm4K1FEg5l5+FfaI4Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNTBP1UI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNTBP1UI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB25BC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728663953;
	bh=PrNkzxqfHbZnRlMNsuJ86MvOGD+sa8lcT/sBuyWgBzI=;
	h=To:Subject:From:Date:From;
	b=NNTBP1UII4NpZ+bTcYdr3gBVVDGKSonJSyIGi7UPsn+0ilxu5d3OQlgVODxiIrtKN
	 dGO0L9i3b4okPAxtk3SPSxEKtZvgA3nzWavMMSHglJwzS0wbZptP1NAK1+B9A4U4BK
	 IePnNvQZFp94DlkwAiPX2MCqgTjaxvhypdWIhKjsaKpGMWXAK0U4xGqnC+nR2O+I65
	 TD7tayo8PMhjJXGrNzDnoubIe3ZWEPwdf5LopVFI4GwoyTyzKHJP8+jVG2IbQF82rp
	 L2sp52KvSoFjjS41jIQB9Gzt13dM0udTh+45PV9RRbk9TIC7+Nm62dUJBsS3qK1Bb4
	 8jKzxbN+uLoEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99510D0EE17
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172866395361.18072.1802276543039464164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c57afc8a14219bcc1dc53ee9e6be4296549364d8a3369cf35950bc16ef3fe4
Date: Fri, 11 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728663953
