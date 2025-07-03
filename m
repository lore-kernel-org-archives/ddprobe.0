Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA582EA74D
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751552994; cv=none; b=UN72M6OCiQjS1d+dN2CkrC/wrm0omK50+kk48FIUbxN1s9Ja0hx0wZTn4h02eiGAvKOx3uHGU+eAnzGheUqlADqJu4nSHlBfrpaglX37He3JC7p2aNRPIOFNV3xwXLimEPacB1qVZi0IJawKz8lUsE5sqnlKRe6kU5WrmmAai9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751552994; c=relaxed/simple;
	bh=rcYtgkeCiffI9sSXdreY21BmQ+4IH3P9ozF87IaJBGc=;
	h=To:Subject:From:Message-Id:Date; b=c2BzlX7bciV3GQXW/a1jxY/+APoT1n54R0g4UInOubnmkzH4256WgEzNZ1w0I/OBQdcCkEi6XEAEKRAdzrTJMAfu+8kxs0Ml1ZodfW46RErgGmaobB6Azm4nc1zXTdLQ7PHU33KAvyBsuJ8KqsuXuPH51/JqiGn2lKA0CPG+ZGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXuajYdz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXuajYdz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0DFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751552993;
	bh=rcYtgkeCiffI9sSXdreY21BmQ+4IH3P9ozF87IaJBGc=;
	h=To:Subject:From:Date:From;
	b=BXuajYdz/ZgFIwmxH078ypJXJUOdgTu+gzIar96QAsBDOvTZDYr2tpyubAH1c8oni
	 xZAafC9D3irDn5yM0VewsdcquO4S8f1AX+2PaoHOiDjWVGQME3y+ScO89TLZTsGp8T
	 6ts3AnRq4bLFrbkOiHmoSliXanRTBJWdtla1jMgLkGv7RgvqK1izTTB0jfRmb43KiJ
	 TvCuKM13eFVg8PmRQGnxa3xae2NvgytqfZBoZqJRpzQMXledP1/yd1CIGjmI6EwsEY
	 3jHKZy+ct/caH8Z8LJIZZKh6bXlSqgJQupnbzcpK8OliuqaO78k5RxWos53uCnTOjJ
	 kjiBP9/XUsfiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB44C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155299357.20941.6769197388130750753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c8d23cbbcfec42ca4e45b24be4bbb9165a28186e2e7753c8b9b4229bb266e22
Date: Thu, 03 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751552993
