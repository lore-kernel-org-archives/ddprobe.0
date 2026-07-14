Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42B6C32E6B4
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784008114; cv=none; b=rrNUVhTPrmQuVVL15Q2igxrp2Vk3xq59wSOBkmVg84Dm9lBEd5LcfUs/7fzxXHyQdMMZc/UCvpRd+GarGBW4L6FS9Gd0t0P8yWuOKdNUKmEcN3Z+59yxtZrF/YNAn5xYTCTc+JyyuMSjLqjhqHeaXqVF9FgflvYJ27ZekKPP8ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784008114; c=relaxed/simple;
	bh=TkGGhWtxu5CkALl6HPp9QJvEAwnFheQjZ8V6Sel4xuI=;
	h=To:Subject:From:Message-Id:Date; b=rq/aPfC63OtfqHY12uAYi3eD+OOqOJPDq52ou3+ZqDxgY1fZ5lX97Ck31cPdRpAOHSVxQEjPzvJSDMy7Q2dcjI7TW6r015UlBbx/CS1hbpy/Kb//i6SqYt4cr7XeJ65cEkhVX1f5eDbYJT+iKETLMB2CTSfPDi0Y2q4UZnsGfuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLmEmLqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLmEmLqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA40CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784008113;
	bh=TkGGhWtxu5CkALl6HPp9QJvEAwnFheQjZ8V6Sel4xuI=;
	h=To:Subject:From:Date:From;
	b=PLmEmLqyNaMtKpnyJX7C5GqbdPsFIO+rSlYae4eZk9yUt6pqIb9uG2y6ZyeC35fNI
	 dAQuzSlTmf/Te2hBLURU1H4USlr1TfWM/YC9pgOLjNl9hPdWu9w16duG8zSNeygGkq
	 eYYtDL2NBV852iy8So6N3SGIJipQWEc4Y1FmP0zg1isJ4KrEtQD2PI0AQQMRCWbyXB
	 BUsXzj0WqRfnHP3QaMo8ERQySsQNaBTMZlhR9ISwVD8FZHLi5eXC6K+BCMAzik6MWu
	 LB43QmpmijOWDU875s2XhA6zcAMvmgeelzAtooKDaIflvkKh3+DVoVRohyjitGxlIN
	 O8VnU8x1tK1Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9229C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 05:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178400811368.9843.12146242457814287350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37189e62970dfba59a720f203524d03e5e1fce10adfced27c6d1da7a15751f60
Date: Tue, 14 Jul 2026 05:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784008113
