Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25DEA39E17E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770113634; cv=none; b=QyGhG42AbPmTjP3BV9e05uJfWCKcpo8b9b36IyOoQ81e/1III05+bxX4m9GIGTFxCw6CjEJF5CcDuxep0VmFAr8hjIevJy5J+AdYDbaPtvqNzoeLHL2tywZCzxUGa19//KC0U+dPIN1SvIuZ80kv0rx5yy6FW3Nzk7Cj2I8G0JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770113634; c=relaxed/simple;
	bh=/o02oHiNNXFxbBaNuz8rj9AMpVKoPqKiO5xBNQl3rx0=;
	h=To:Subject:From:Message-Id:Date; b=e3PG+FDS91CVOEwknSoOLd3Wphl7IWCSE7Y2GMsXoIP3xfuXWfwhx1mSdNgO73OjWBUP8w31vNgJKM0Kca9xygtqraqmNPXNu5aNoplvp5eim6w/b3iUo7F94Jxnv/stOWKH49+c/XYfarELzucubkFgaiagXNGemFofS2pv0Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc53WUdD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc53WUdD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C4CC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770113633;
	bh=/o02oHiNNXFxbBaNuz8rj9AMpVKoPqKiO5xBNQl3rx0=;
	h=To:Subject:From:Date:From;
	b=jc53WUdDYVSijCD/xQIJCz/HyZm5HrUzmStPmGPhXH8QoKPxipl4aRi8ESncR+g09
	 jzwgFnz4aMMmVbFzYp+JCV00BHtlM+xTCxrf2iD4o3SH/jF3k8F0l6bRGMYjpf7U52
	 p4HTc+P+/dih+8ZrU+2rfI5bX4SA98rRBdjBgAYxAtKAPdOzOwLgyDGR/+rSKsIN6T
	 PcAufJN2Um/+QUUFeIKMSJIEzibNcgmpnoBEtq9/cfKmaifrOsvnjpOj6qBGWoaxPT
	 7sb64Pc9aLnRoyfDomhS2H1ZTt59Nbq5hru2sKr8P04JlW6u9vGM8WPativOhZoRfW
	 OVXf5os8OzrFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E477E8307A
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011363363.4963.17867954196790559708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c806bf41a5a695edaf6e0638e8b1333a0b584a0245ad06a20320d901ecadab
Date: Tue, 03 Feb 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770113633
