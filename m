Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F4B4315D
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722978354; cv=none; b=lToo2FGKo2lR4OfqclxjsnfMmLOMjImlXxMobn8uyfuY2ChA9Z3wucPyNYfU8jqkYldd7qxFDFolfqmMs73Ci+n9V41otsh0rLcmh0KViTT4mHe2vnw+kWMrhBWSrz79v++Hw305yctraQfSPLipFMLYtyL5FvzwjVh2K885ywE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722978354; c=relaxed/simple;
	bh=5IU0fkuWgLmMJReKme7FSkgF3rbPQ16M9vPpOzJREOY=;
	h=To:Subject:From:Message-Id:Date; b=j6e+W9olF1gdbivuFAYDjLdUlC1LeUT53gqIgZ5esPxH0RluklHp8veLXkmR1I5piHkTwYmCbAojpNfmx9VrS0UvUueCSA3NpWPj909QWYpGGkoNlQu337KUzQW2d2Xu3rAy/czm9tOMMddByPaWUQxGfvf2V5ZQTvKfLCq8jhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5ntnwKH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5ntnwKH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A934DC32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722978353;
	bh=5IU0fkuWgLmMJReKme7FSkgF3rbPQ16M9vPpOzJREOY=;
	h=To:Subject:From:Date:From;
	b=j5ntnwKH4L4d9vveBHIfBoL631z+FmBegjXRAOnJelgCmKmAVlpkBHFiGcJskTKPX
	 6PRhMkFlRo2NG456DAuIx0qyCg+Wz+VOltJOXUI5Ig2TWKPp4+AlIbNdrRD+75wTYt
	 BYpxuE4KTSvimKJV0Yzr/8UWaIvZ5iYwX2vTnwmYFji35jKaoq1j1sxGrhJBOZSU10
	 xNQifrltlbfF55VdsegHsZXe4KGO7u7riDOz0ABwlJJZ6TfYas41x+ONA4c+8Ybr2R
	 I6qgLaQPbZ/IFf2UJQnEe1YnP42V7V6m3qKNQd1UKVvMJM4hNB110GBTiOob88T2YA
	 h6DeWn7uJ8D+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943FDC52D70
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172297835358.20133.14885014368961728240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e34b10115f6284550f44cf0686f9925dadc00ddc7788836d67d4f61261cf343
Date: Tue, 06 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722978353
