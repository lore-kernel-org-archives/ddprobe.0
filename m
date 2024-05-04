Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77DCA23D0
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714804343; cv=none; b=Pd+mVbFlbv9rvVjt+29T6NkpSjCF7/Ga2YIB8dt+ltFcatqJP3S/JLfwUL8evcwmkrGkCw9JgnmeBV32ZpaB+KX3ft8TgSTdiXVc0cCOiGVEP7R9brXY7gjRJ/onI0O+rOLV7HwvwixVHdxauiRc6N8+CIIpMX39wicfhLbo1PY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714804343; c=relaxed/simple;
	bh=AKlRLLCFUryproBDvGBDbWnE+yHYc5oXGZzEtFfi68M=;
	h=To:Subject:From:Message-Id:Date; b=YCxFBRcubnGKngTGVC/+3h9byUYBpPrTO1oZhADdeJNbEUSbLYmXBWn0eWed4TovJrCDeSOyB9kq9vx9TJkUbCgi61tzsiYlZwWHC+DuNxKTt2UWfB1tp0BtdfHn4VfpEz5DzZ1bAq4Jg8efqpFE3gTs5ar/5+5QtA5YnDM3SUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLiM8CsL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLiM8CsL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3126C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714804342;
	bh=AKlRLLCFUryproBDvGBDbWnE+yHYc5oXGZzEtFfi68M=;
	h=To:Subject:From:Date:From;
	b=MLiM8CsLVqrcVU0Q3E/wBBZjFEjNSiTUyRO2ZCnSJyUbUM+4ZWOPL1rm/eqgaal0r
	 nwp8Q2CTl7+ner7Y50IL+eNKlCdPqiOg1Lf2IYjMmhyFf211IAyH3TVzHxls+CIVuY
	 RGz1QSbtLinOhap08CUhaUiZlzzTC4HDo/8jpMbDkdUgSIcTYDRpJz+YGVr/15Acxf
	 8V6Ba12WbYnr7GZQfn4scS8i1F2F9iJXfjqfJsLDlgZizkAuiJGlu+MekBcwRAaYnC
	 wpJPgH0NVTOUwo6jhgE0lPSSVDq8rcvoAstaawIFJ478FMVYX8dzmEYTH91BCgiyYH
	 D9TcRKmSMW3UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCA12C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171480434280.20400.4217265071107446108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 154d0e8078d0d69f171ccea8e1e024b5d8274682425559e2d10134f0666e130f
Date: Sat, 04 May 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714804342
