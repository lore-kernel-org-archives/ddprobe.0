Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CCF29DB77
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755223195; cv=none; b=olReNiTR7ng0wN5RJQq/QQaoSse4yAe45G7sUHPisXsiu9BL/ex9uzZ4O+tjozAsjM7feNN9lHy2m5PsR7S2yrfNxHwP/YPrqIJ7eVjE89w90tCPBHs0JFAVqY+rpQBeXVX7sxfHGPxpjk+dHdomMYspe/0GtRe5keBCvByyO/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755223195; c=relaxed/simple;
	bh=3C/gnSiEJi7/JPJo1Ts/nE8cU4I1Xx/n525FBaULJ+g=;
	h=To:Subject:From:Message-Id:Date; b=izRl7G+9ljoeHk6Yn/EbQ90/ISBDWzFc6M+5I/DEGnAeX9qepXZcI2gLZ+h6EiT5oAtrn02oj8O74PFWs7gsm0H7co8VtWAKapHRGI8GmVAQDFRDZ4tqiQzBT2FYXGViCOQjxGI8T9sxkzrqksQ7R/78d4SEangciheC9ZsaEKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EIlvpjRM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EIlvpjRM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B6EC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755223193;
	bh=3C/gnSiEJi7/JPJo1Ts/nE8cU4I1Xx/n525FBaULJ+g=;
	h=To:Subject:From:Date:From;
	b=EIlvpjRMlLUmaty2GpqahMm2sB8dp3B3JRegG8fgxYeUzpuRoVr/jBqO0EI/KeOk4
	 e0iTT8jjafE6xpFpWpzQsqkDa/LF3qkYYZnfiqP4xMpM/GUlGD3sG+FF8G4cxGWTMb
	 gmkOYbbalNwfvW6PK1gVWShsFWCoeLtH//wCPdWzCe04YlZFWnSOsR3OySLlB5qdTP
	 33PXNoxTa1bv3a8m2ptRI0TlmlXdg1itWuEuI8C6SK7sPmYnF0IEZtS79XTySc+T6d
	 skjuXty7wx1Kpbcd0CxUuo4Wb/Hu8sbLOx6I1wdbWS7JvcFGW8GjIc8yP6uZRsC5cq
	 wXOHO7PME5YVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004ECA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522319358.7845.7588411594800749091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e5b5570a3f79281d8482353603431980778dbd9e8a24a12b3774504bbe3bd68
Date: Fri, 15 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755223193
