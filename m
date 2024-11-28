Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4461BAD4B
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732833954; cv=none; b=Zw6cTjlHxsdvUSfmtTcsYCwZKJ2dm+R1xNdo6dyMqxRLCE1MxhxZ58R86u7Vma2QXFnlQJkWy6eyM98cEMSZ8RL6GUyrsOtZHzc5pWYam44E72Up5ml3xvs7XBL7lGrTvhd1aAGYPEA3wSwacAoYTDfdqslaHvC5bYcOLB3GQJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732833954; c=relaxed/simple;
	bh=m4Qjk/cuV+HRaLPl0vNYzi+61viU1AZcFFIXPKXXg4s=;
	h=To:Subject:From:Message-Id:Date; b=YjoLs4X6ZeP0W2NVkmTENBppxOJS7cHvVRUXdyly3Pj3EqGQBJ/tWx2l6NfKZqY9aJmjMVLNLdJR2DIvkRniVFmx7BI0DSv2kMPaOJHH+CDN+u99wmiZ0mxJZcRugHSrbOZT/pXaKbyQnc1fz10mKEQqbULErFmtk5qzFtRyPTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JvTr5YaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JvTr5YaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDFE6C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732833953;
	bh=m4Qjk/cuV+HRaLPl0vNYzi+61viU1AZcFFIXPKXXg4s=;
	h=To:Subject:From:Date:From;
	b=JvTr5YaKWBQZpikxsufUMEzlh5sYoSnOdUDCoZcA+3mEzxpwXMUz219ZFgoiOrMTU
	 /yfLZ2o8bhvKJHesxSGLyNMDjhAARwtbVu/HJc+tg19nNMZQYN6W2ABbvg4EtggMaX
	 7vZ6x2OzDZu4RnW3Kw/W/Ul2M/I9ox9lbq9tlapad8hmVrqQXz+qBMOvcw7tD6ySCz
	 ye/81gJaKcDt1BY/I3BAinTjgcTIGrRe1vRxnPPaEuRNFVsTqsZX6bYu/btZGOlQ4Z
	 YpjvURJ0xeJLcv79Sko89AXgBPbQ5iLMPYiyWTnEEtOvjDcWroihwS8MxcG9iZ3FYe
	 TYa/YsGx9Zb9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9902DD70DFA
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173283395359.27270.446623163641756939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9b1e493d7cff4ceb758c8f018426d9cb56387c9a390405b2b45757a832943e5
Date: Thu, 28 Nov 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732833953
