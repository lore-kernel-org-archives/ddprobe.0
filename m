Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF672D838E
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777948654; cv=none; b=DMbckwADYnYg51CsHeJ/fXKrZuDqdQt3IEvAU9q2gxh80s44rUcvNfndHMyGqBZW80YHySwYQxo0eNtco6JZs0wcuWnrTH4Z1om/WIablSkOCvr6wydwWouwnniuoASyRn50vqqJJ8R4ubfUsAik9BMHabjkKHnP1aUggnMlsYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777948654; c=relaxed/simple;
	bh=BC9s/YOo2K76OYJ/aFxdWyl/Kim7VgA8KemIAlTUJqM=;
	h=To:Subject:From:Message-Id:Date; b=WKgXrV2Zw0coKqOxbyiu1LrVls/zjb330BT3OkpL0QBIaK6BrgdhlxP7Gq/RbMePlrNfCFwk0lQ1vWgDbBEsaPIHHIyETVdRWWCJYTNeH1ZAynUIKET/t71KsdN+SpWigPa3xeg3CLrYQXiFdJCTz0Jc+KdSZmrKhP1pUGLwcNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLEeGHjz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLEeGHjz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B772BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777948653;
	bh=BC9s/YOo2K76OYJ/aFxdWyl/Kim7VgA8KemIAlTUJqM=;
	h=To:Subject:From:Date:From;
	b=jLEeGHjzub8vpwus65bp+hZKiOEy2l3wWQeOrlc7nWyQRpgeoAaCF1VNq3FyMn2Dy
	 yMHlyZOiktG2N9/V0x7VlvXNCx1esepOBBvFeJqDOBgGXRJgUm1nt31DYcXBWypSB9
	 zuzTEUjxejlD1yyRFVO5f9/mX4lEvljgQyDEHs0qfeCJ5FZgSNhRkFj1EJI+IBBPLm
	 ysZMbsmp1bRlp+Fs4hUmf6q105ZodhSCgEfp+kmKgJZJ/V2DF0o5o7eYQCBStDo+iL
	 di6dqpJZEWyhD7GVo+2GilIWxRJ/e0CescMn88DCPv3EBwAGLOMqkFMa5mtusmso5A
	 6VCAplkhw3drA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BB2FF885A
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 02:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177794865368.10404.12574513677038080898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4786bf52313aa8f46e36a4b2bc65bc9e76b5056c3d3ffecc7451dfc2635e9d62
Date: Tue, 05 May 2026 02:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777948653
