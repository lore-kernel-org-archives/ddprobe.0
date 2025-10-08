Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3150229DB61
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759946994; cv=none; b=j3D242vNHadxD0PgxdJi+iIx/YfZ23A92fQRJeaeedw+9VVzhe4vp4ZKhwa+ytcm7nzs3lgwoCV8Lul/NwjZhIfTcW5UfEyucGmlVt451GgMn+Yrk/127DPYN+yr7x8/Q8fUzWfqWqI/oM73ukJuWz8/dOQzaz8KWhoYdvimMqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759946994; c=relaxed/simple;
	bh=UD+mg18wJ/+Ec3YQqDdthHD4rld+C2HP15FXo9JJZ+k=;
	h=To:Subject:From:Message-Id:Date; b=ixRHzUcCPC9F1p5E59+hHSIzradvaDn0T1ePWSTgBydROHBxmeoJ/p/53NQ5mS5f3DCcYOGZVCi0UzzUkSuPmBCjzFXbiur6wyN+EQITIoNHY1pNvNRzpr0anEbBimMUYQfMCZuU3XJNyutgIhuYenOAZ6SfL6y4kApbPlKGp4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l47DhVVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l47DhVVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60BDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759946993;
	bh=UD+mg18wJ/+Ec3YQqDdthHD4rld+C2HP15FXo9JJZ+k=;
	h=To:Subject:From:Date:From;
	b=l47DhVVbaRfMtJSlxTaIpyUkV0Zu7NdJB/dDCz3xZJ9kWpESSLKRepFauGXHUpGsP
	 9IOpchVEL3cC3FNjhVnL8e/r1Gb+4qJCoo2ZUXCNRLYNiVD8N6Kyiy4HW7NYNXpvto
	 5AYWSu2md3eLjNIOHeLWOwj9GMHx7A+C5wMnb6BV0YxNXQup7uUj9cDF0utoXAo03P
	 JL7YQlkyT0p3kf+F/K/XEHt7axmf0A70eHSS0CsiJ2K+OxtFnwEswk2xtqBz/7wEww
	 yMcSuPB3fhqLb1NdjUvQCdYhYdHTyQ5xEfneGe6+UFFmyFj68AfZi4OVZIlHihd9IB
	 RXtq00MBWy6ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FECCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994699358.27659.13235554614722471367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abb18b81ad9b55ddf646d9352ce3ed0f76f81bbb245eddbed6bb31833859d0c6
Date: Wed, 08 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759946993
