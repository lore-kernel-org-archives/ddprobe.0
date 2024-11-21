Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166F710A3E
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732211154; cv=none; b=fVvS32Fe6W+poNKkHnCYbuDYENU6eleMKPll+5TD77eVAzMeI2qkeXjDXxLM84+2wrCrTqBbJztEojnSV7YCIAFP6nJkV8nV5CdM5xNE3fxTUIOVxcJGYoVpe+Zy3hu7T5jcMSh6Uj7bCGcT05zesujflwudPfF/oHrTz0oRTZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732211154; c=relaxed/simple;
	bh=q7hgHljrrZE7oeN1KbR8an+L6opHlQQ3xFQGz5z4LoM=;
	h=To:Subject:From:Message-Id:Date; b=L3CykbJK0eKMV+JBeRWpOUAsr35qv/oUv+MA4r2PX6vnhPsFtRUV3CIghbR6k4EVE8DRCz8GHc1QhpwwC0wUJSwNbz/tc1pv7FCB2A25vy/xMHIUdjqoTKhBi5X60aHm7otTFERN1QzI+XB5RZs42ewSRUoMwRoO/gfZzhVs1D0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwAWSKkw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwAWSKkw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2250C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732211153;
	bh=q7hgHljrrZE7oeN1KbR8an+L6opHlQQ3xFQGz5z4LoM=;
	h=To:Subject:From:Date:From;
	b=KwAWSKkwRJoAJnSaJTIJka2qpYUZh88jIo/yEDmYMq6nsSop4D2wDDD7NHXDf3TeX
	 fsDf4K/o0GiZNlHlF7H8AK6rTTr+mkTVjIr6LHa4zVsyvvpmfSTWOnRYlRxkGjoI25
	 a2RYvMtF26QMSgZ3GxHjYUF9Q5cLT3iYLQxjE1qKkDYmkhx+F3WYpdEWXXdUUTDczI
	 iHd1yBhGYgK4xFN+xgAJRGq1BmclbPrPR3CBPR0H7VOPEYpOlPRjkehezaeO1Wi6FV
	 IZ+KrunO1/mf/1V0wcPLu/oKSgQay0Tpkn5wZNGXSazfosD/ZjHtlSzi+wg2m5TYWu
	 ZaYX78SYGyutA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D7AD743FD
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173221115359.27003.13289488812795935730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea4aed346756ccabffdc8ceea66556f388bba9ae02bdffad35d2f0ba1d511868
Date: Thu, 21 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732211153
