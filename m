Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDED022F749
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750405794; cv=none; b=JOlmJMVh/XJxb6t0Yo5Ygai/mjTX3RSfd/of9ETJl7qTeYdSilrNlvMxD1NsBoIkxWeTKtOtXh0X3Bll2x84nyBoYp00zAHNW6NEhSSe4iJNhF8ZGX6Rc7VuvPAFWdu+gJEHJ73m08L5CkwezDe7tFzTilSNg3n4ULVIpFwAih8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750405794; c=relaxed/simple;
	bh=aMVISQC3Vn0EO420a81R2OPVJ3xE29WiKPZ7X94oxXY=;
	h=To:Subject:From:Message-Id:Date; b=ul2/4nRF7MG1tDg/NPj+YCYGUiaOfFOfqqtb/4ndGU6xn8YTlXrIvzQ6MtmRzZvTnD/5PfGL263IyGZ8+AFTE7labrcSLtEaaLlEqA2Fc64AH/61yeuKEi9uZ9Znrgi4oWV95gnIIPRIOv90DxvfRVnw0ipXhGEmoUjMxtIK/ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y79MdrXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y79MdrXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08A5C4CEEE
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750405793;
	bh=aMVISQC3Vn0EO420a81R2OPVJ3xE29WiKPZ7X94oxXY=;
	h=To:Subject:From:Date:From;
	b=Y79MdrXq28emybQzyvHAybnzwfFl+a76MguikVIORrrfh3NihZ5Z8e4YIMqPicq2s
	 8WwtZDiJbR0rGeRJY2n+uGtC37cP0+8+8X6QDcXAS/sMp582OQus5O4VXb/45uf2KU
	 PJjiGlhcMi+9o2M8rK24DHwM7Ymx2S9W22VBlwc0RbHjwKkItkqJexgoyzklG8KDF6
	 kudxuV0tpNMwug/Z/sL7bP+uo87IR36Zz9s7Qpf3+5fRnTfpWWJ/a6XIzbnAGQxfXR
	 ln4dhd8/ZaioYHRfqd4I/SuuvLilY6wlZQJNCyyTosqct8BhWwPt0Ht/qbGwbccqAl
	 Xo2RWKPqrHEUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC10C71155
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175040579357.28779.1017053849519520637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90263b2a1da8f8fa22e849eb3e0862a05d0e78e233234ac1ac53c9187dd6fcfb
Date: Fri, 20 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750405793
