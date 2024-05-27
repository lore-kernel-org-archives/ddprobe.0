Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5747713B2A4
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 12:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716813263; cv=none; b=iHtr9upFEk9xlVa2fw0XqV50hln8zF3yLWjpTxPcTZpMXflm1zveEEEYRo+btIVvd3Wi3meLbO3AYkjEeA8ECa3cZt9hF+aMR+XYjNHe7S3jhY01D06xQWu05F7vSdcupH+4Gj4SSiuVQYvcJYBVe/4ZS72z5T3c4EUhQ5de1x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716813263; c=relaxed/simple;
	bh=K2L3nzA7VsokJAjIldwty82/QpExSxgfJQO9o0Acc6Q=;
	h=To:Subject:From:Message-Id:Date; b=RMNEZoLvTYbiyIShudeEP9/25h5BOqio0LConAC++VifrxWrkhG6jdkIag+LmhdoQG045r83KAF58a+ZXT2QTix9NcVyCVxx/RYmUSzbp4Mnuwxh5pOMSN8td3OrCG80stse4cYmS9UWI++sTzizWZkulpyUPATtr9bAIja4sPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IFlQQAFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IFlQQAFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB96AC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 12:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716813262;
	bh=K2L3nzA7VsokJAjIldwty82/QpExSxgfJQO9o0Acc6Q=;
	h=To:Subject:From:Date:From;
	b=IFlQQAFlEjwDc73pRvP4D6Hpn5+cRoNkvoYCCnEIs3ucIfYXtocsl7KdG93wVmYeT
	 8CsnTyHxFt/+uDJ/852ctdtFfZZ6wSXTx/Vd/TfYwScSueRT1ZxIKefoSQI5LGPul7
	 ziEYu5pOgU048qliVI26rp48gHv7CC8rP9HzOSLulLuZ4lIvGVY4VhvZ9lMBHylTXp
	 E2qBhI5NGtExEsQlbpqQCCg7nV9sRjWARf3EkV8IdxQ2mT5wNK6VTsN5bPqt3rX6vp
	 h68GbgV5XtAyRyb8EF5AQXgQluMeYNPZN5QbD1XEWlHi7pEy2uq3heKAU1UXiiIzQL
	 Wgx+zoXLDQ9zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C193DC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 12:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171681326278.31634.15003990834379390337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f015d656dc8833b9c833eb351e4095a316535df99c04fb5a112070a47960525
Date: Mon, 27 May 2024 12:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716813262
