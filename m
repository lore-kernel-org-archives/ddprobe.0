Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED52394490
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776112054; cv=none; b=DzRtcG5uMGcA9SqmzxMGEh+xqyAINLP1B/GJ6uJc7AxSY9hFINjdwPLYJ+Gg50zKVHS+NZxGE33FZuvmJw641440LW8nhHwTu7puikpRdKyHvwtvw4hz8Ie8rdPUuWJ7EwRYp0Sr7KKKMPTKd2lGbT4aaeR5+m4V4tzn7wPz6NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776112054; c=relaxed/simple;
	bh=+oE6szzsrzESlYF/5FiJn0GIpl6IoyY3tIDA4C5oG90=;
	h=To:Subject:From:Message-Id:Date; b=R9o2ktw/rtC/XlDZZdCG7emu0ED9gt6EZW8rwthgWjfiM4rp5XSEUMy3gTl3/kAhHMnmWIqSygHKoh5mcatnoDCssjY4W7DjkvXrbffAGRZUi7Fwr5043QK3RGYBEZDEQdC/4gxiYZK4a/QQTA8D7O9uu0xEeevTyQZj6GKA6OM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYb5pGl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYb5pGl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD6D8C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776112053;
	bh=+oE6szzsrzESlYF/5FiJn0GIpl6IoyY3tIDA4C5oG90=;
	h=To:Subject:From:Date:From;
	b=kYb5pGl5qU7A4w1gFU9gi6VRBfdjy1vSe7zVu1a0HUp6K4K0/pTadcGJ4DXPNv2uy
	 uG2pvhDock5TTNZJTP3ZnxuarTW1us4zrBHLUr2ZrT2+zJdb6KdyZ8V0uAAjNUn5CA
	 CfgMPKvKluuZ9+YYB9j5KSN1yLTiXmkjgJ9qF1mqXyuESHt1NgvQndkoB1eDshr0M0
	 QDr7LKH012/5fmxh7f/b2Dvl1psskZ4VbO4sr3gNQwHxtp5IzlWsB2h29wx/GbVh6d
	 yHnG12NXWRrxysa/Dx5YhHeXFclBG7zRdRtSMtbPddsL+TOgztooIammojtOgNw6aS
	 MXiR3sGyrmeJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE837F531CC
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 20:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177611205369.25106.15432671094199227812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bcfe2fed99cb9615a1da3bccd8228c275b877ef3beba702a07007ff7cb5e8cf
Date: Mon, 13 Apr 2026 20:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776112053
