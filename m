Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6765B50246
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720267523; cv=none; b=gsIbAi/3dHXeUUiZh1auv0FPsZfNtuAllpty8InrabhfYUb30CoxjiXQniqvIAMFoJ3RmFipCjo9Mme7bIHhUJ0d+pLCwQ1KLgZzPj7OIgWuKzToCFSfsc/mSSa06kpKctbOJXQ5MhTqsZSs1SGlzEQtQSGzUmpAgek1KsywGI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720267523; c=relaxed/simple;
	bh=kDT+8q3XgpiLVhG3GHcyCgUGXSYpmZMi/muNywZHU9c=;
	h=To:Subject:From:Message-Id:Date; b=MbMYKqaoY1JvW5Kj8gJ4ksWsS+S2xKWEdQh/Ug+snwZockj0A9HoW9qBmX6U+TVS5JsGvBo61w97DqSK0kk9D9WPkXVCcP1fRp26TtKVC+dxILvqgoa7y6p7oResflsRaSStQZ6TK2HqjmVf5wSWXGm6U2AMNsTPV/L+IvrWtDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hEcFieI2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hEcFieI2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3168C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720267522;
	bh=kDT+8q3XgpiLVhG3GHcyCgUGXSYpmZMi/muNywZHU9c=;
	h=To:Subject:From:Date:From;
	b=hEcFieI28cC2z4Ne0kjnb2IzENQQN7Q8y5L6Rln2QDq4dT298RSXJ0eXNdsNSDpIs
	 e+qVfk6M+aYA48n/hBRPAf9xF7Cx7oV/4KCf1n4X+PIIh0b4O6lfOygQwv8CWkPICE
	 XQdFMAe6ZAARmaMLxq/w5g2p4Kai5Sl+nfxmZtaDwmmJ5cNlRUtLmmUg//GiJYgVqU
	 DFa5FvUSqNP/eXNkRMp9E2wkqlZ1oUTlNm+lwaHvG6HEGUuyjfTHw28DHEl6wA7NHV
	 B63V6sGCFpG1uMWdIXHYBHk9MHLhfb6RW7UBu5VBUvpiQj0baOSkyGg+84kD1Oek6e
	 1IogSS/qhuQ8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF3FC38150
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 12:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172026752281.4932.9804523384409258226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4c177638a149353a872d6ff02e58a049d9f971258851d56e1d0ac13d376afc8
Date: Sat, 06 Jul 2024 12:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720267522
