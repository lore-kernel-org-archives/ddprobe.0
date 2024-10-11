Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165071CF5E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728690954; cv=none; b=VgPDG9CL7h+76byX4lD0+vzO6CU8McqRC521YTWGpyNw0k682XkvWAyAXfeJlhJoeTlI0tI3eWYIQUD6n/4enml7Iap8MecQWuru5BMLHcA2F5zSogepfE60GJITTv12HXuDp0HxDw+o5iyoTeWJnvfvu20PChXMD1JkTq1UO6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728690954; c=relaxed/simple;
	bh=PZWduQG1vyTqxyhW3fKXf5EC7OqwS73VXHH+DKSZ0XA=;
	h=To:Subject:From:Message-Id:Date; b=ope4nWNoAGyAgf6+F+AuPakXZMqSylpu1nf9pHdd4W+cpyCJ/f711snxxIQdyxyMG+YlmVK+w0GUNP3beCmMzhttpmy1U745xuF8aam0XLy5hLjTbDKUb3pWCwoRZTRX6tNcOguwThObgnFy/u+va1sU7uqhjySQJdM8sEBveOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EXNoWlKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EXNoWlKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AFFC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728690953;
	bh=PZWduQG1vyTqxyhW3fKXf5EC7OqwS73VXHH+DKSZ0XA=;
	h=To:Subject:From:Date:From;
	b=EXNoWlKo75Edw41E1Wb09hAVtupdqHRjqxToTLe9Zvogg0hdztnYaWrY6Ftk0aGOt
	 nZFc5QXtm2FpBax2fv/3uxnSZFyF6PO4zHAgbDqwWKwRFJC65O6BdKqYhA2oG6aTp+
	 1vr/qMn/cHlagMDq2GsEVZONC9yD89WEdsPKc9wIpW95Gu1WvYpyUl0/pAEZhIDgkK
	 ZZxkLpTdr5SIkidfzeCbR+hmvVOahYAWUfGml3SWI5BtFgIecerzw9dpsLtuG7kY42
	 WfBUSXi00y+gAaukj2b4dgHG6RAKT5pb+Sodt0YDVG6JX0wNveotVbt6MwPXWhkthQ
	 ipkNF5zkWy8ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9728ECFD347
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172869095361.9984.5770648284460276504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a565036a67e34363c72b3485528637e5dcd6637ed9e6ec17f7c1e686c2fbd0f
Date: Fri, 11 Oct 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728690953
