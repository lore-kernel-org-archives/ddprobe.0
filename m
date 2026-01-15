Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11A71C5D57
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768450434; cv=none; b=N0s1m229fSSlYEO52V3+lkzVrQO5vSmfZ3IZUwHw1N1MZSsc8WHBpywM0YU85O4P52FAd9/Qu7fHXBWgk8RiQu6yrkCVi0BlnoKA3AADQc5ueGPIdB6tDYfZ61pZ+GYshtCbXWLUFQCpbpIdqAG+SUsY70X//461fnFzrBJnXzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768450434; c=relaxed/simple;
	bh=qScopWGrQ3JUyVX2K7fjqlfyr6xkqlMq0UQhssdX9Nc=;
	h=To:Subject:From:Message-Id:Date; b=s0M+7PlfQG+z+srDM5JqMg0ayoI5RXoKUvVu3kVhY7Ivo1vtelzizio4P01ToXS0K0WZzzHdYr5zWuT1/sMmU3mRgrENm6uldsSmaaaSdr5sMumqWdl2IoHns1RvzctLLuVZxWsGciHx2HzqxLjYSQng+/KbfFKurziK3u04KgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gt5ixT2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gt5ixT2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBD4C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768450433;
	bh=qScopWGrQ3JUyVX2K7fjqlfyr6xkqlMq0UQhssdX9Nc=;
	h=To:Subject:From:Date:From;
	b=gt5ixT2xbzZItkXzdpYgOZEgXCG73EIPDsepv+IlSrMzAidGsSd19ozSHxalv9Jyk
	 OUdonzv0DL2k1a8Akl5KZIb17hyua7XSAbpDAr9lAF3Fe/DPJreKMABOUW/yog2A+/
	 KKpsNd941/T8qoxYtzezYguTz0ZY7rSByRJ3QZ3yBmv+qwDi42CbchbZyhtsI+HbqX
	 uCNVKgki6ZAORwdpL5zZutKM2yko7hgLiLR/GhH2ojhbc63dpHyt4KKkPBYv72iW0U
	 nsMIGSaa0FFxYo+XiriIiG8vXjgiosZ6tkIxXuGNyZywyJcNDYTE208yNoBsqR6e0X
	 AGeysxF1dcnHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECE9D3CCA3
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176845043357.31359.5345299484354689129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a0a71828659cba2cddf85531054efba41249e562fcfbfea05a04cb6d9777c28
Date: Thu, 15 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768450433
