Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DC7364E87
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:57:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775851054; cv=none; b=jUeEex51+Ib1e+RFxtEUPj6NPwaqjFtKNlsOjkihH2vOUJl2KGd9tXl4Jch9xj6OrYUR0xg9zrNjS/4jSIZVX3Ed4v/OEc3JeTtgihZmPTJiXO9x8Yc7cbbbz7nGxxecWrBVxXGDXges4IzHdlFywbds6c2JiSmlllvsxA7p/lQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775851054; c=relaxed/simple;
	bh=aHmTdQ8CFeSI6Vl0b0U/jm5FWyTpRXy02vWzM3hyy3E=;
	h=To:Subject:From:Message-Id:Date; b=XRlvPNnsBYtMLgisf16D+sOHXqm8di6FVNkWrtKYWoHofFjrQ7hvdxa2bvf6jzli7mK7u/O4npPvr1Fr7MTJzfphDtG7Sgu4aB9lKZuV8CUXx6qEWXRXW7xuKCYqU7v+XWXeNpMQP7pJQwe2OzMtdeVquNKEdd/Nm9pmTqJc8Sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkQTDgWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkQTDgWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C1BCC19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:57:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775851054;
	bh=aHmTdQ8CFeSI6Vl0b0U/jm5FWyTpRXy02vWzM3hyy3E=;
	h=To:Subject:From:Date:From;
	b=QkQTDgWSfu4Tslay44AaO4i6R60zTohbxcWHCAMq0YSRKg/SJMsU9TQ4GCHt+mC4m
	 krCzIufKsNvBly2y2f17BxWcUun8qgZfR7VlsSSvE16Zrb93/jruJ8N4pwexh3qYv/
	 CKQOkJJN+HbVrdMSzbohqUSmUNw+lKV+N+OYaFKyUOKbXbv1Bkpydj6dtxxgLCm7MA
	 uoN1YnLsiNrEYi17QZE+lS7xttVXp4xsXEeBIo2bgTWAVQ7FYsaCwUemsSIv7uSgQa
	 4tR4+9K3Y+nQ1uVSf4kLIxZAJWRrzcAoDRtR9728Z9UbB3nKv/FLBSCZgqUD6vTOia
	 EQQLaA1DDaM5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C75A9F45A0C
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 19:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585105380.12426.6211366638463826752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd99b28fcbe391a6cec09e1c116522dbb6723c9a757cb879d45f07c90e48f2ea
Date: Fri, 10 Apr 2026 19:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775851053
