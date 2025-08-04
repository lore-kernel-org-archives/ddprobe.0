Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA201B4F2C
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754312394; cv=none; b=uAxwesH+hVcOyqCpXYHz0nBMiATrtnjz4+776m6K/pKVvA9QooeGnVsEepp3WsLvDtOSY+xh1UYPmBA+3qrI819i+kOiPwzqPcNka5VCU1ahrV+83SYOuTS5Mu1DipccArqhAsL+gylZnN1P2NvbZ2Kqk/AVHU9baNOOZEzhm8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754312394; c=relaxed/simple;
	bh=3omlnDcuimtpAs3L8On49NvhMNJnW9fjW7lwPSlCbrE=;
	h=To:Subject:From:Message-Id:Date; b=K4KdlaGLbw7mCFWconH3OMbhn+uyGBDjEVOE8SZkis5EhlS6fqeXc9hgn9CApOqDM9hqCS29S+X0/vriLnBBmTliYVuLIPLVZYaoButHAXDDD1ifRIIY20ovEdeXuB60OBtuCYKDltLnJXlW9yaNIPP6aCZxLvgmnpupU+TVSAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QodIzj3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QodIzj3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F42DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754312393;
	bh=3omlnDcuimtpAs3L8On49NvhMNJnW9fjW7lwPSlCbrE=;
	h=To:Subject:From:Date:From;
	b=QodIzj3wwMYwiBr22HvHi2ka1d+LCR6r9DtUaRoruDkBntunGZARhCaQvvPz3KxiU
	 0pAOW7T6s/IZ7GSsbc5663EoN4ABPBtt9Xl/D1rmv5ldeXxyO85y1b76eqxivFZ594
	 gHMHr6H6KjK7AfQ+z4jrRmbYBQZOCGv3kgCC5ny00HF8OAx0KfeK8JKX2+6MeE54ke
	 f9yZAymg+Y3zEhJTcWHtHzJqdMmEnOqmap5abtqqEjSu6YBN+79uZybXLTYdkwH735
	 bYstwSgHvzVEr+wg349WuyPRG/oMP0geLCAM/AHq+BdNuuBb6h9sEjABebvriyjodb
	 2iPeG6XgyHl6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90426C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175431239358.17622.10182775310424705053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f1efc8cf92af57e5e5c1662d082548c45b3414f0400d1a0e4ed5b6ddd8cd59b
Date: Mon, 04 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754312393
