Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E05C1172A
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757379594; cv=none; b=SworqUdxyuvmg1t6IWr74RlFJq/Xkegy/fCA9KXt9/qteVr3EVB7eP6mgzq/r1A5Rg6N3zRewEouUGWaTZ+qa6NhlY+ameD3UO5nO5z7LhRzJIh5BJEggdrowXqB6WHvLQXxZ55KaeHsWKgPjBxahyOt2xb+NrmsdDA+OVsIaHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757379594; c=relaxed/simple;
	bh=+aKviefYwCRWw0rCgxNdOt9GeX2VL6EHQn5k1pLkk+E=;
	h=To:Subject:From:Message-Id:Date; b=UPDA0MxEtpCv9WWpjXLYxIAESB0rKe1O/ovux7gbCpJ8OCkAgMJvPL6g5P7XDzwh7rEgnXYUr3cwKj6U+/wqd3w9y9CJ0cxrZTHs73mIj8dWDoik2YiC13SCYDnxWYEwgJ5rMK4i6Q5sRBUQ+0P0dyJFKa03CIkIiXgi8eWQ2x4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nGOu75bg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nGOu75bg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A75C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757379593;
	bh=+aKviefYwCRWw0rCgxNdOt9GeX2VL6EHQn5k1pLkk+E=;
	h=To:Subject:From:Date:From;
	b=nGOu75bgnHMqY3RTHjXcI44MRzXlGIGkpHG+VM/66Uh3FmCjq0aiLuuea86cO78rH
	 CDj+CeWQQ4NWxL7yQ4sZGdNQLrSwbMlly37IEu+xnQGmG2FedHtPvcBtxLCQ1SHhRt
	 obfwswtbOdPLqyUbZzJuDiQaGdgpQhdG5CUts5JqH1hsg9jEHtJXl2YO6oPTXpV+jx
	 /CighJ2fWBO73svL+LvSSXv2ZtmwkZTPdmAOC8RpmMUh9R8Qrclv4qXet/bSLfJNM+
	 3hI3oJoIyQWFcUnxCYJ4f0OWR3/Ry0IMlMSRahk0nE2P/eCAx8DIHvWKWziLCYsxGV
	 muC12Vy2UWU2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F369CA1016
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175737959357.29066.1278290751227911451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1470f3d1ccfdbaebb4b148f8b94002a58956d27c1a7362d8f87738bc7938f567
Date: Tue, 09 Sep 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757379593
