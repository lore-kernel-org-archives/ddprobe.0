Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED85EAC7
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749440394; cv=none; b=EQNauerWd9/UW9hUiofvYxSuI5jVy9zQch5XeF2GKE37pEaHGJmX8q5/rzrK9oYARo9VxI/3rDBsWERT3+mRwGj/02eoPxMRyXsTNI+cDzCCA84Oj479OYoRZjpp6FJvD2zhq24DliWQzoYxxdTkPBYPcYI0rNlzuB/V8uLpB6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749440394; c=relaxed/simple;
	bh=eS6PK9SS5AmVwzcWCi8PhaFe/px/Sowc2ptWy2I+/Co=;
	h=To:Subject:From:Message-Id:Date; b=UmoWtfMfADm0HvLeGVSVmO03zeTZjbqJ0iUgcpgSOLuu+J4z4Vazbt4HrT7fy4X1RGiA5xEgjcnWvE+52z94Ycb+apD0bXXKp3rjw0kRJ7PmgbVHcfNxWeqKt/9K5FLywEzsTnvaGqG/srQissXvoHvfhK+ou00VlcNCBvTT2Nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4Wxq5FE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4Wxq5FE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A06D4C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749440393;
	bh=eS6PK9SS5AmVwzcWCi8PhaFe/px/Sowc2ptWy2I+/Co=;
	h=To:Subject:From:Date:From;
	b=Q4Wxq5FENT0/FvQEp8PcuUhT4eZk6HuijQ0HhXL4AIWf0uel23Jv332rd+5ZZnR2z
	 E1pbO0vrWveNmTkqsu6hIP9FlLQ32wj0hBv/8lFVVFlD9zwR76/k13BCnw5wx9R46T
	 PFwny9aVGgUPl7GJEE8/X8sIiTVABaRkGSaqvQ6BhNpq3YUiPS1CjuQ5UDZ26ReRM0
	 FOa6LY39kO1dvgMXGHefnXA1JyBD83P/RXwe0tW2UBrbUeVKm/Rzcaddh278lLInNN
	 h8Bdu7lm5AGI6bPSo2GUypaw+UH0qbMbqwAzhZxnwwbsi4Xrl92TJJ3qZYNjvpXbCE
	 LPxgtQ34JKzQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E143C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944039357.16431.3371312215121043536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebcf8fc218bd299e62c85b7ccb40d9c987ef7d6d930b266c49e9c2d08f1b59ea
Date: Mon, 09 Jun 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749440393
