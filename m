Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E69212564
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792180234; cv=none; b=IZo3SitV6sck+fFtvFPeeoQ6Bop9zdaBtFW3nl34A1v4d6Au+HT8US+9kXp7B5bR0eEYrfL+BySz6FcanGqtZfbo6H0BJ7iEhH/hjWkLHjxGTfgcNSs8N6jVDLrd9YNE0YoHjyqHgb0nT9euK+XpsHemzD3vH4vzReCAsHFegwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792180234; c=relaxed/simple;
	bh=5XVJ73MY4z+BCQR4XZ/Pd1zyYlphxxv7aXlWiZC+IKo=;
	h=To:Subject:From:Message-Id:Date; b=CRktYxlDfgegPg+oSumOa4wIan3za+p63PETbPPu1leYgxIDFvbnkjn7Ex1edL09kO+OjhZB9mHK5E3L7TVwXOOUZRadqsEtmPYEzb/HG+TFVeZVn1asAjJxCHM/rBFVq6/Vde1A0Ad81Sv/KqOOA0NW9bYRkV3/wXCghnsC2fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvDZ4Zc/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvDZ4Zc/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB17AC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792180233;
	bh=5XVJ73MY4z+BCQR4XZ/Pd1zyYlphxxv7aXlWiZC+IKo=;
	h=To:Subject:From:Date:From;
	b=CvDZ4Zc/UrI9Hvzp6N0sCpj8dIdkF9aV9seewedLWgDNM72/j9xWkcxUodocJ0ZZx
	 6G7FxMHoUKDCW8iYZfOwk52kOFbtJW4lRhUeTdy6urx7WWqjuCaiIHTXUahBxwSs4j
	 KcpB1JqnWSRGptiaTHZUJGT8Awrp+KZ+74qSlGdpQBCnBc6/6RkskJYql5mOtcDkvu
	 MM7BjN1DKjqG8jeKyqZQGNpr4TfvVZb5BocyHLnIv6Faj98kpgMq9vkthzfau1xhA4
	 HtB7JLLGelSJQ6ibckOUU00ZQvlZyxV+YKfd2DY1fX6coUBr6BXp8HdiJlE1euiIXn
	 PNaNB5xkDd+Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5694CCF2C4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179218023370.18528.16251778540739753070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e768b11f2ee997dd346ed417d9e63f3147d052802413766259b3e2601a3ff0d9
Date: Fri, 16 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792180233
