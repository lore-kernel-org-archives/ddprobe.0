Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBBC342C94
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763735513; cv=none; b=ESRvt+/ewiUARdri1SrbGWKE8/Cbpp2qh8o8zHaPKerN4pXW1xlPrScPWizohzjet03RICM0LhjzxtpgNfTA0j7xohJcmdBw4Bn3tOjP6SSpg8oNXzDGHgUi9EmIq20dsBDinVINifncb6jUb9w23bsdSq3AkKaNUaYczRNeC58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763735513; c=relaxed/simple;
	bh=A87oXFJLH2yffZx2BQW4+f9lXAxWPAaL5jzvecZajp4=;
	h=To:Subject:From:Message-Id:Date; b=Z0XvUNDFNpHOUjfjJkfkFIqlz2v/af7gB0rYLcmOXCylC6j0W8qKa33GbXNH0lzcHEbULV2CaRsJjU92Qqgeb8PUEmCIN4t1aVUR/cEo1UzIHUySLklqdwkQsVaLFyxDvpMIGp2k6vnu5qCFtuMc10p12IUjjaRU0qDDAC7jUt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQ4n9mt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQ4n9mt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3FFC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763735513;
	bh=A87oXFJLH2yffZx2BQW4+f9lXAxWPAaL5jzvecZajp4=;
	h=To:Subject:From:Date:From;
	b=AQ4n9mt+qIuf486wb/M+mdz5CHYKWYjZT1bOvoQ/93dqJh2k577DWT7bjaGLrDkUJ
	 O20ugnRhasOovbSZFBctbwhzX78VNkOHjXTrUBwGVm4HGHru4Ut2t0favzwW4tDJFb
	 +WrmSFbktDAwn3rey2kyBIzy/KYvI40vYmpm20sJt55VhE4LPj5SYPmhyZDRbff16v
	 SZhUqy6HBzvRJQUlq4RemRryCzpJFNxW70fqbeGQrhCj5eq1kc6JHzA8/zJ7XqwIcG
	 gqheaZ5mJ/Rw1X0k0DzfL6Af2mb8OekwLUxKL/87r8csHuHCvPikpgOXLQaYsAX9zt
	 d+tL4B6ABEIyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909A9CFA47C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 14:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176373551358.28775.9599389308535930866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5860f58a8adbf782a08f4d28e7546a30b6733e0e732deaebb7166fa9a96dcf93
Date: Fri, 21 Nov 2025 14:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763735513
