Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013DC839EE
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709803097; cv=none; b=kURa/Ch5t01n4yHI8RlulyzYUrx4cEpmGKoo/Gagt6eABDwcY+EKclMvN+qfhFWISx3XMATm0hlyOPY9K2lCBRGGXAeMsaqXf9tjApQNtkLFh103NGCyZV5BBKzJq8fV6sM23mCClZxtvErkRLFaaNA/ehNnYAgLr38wxsY/xhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709803097; c=relaxed/simple;
	bh=VpNjEyL9NxgIWnlGUT70Mon73YFBjXtm1MY7fa26NpI=;
	h=To:Subject:From:Message-Id:Date; b=OBfRJmzI+A6dhvLDUzJZdizRhO5pEPgo9ZRy6qerADy/P3fbzhKun7RoeM4+Oqmar4a6e2VwGLsDt6TQ4b6nSDTEdlWefhT6j6xfQG2DANiJFuyVAFRRYwXmkN7/5yj6wRNrHx6E40JNIbTTr6A5/XaEVOL6XKopUcMl0lBbbS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o9T1gj0B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o9T1gj0B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 829E3C43390
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709803096;
	bh=VpNjEyL9NxgIWnlGUT70Mon73YFBjXtm1MY7fa26NpI=;
	h=To:Subject:From:Date:From;
	b=o9T1gj0BFomry5xpO/fszLuZx4IPjViQG0hfTlo+/jEcKd0OnHv6UC3s2UNGSWt78
	 4lu2B4qxTLuOwBARIyOvdgWVLX2PBwdYArq1ClcmbO6qkTUsljxGgMPmhq2uOuQ7CU
	 7J6lJU0hPOQXRTQ3+79ERjcbYwtBT9Uq8TykDnZLPu4pdTGDj8Lu5DXAOOiQHzG2D+
	 Rj8qRvcyDX1Zg3RdUDdF91+gE4Z9BpfBXRFV0gqBHt+zkIXPa+LO2qFqvEjUnhrk+X
	 Pp5ohVts+V3GqPYuA6UbHIVl8mMX51Iv6t2QbH2zDRmXGH4/Ya8SLs10Rec4qnAEmp
	 t03iYdm5OfNeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69005C54E55
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170980309642.9427.13034368169953233134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edbda1d553113913f2df5d857c80b8974343311c54aa9c37d8eaf2fc6fa0c8f4
Date: Thu, 07 Mar 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709803096
