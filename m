Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB597082F
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770911094; cv=none; b=AxPYY6MqRYlK/AKWemvIKiAM6ye+OdI0ciNy1vLH5XWM/eKwhRGoKuea9xed1cAt8ITDF3197Yb0YIjVkhfuS1E6w48lvL/q5FN98Xfrj0GTvszCed//yLmp0EEkMW0ZFUMIZk/3DgZ8vr7v0lqdMBpX+8gO15rCSNe0+tv+aGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770911094; c=relaxed/simple;
	bh=oaNogtQPIQtw/ZYnR+JITWCtMlg3B1Jl7MSVHYcLJ+0=;
	h=To:Subject:From:Message-Id:Date; b=CbC5eUKlIgXfdFeSAmLqFRyO7396Dfh3Yoh7Ztk+c8a2Pk7/vTkr1Osqg/Fo1TcpBwbnUcdQ550GDnlHwjceCQzXj9zT9/uwmdwO0PdzaDXAoCnzX+r5WIYZwNnEWTnuOFKs+vZwKmK+8VK918r9PGCtdaexiY1ugcBYIH43XJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFWoVLOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFWoVLOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67ADC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770911093;
	bh=oaNogtQPIQtw/ZYnR+JITWCtMlg3B1Jl7MSVHYcLJ+0=;
	h=To:Subject:From:Date:From;
	b=aFWoVLOX3jNrCFXzgHfWiA6vGG6jMsuEFy5G8m+o6Hel/hJMy6RPoBupuxKbyKtia
	 mdvZJf+SzYpXeJYao8YStUhtN8kgeG+vE00LaWPpdgyBBPR7BO15GSIOgDZ8utOERM
	 qRN47B1u1fzRO9ZRRPSMXRpy0sEpvGBcVkxFEC3e3zZEO48LHWBfWq7TVuHnqxbYK9
	 glTT6XQS+IDW8GRS41v6KaVLXIqfuwP/mx6LlyeAylkFy89AvBRe+k9pauSa1MSVxW
	 /OfiXdyFwjUiLLlvJ2eiXqHmVPOrrobJJWCjq5i8sTWbSjfTRWu5OSR0CXfCABZoON
	 HwyFiMAd9MoBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D8DEE369B
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 15:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177091109361.9798.3868693578071867367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e108585dbc57e68a46a4fd4fac4740ee3aabf4e91831af8c30fcdce87e81a0dd
Date: Thu, 12 Feb 2026 15:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770911093
