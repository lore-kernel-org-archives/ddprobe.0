Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F302BE655
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790551834; cv=none; b=tJaVsI4lUi0D0FFOgZNE12Bw2J+xki189rem3YVpRcP+slspz53c9ItPnv3hiwabOllR5fYlie8u+2oqbgzzjI6Yl8ZyXk4D0xpwMKyfgHwSJ63j8jaNrPOmjdvtWFwsuWz0yehfxMoM1ev51YQQkA2VZHulfI9lDEOTbMV6Hx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790551834; c=relaxed/simple;
	bh=WrhtkLOg1wTbezXGisUIFMtdVysq2hAisImbXi1VZN4=;
	h=To:Subject:From:Message-Id:Date; b=mAjcUK0+NR6jjyxKD0TUFPxMsaR1FnSvo7pa7aIfOKOE+eoMUGUB36MjG1Ix531F0ZxNgwjzJ0IQRp1hvTNg2PiBAWzARMqSTAEyKaSX4zSw8qU5jdTHghry0jS2tMFo4ZUjm20rkpsIWLuFObV0p4JyrPFaBdLGeVypSE5UwIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksBwQ4Nc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksBwQ4Nc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17CAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790551833;
	bh=WrhtkLOg1wTbezXGisUIFMtdVysq2hAisImbXi1VZN4=;
	h=To:Subject:From:Date:From;
	b=ksBwQ4Nc9K/leLmZ7GcmFaRyMnh6HJyNzGNb85UqFRjsvmoYc3DriVpRRd0GA76O2
	 fzfEpU85F+tCD8y+zucIFa+mcKvPrrKz+2/buTqQ8Jvz/y74IncRB9/kvzICqmLfr4
	 rKIWX80UCZ1TwHUlj5BZnO7UWt984nz7unq/8FmF5lxI+LtQt9F4w5Gmy4x/Ci3of0
	 s3LE6DzgL+YhPBVdyaYSblaa18c+qCZQjhJRtxzxBJSULbVTdl4DFfJyDK7uuW7FcK
	 KsJ5va3mUoKmlb3ExXWZfMXjGOLfM0QI9nZkgW3Npar63m+A9ZImhFzgWBZEjKJB4T
	 ibK8/02+FZIZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFE1C9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179055183368.3740.5967562200550094996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8856bf7005920e9d8a755a0c4c7d29647046c8bab477785e6253c63f296276c3
Date: Sun, 27 Sep 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790551833
