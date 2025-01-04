Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B2754409
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736027754; cv=none; b=Nu5IuNpZhpsTXD0JyjKuYpR1DZx0yO3NVKQKNA1ogZCu4kQxGTJEK1pJrtvZ/1iUwF2kw1XbG3jhD3QFb1d9+CdmknGtozEs9ac842yIEjaHoiNy8bjeby7fFsG2+W+aenUCjJ32hnXaidI+liB+PEgvMuzrZukBW5q7DcxsbzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736027754; c=relaxed/simple;
	bh=ksSEz8wFbnspPSYp+GtLNg3AsprCl23QXPmK2kw/sF4=;
	h=To:Subject:From:Message-Id:Date; b=u09BJ9Bezn4e7GygvWM0jxY+2cQDtXsr4CIyfDEs4aHHbd8Qir0oIHqD6EIZ7ZLl6XsSMv73CYL8euZMO1iXQKvRZ7dHubXKCZToNHo2oJnw2ZvdO8I/jbwgsRxHz8fmOwa8z7OANahbF2Lr/GeaS6OLrN1RXTsMv5dkk3wXwSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=awPsuB1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="awPsuB1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A491BC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736027753;
	bh=ksSEz8wFbnspPSYp+GtLNg3AsprCl23QXPmK2kw/sF4=;
	h=To:Subject:From:Date:From;
	b=awPsuB1nvJtsNasOnA22gATEZEGjiXDw7fQphljlQqdkA9ushL5x6LD+E9Xw8tRvj
	 yRmPyvAisEvX+ybkvLPei2TGWkw6Uqh2kNIDsGdzDQNo3oc3dDD+3b4hvn15VXvtbu
	 on3pWOmp1EwZ8UsJ/Wpr8Qjjur0XAVuPmM75XwLBvyiDDBjeRS4l01S0r1UR6olt8N
	 Jd6ogxAQL9CwVR6raWeHu+wtpK+B6oWpXJoVfGD6khcZ3K2BqODJUuOb2/3tje3gCr
	 Yla0TJJvRbvYEt5iRTebvB81iPuNCRed0mD//9dqWcqo0knrYTNtPi+GLpssiqR0Ik
	 4aIiR2ueZ6uAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBA4E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173602775358.12492.113893084601274832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3764e770ba3fb35b4e0c60dfa876c4c9914a1cc34f68654fb389f8a5116db563
Date: Sat, 04 Jan 2025 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736027753
