Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359AC286891
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780609474; cv=none; b=kf5T4Y3qA+pcBrt4TQDEQHISNHaX+Kc61BrOFkEvA3UaoxpUvQWrrjarG3VRlRVPxj0IEFjyyUIiX7WP2ljyBU6LJhTZX2mxXIPPAt/Q385cUgiT8/3U1vlDLTBhboR2ZuhjcH0j06POxLy0pwr2MOVFEoBmnPaRbADtEJQIUNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780609474; c=relaxed/simple;
	bh=zeiQwmEKUdy9XNo/IZOrshg+ghlQgDYLkhjosQQ1JqI=;
	h=To:Subject:From:Message-Id:Date; b=Q0o0X8RW2LaVuESZ00ZhYBLrdCvmbX9OCNQm4khauaBamitOP3A5sUqzg8fhYPoL3c15v30hUJD7sZzAsRjexeQyN//M24Y1ZkR6OJBL7jJ6EN/XAvGPzWTLxECFtR0iOjXtiOTAwXyclqoS1zsHU6CHP3ZFHt315Ux7c3XtkOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIuGRTh0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIuGRTh0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC43DC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780609473;
	bh=zeiQwmEKUdy9XNo/IZOrshg+ghlQgDYLkhjosQQ1JqI=;
	h=To:Subject:From:Date:From;
	b=pIuGRTh0yhEwb47C1lZM6RaF5gtf5ehbiY727g+l6KV6WqaS6ZHzuXGpFyjMEQVTi
	 U/c4B1yw+7HW+4J8Oo7q3n4zJGVGrcyNBFjRIQ8he3JjG/3K9deubKX/2Z8YZ+YsRo
	 u+nV8Yd8W9Gws8lQD0uN5qyO6tK+KudbWaDVP92anrzL1UjeeOGjAUMSMqi+f59Bgr
	 XmSkSIGxUtU8it8zvSxjI7Mmt6/bycywzxkqv5YX1/01cIKI11qxVKAMWNxruXdzZU
	 jq+F7jX/H/n64Li/DKbxtV0sJ6QO9gZX07Wk1NEMiBGBUI6hvYqKyy9V0pe4y8cRVn
	 Pl3W2L1V7v0YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0A8FCD6E6E
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 21:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178060947371.31453.12505105954892825436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 119378ee384e88b736bd901e745aa13736019efb174ac4930c7e3f1712cd5a68
Date: Thu, 04 Jun 2026 21:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780609473
