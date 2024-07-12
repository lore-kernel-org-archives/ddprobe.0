Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1732E3E5
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720775243; cv=none; b=MJ//yflbrhmfSVsvpGJ7YNOFn3B9YbIWs8c7x9Gef+QtgwmWRTfhRzk3hVHCwAqQHhMjES/m+VgZWi4XJ6CJOT6XXI4o2/PKo5EkCd2cKdH9b8sLlcX/YyadoHfq6Rbd9o/TETzA8jUNuSK1ndiOtrEG/gZu1tZyC9OJ2dtf4/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720775243; c=relaxed/simple;
	bh=NtmSwmlL6q5HIqASGHtqyEtD/wIMvHpwdeNc2uL6pbc=;
	h=To:Subject:From:Message-Id:Date; b=V3RMQtweZ+IlfDxAb+YfpQGcnuMu5bMbVg8mpuwZjKjV+Ahj9sdkDDAstpM+rZtD0zzQQHxnAd+ZHJXbBm3dCu3Ytln+tMNSVaGYGoBBbIhPfecHkaZKhJfYncwMrUAX0Gt9TacqIUypWv6y6NFsEG4sucCmQkNTYEkdju3IoOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOG8rNFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOG8rNFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E69B6C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720775242;
	bh=NtmSwmlL6q5HIqASGHtqyEtD/wIMvHpwdeNc2uL6pbc=;
	h=To:Subject:From:Date:From;
	b=mOG8rNFtselZ1kMqofLZkic3RRbGL8+/rHckmG22hlkNtMkbPD5Nyo1TwxDbqYcuv
	 orwnPNaJYrZVutkuEPWIOPvXUGAuGTngZm2MrpZIiXkeSvAKeumcEFObRQQ6ZAPcrn
	 7+wauUTnXXXe+RwLGcrPgWNCI4b5rjiqsWgJ93dhI1NW7b3P2ZKPjwuCaqLW6pCjL6
	 zr4Ptcl++7sfZ4TuaJWMJprsNonmVOEL755yj1POTBJbA8/Ky1zE0WYZfZYbg94/M+
	 cEIDiqq6RSJpbLFOGprXBWimY+QhNw/Cpn2ygWR12bIuOP4AzgR2QVNaRFb/3+He8I
	 8W469gH8kAGgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C9BC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 09:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172077524284.31227.11726821390390679239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ba5c03d40ad3f7a0caeb022af766557a52aa0f4f5ff7e743c9a7ff54df3f178
Date: Fri, 12 Jul 2024 09:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720775242
