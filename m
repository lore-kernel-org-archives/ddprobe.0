Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248BF10F2
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733999755; cv=none; b=IjEt14r3+b0exDA7ANOI17Vdg3RURt7vPg45jC8Gh/4ZhUWfGg3V+C2ElQTIHbNHx/0Hk1s9ZJDAtOOaVNXMrBsLOeVdlXnjsOzGZtFHPAMnXOacIhQNIVLF7gWFDdF6kMkraycsfTQk09lMz07fIgE78k0FrqH17yrDg5LbZgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733999755; c=relaxed/simple;
	bh=/xvGA5Fnv/gZvkUhZ202f+mEfrrKwY2BmEBS9/pz7ns=;
	h=To:Subject:From:Message-Id:Date; b=qj3cTFPeBtLBQTmLACiOcv0T12OdMA/h+pYXe41ILskyawsGW1GSezFQUKomdbyY4InGyq8MEOVBn/wrmOHyvsVPlWESUWThVNN386q6Fvohs5jZ4gjLaAE4ZVmaw/jlX/23u2fBEXqMeq7jgWunP/uB70Ozj81iqgCdzrTbqc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxlKCST0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KxlKCST0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDC3C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733999753;
	bh=/xvGA5Fnv/gZvkUhZ202f+mEfrrKwY2BmEBS9/pz7ns=;
	h=To:Subject:From:Date:From;
	b=KxlKCST04QLHQnYM9kOjHtX9LtUGoy2pIivOFfix+UZF5qmTkSegK1Kjh4o504BIX
	 TSz/BXESLTag30JO/h17TtX3RTaSRz/5G2mivgrDkOd1yLhdmv9njBIf1a06eh6mqe
	 2F8DigW12Z0FTyLexqxo4v35WPrwUeTPVeyGGdBbXePdFOfvwnPsGGBGa5+jTa0gZD
	 9/Ngs1c/THdGwxmETepaGKEJfklOPDlZgmFwn6MnXGrbPkOJlMn5sXWR53qvKCZDkM
	 kbDjICLj33XgeQ9U5gEgc2WGp6/0rBP+xei5Wjw94JB1GsD6t0wklhvV2E+tiFbwz5
	 x3iqMVz6Nh/vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95421E7717F
	for <ddprobe@lists.linux.dev>; Thu, 12 Dec 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173399975360.32166.3749634873883420647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d4f9350a492891d4378b2ce541de1cd5af47fa29726c67313fcb2bb54262e8
Date: Thu, 12 Dec 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733999753
