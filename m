Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535A45519B9
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788873634; cv=none; b=bc8I1/sL9NBCEpmqUdfE9kdvJ+VGI9Vh8Yn/PVOCUlKYSqd5+5f0H4NumLdArJeYe4wjvwgJcfO/hVrcghHz5uCKSaBt6T7lw7PcK+viTw/GnO3hBQk6LvUrk3DZQo3hf3mbQ+YZHupGfd9KKx+K9VCgznf83/Lyh8M5YA8+C3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788873634; c=relaxed/simple;
	bh=Py9Se9JujzOCyeViCm4A0ZCx/1Vt7y1RzycAEuF8EUs=;
	h=To:Subject:From:Message-Id:Date; b=Lfl3t09YpO2LYOTTXxnAwvBhnaU0+Vlsbrt1xJNxbi2B/Xig4z5avAHb6sPWV03gL33lrbXyIfzfMCacdMevFYLmARSRKOotG08Ww3KYphB3s2aV5RaNTUJnbqb+O58Y67ZU/pjfsb/HbwiQgr6xK+u06jUwIiBIIYqMvRu0jlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SiAhXSAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SiAhXSAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1162C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788873633;
	bh=Py9Se9JujzOCyeViCm4A0ZCx/1Vt7y1RzycAEuF8EUs=;
	h=To:Subject:From:Date:From;
	b=SiAhXSAall+tGxS7n4qAJdQHISH0In3tRKa0ZxRQ78IRUrnRfZHPWJEuhA9Jg0SZv
	 ti7Yd7pSM6RG6RdH1wr7YWRDM0Poff9vv4yM5vYpX1ZZJ3EAF3cNieYZSycDCuWaFE
	 XqWlD2RjSoLGUA+BAVvQak2qDk7FfOLf8ZqObY+FwFFB9D+X8KqUj0DgSYlC+carOH
	 CseaxdZqkVzhqC7GV1CY2aWNwa59sd5OY9oA153JvRB2DcTb8ASPjE2YE9gCTE88ek
	 ZICkjpzsltBahtEpjH3Iu7E2qfZeigeoAgJ+da0WHZ5ag3OfplyDXvPFoUNFVBStII
	 7TkwlGH+SU+gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE537C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887363370.7807.8653225015986191633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d16b0d6e8c82de6150eac4e3680e835f122d3fb888e155aebadb333155507b45
Date: Tue, 08 Sep 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788873633
