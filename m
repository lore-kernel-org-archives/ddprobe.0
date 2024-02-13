Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA9001798F
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 08:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707811696; cv=none; b=FKB+qrD70uPyK8nB2w2ug4iDAw9JNUljmGSuqBZJYOMuKC7nnTTAYlw9SsnLSk2baO7SZJRhE+tuJm36Q4m+eGfzH9gikTELOjpnl1jMnqMeq0EGt3c2fMSrgA5Cl0WyvQRs/phyCSjzQMgnjYpL4nYwA12BmRwGad2jVS5mVKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707811696; c=relaxed/simple;
	bh=pIkfpazfxvhF6ZWt72u2n1KBJ8J0som2etO4BbrK8FM=;
	h=To:Subject:From:Message-Id:Date; b=F2g7Ya5HDSnRSPwh/aZ8/r6Y1T14nqaE1NarEanQKEid1rub0/2TgpOb16iKcuZlVm2DOUoaYc60xeDzlM13f3wjeu1Nmlz7qE2FVkVioXBvXHNEqOiimKc8qtRBIbki1fFtoJjapbUtTSlK0O0fL1+3hofpX+uepTL8D04W1+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laHLGDGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laHLGDGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F7ADC433C7
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 08:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707811696;
	bh=pIkfpazfxvhF6ZWt72u2n1KBJ8J0som2etO4BbrK8FM=;
	h=To:Subject:From:Date:From;
	b=laHLGDGdn3y1R6Viay3xlN96us30obA7mwMIYwWpB0Og/cTknGwQnJWO7L3cRu/Fn
	 g6XfkRtBhNo15j0yIOHcG95gDAqfppQc/MKVTvGcHsVdA5EfgLfWV3xop7RJB0APuB
	 nslUte7eSRA7LQVhFoMlyD2VPhEtUVM4F2OrPrLOdy47rPpBQO4TJyUftdnsVyGaYX
	 yvqIg9iqpZes3XmuQ5N6XlXQEPnxHdT8buCYhcZz7RgPEDJAMnM5Ul7KznMU5ojk6T
	 SJ1yNOQD9cwEdBVuW7WjXoXGyOecB2qh/NZID+ohiNP1Egu9ZRwILTRcW1ImJ6Z7ur
	 sciKm0XtVYxGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63098C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 08:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170781169639.11135.3849511802700942337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd41301285a716a8253446402e67107e02932098bf7b569581f579a764c22b4
Date: Tue, 13 Feb 2024 08:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707811696
