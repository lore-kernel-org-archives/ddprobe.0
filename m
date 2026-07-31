Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58017175A9D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785457834; cv=none; b=iD07l/VcpoLA7xi4li4FnHL6ZfTye/tCT6EGAFbu4bQgOOdmUHIZbOOnmv99Kp6LGdBWNyUYg3BgPX8+IYrFY2pFm8H1QfP8W2jx7SBwjgG9NtdsW4EsgZWRQqJg4ekvlbkb+J3Hnq6iraAqJCKGhyx7Nr0/tFLjDODyV22e17s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785457834; c=relaxed/simple;
	bh=ECGWyI8PKUuYyMglHwAp/UKNF6jPVrk0ywwMsg07XYM=;
	h=To:Subject:From:Message-Id:Date; b=ZVEguzRvv/fks9SwtWMKMcrnhv1EZP8AEhWhW+7hh7RhlrB1aNBi0AR9EI+G5O66PjY1QVOxslDZFTZmGKJloDpVF6tl+ke/XFFeS9MxAwoUOCh6N4kcqi+FYWXOZ5mfL+cI0omrUmF0tbhUhjMHlTzsZ7Uyc/Pa8yWriQdS03w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u5289N2p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u5289N2p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9E8C19425
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785457833;
	bh=ECGWyI8PKUuYyMglHwAp/UKNF6jPVrk0ywwMsg07XYM=;
	h=To:Subject:From:Date:From;
	b=u5289N2p8vM/BK0kceUom/1VgTzUJ/ihycjRlszaYrx+/dKQD1A9RxOGGTWA4NvgB
	 7NFNuphJyTeqW+4AicJpkJGdKA3eaYBhKSwtN0VHxMzLyxW5jUuxlILRmsapQyjCSd
	 mR3W6duIRnJDv35mjAe6cDmziZxOAgF1x37G3rFQ5CxyfwB1qS+kcmKASfXVmBEvxH
	 dcRJAFSdhDGcT72BnhnUmDA6UtMjToDvO797jwaAd+vsuSYGx/BFZzQBESVKYLIi8Z
	 vM0ffMlh5o0nwHyB5kdj3ynMq3a0KI/jsw8EBC15pcuSIlJDpvyN4dxRFKbqov9YLu
	 dVqDVctYZH/4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7996C55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178545783367.3271.6545095023868857301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31f0cb60e5fb0116cb750e847788197eac6e573362ff7b17aa495af9f4d54fb6
Date: Fri, 31 Jul 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785457833
