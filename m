Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145A81F4CB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779747754; cv=none; b=F1Zih7/ntJbVVePWL1SgJfB08r60AKi9IwHYhs5uxuSVLf370Qc9ujUngPBZJp5352C3nzuSHYiWMjVv63H6LHI9dPmDUCaxGzSQCSpPG7d0V86/ssPs8FVp5/rOwImarhYaBK4JVvagoLiursT1IaRAPxCK7DT1gIBVNvqAiI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779747754; c=relaxed/simple;
	bh=8myTGZRYMtst0PJGrq4bWjeKJjY4zS1rh9I+iQ9Q2G4=;
	h=To:Subject:From:Message-Id:Date; b=eWL8XC8RR6oyDxIR0VHFlkdhP+GgndGStoBnai9sEHZ4eW6Yqx9HuSJ5KcqJEWyqkoc7jrd1LYK08yPjC3fEI3iS13v4EfXDtSUk5Ow0L+IoDNailUhLqoKSPIRHBPs5GWwjCWBqA5ThNtC4t8tgq3QZOMvPDXZNtGdEq4cuPNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrPCGBUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrPCGBUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC328C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779747753;
	bh=8myTGZRYMtst0PJGrq4bWjeKJjY4zS1rh9I+iQ9Q2G4=;
	h=To:Subject:From:Date:From;
	b=jrPCGBUHQ5dNeUUW/tMpBzXIF+T4wx1JsRQHFiHLNDjjivMO5vnS/Uc/javlwR1Yd
	 xfOvsWiE8EnUWCahNTsFl5mwzZ5sB5rb3GFLyvPJVLyw0HgY0c2JZUVmbocf259U+J
	 XGTNPjAcHCLBnckve3/eTX2C8Nl29r+N3ZjByKXOe5R5TaJDcZXUi0LjdmR2mb4r4H
	 WRWHhMzzZxyw1P1DYmz4l2J63ESh3mXBnDUcN2taiAFavnr84fbVi+yxpOHYhKEoOS
	 hUT+Yjy5KHe/3Ox6OuKp4nkoa9478g4FULDdc+sA4IWG8oEzupBQqjZ0P9bJ3gTihz
	 8GBPs5V4cfanw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1A2CD5BC8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974775368.29044.4342849957235741071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d4607a7fbda5d2289847df5ecc76d53296d3bc6b3248eb1c7710502c7ba3f1b
Date: Mon, 25 May 2026 22:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779747753
