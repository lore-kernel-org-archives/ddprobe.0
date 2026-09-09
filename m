Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F81B3AA4E2
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788948034; cv=none; b=edvLgI6Yr1j8klRJeKdo1mqZAsh49ZI11SiL/NIlv7rFpj4VJ/QyuOYfifgbMwMkzAEI2kWYT7sMsOetXHq98RSZa8k39m0sHJPIcF80lx4Kpr3Zxq628GbLlfOzzeeYUBjcB4VVN0auJ69YWj6fvE58d38ohoV/d+g6Iavfq94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788948034; c=relaxed/simple;
	bh=ivOnfGLLL+ErsKfClKE1EIcWwwa/s2YCb0yZTErHwp0=;
	h=To:Subject:From:Message-Id:Date; b=OpNgCjmdVEsYziPfKUmHMIxuaH1qfcnFy4pSDw6qcHPEGrAyYEeZNo1BUKDRitGHMvUm5/gg6SYsOU2DnxyT8MmyrxaUyk+zA1E3LcN66RLz9FL2FSoLpzyJ4c14cho/b9Z46kJ6xUBhZuB/ElnNkROTtI0R4hzVwg0sHS/Sii4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lnmv5tHh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lnmv5tHh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2E95C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788948033;
	bh=ivOnfGLLL+ErsKfClKE1EIcWwwa/s2YCb0yZTErHwp0=;
	h=To:Subject:From:Date:From;
	b=Lnmv5tHhQWRdG4sWQgPh3KVf3skHG2Lu9WTFN5P5XQSRvjfW6ZcDAIAIV9iN0bNG8
	 +Ixpo/CLqJTUgj/2pe+ADVbFfELkWbH5qWeg1dxyDVW0WsG3LOoJDYv9iUvjd1cCN4
	 VHuW2GIDrUCZI+ZtQsKsg30NFM7yeaXyd2OPXqHSXMI3iZrOYKc87aUpiAt/45mobl
	 g1y/WHfIpyOWOQ6xS936jxv624ObC+Ncbfe+3eo2CVkzJSyKLztQTioQxlH8vFdsmS
	 3GwyQfmDetSEgUHeR1DmoHBpRBj1rDTj39Kz4mOufnk+B4msCpX2qZhVcpaosmuUh5
	 sy5BzxM4ykpQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B61C79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894803374.29987.10301307445004710135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfdaff65e64a0bde107c20e85bd4969f09ab44a9d766dc4d0b4a5589dfcc9f3a
Date: Wed, 09 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788948033
