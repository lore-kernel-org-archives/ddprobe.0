Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5981B1C6A7
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719510263; cv=none; b=YreqOK9Rv2Fsv3vemwWMJ5j7R9ggK0yom0ydnMJoDWB8pjbMRI3DxgCllEzBEkxAqjEn1BYjcXNG0CwuH2+A82J9bjXIlig8iy5ImAdP3feQ5FmhdUr7wxSg0B71z7c38WrTDzkcP5LC9sQ5fDR5ZnYpAF7E4d0gkrY4uDO2H90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719510263; c=relaxed/simple;
	bh=YCqlRirto2qbRGF5y7zPyiMBkfhjsrCOGvrboD7LLcE=;
	h=To:Subject:From:Message-Id:Date; b=c4T043Nzebel/4j0hYOSotXtZYax0kjU/1aDfszEpxX2DUgSzz7tmwZ9B2wCXxwcCtjyhiItOgL5SnJHyRrrsjSee3AbzYso7+XkQg1PvCiJJf1KRioV5F4DdHTCjTdmCotUmENmJmf6/+UV4QpfISrOPEEllYoIs+p1dWzwPTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEkMJ8nR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEkMJ8nR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE6FBC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719510263;
	bh=YCqlRirto2qbRGF5y7zPyiMBkfhjsrCOGvrboD7LLcE=;
	h=To:Subject:From:Date:From;
	b=hEkMJ8nRw+wOBqqCfbr9INFYQJyV66Ixhs3+w4pWF2NRwyvSjFHBCnhExQ7vVXhOk
	 CQ3UdeaMVs7SF87I5fmyBYwogg0oO8WlqBN5T2yyQeb6ly+c8sYpDEl65nC8fCuExJ
	 ic3uQ5XqdMAP2jjYPuflDapc1LCrO+KNICBTogXWAci5WINasti7xah16vQk8coO8j
	 bzhBLa3lGmaAm3C/diITN3hoPRVywENnmGpI14cUFpnJmxiGbf20lRyRZDljWSWf2e
	 ni3f2ybpea92woJIYBp9iCnP8d1/01i2F0659SiZGkjdpeIziwmU86xhzcMD3ocMdl
	 k3kmUKPs33TsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D81E4C3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171951026286.8666.13080443780348552318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665a2118ebbd541b613e7e1a59b555d0aba23930514135ebeb0525cc53ea45ad
Date: Thu, 27 Jun 2024 17:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719510262
