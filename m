Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184371C84B9
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749808195; cv=none; b=gQ9yiXDLnn2D9Qn5fMbwGI2fgxeMyDuPPHUwOZHzGxhos4Vv3BZriaEhQFQcLnpHl4wSu85DEaAiE9HYUOMzFMN7Bi/jauxp9513SFjWPdJSe0u2TlcefO3b9mCKVQIYYs09ald2SeN1GpTjJnPWQpm/yb7Fo7YKH9rdPSCrCB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749808195; c=relaxed/simple;
	bh=Hl4QwRWhMkBks31Htfq95Omg8t37SbT5QLcrhnahI7I=;
	h=To:Subject:From:Message-Id:Date; b=MgAlyNxMmH9cuSMXqNeFBUrPYr5L8nyeyxqpxfRp1j5/0uZDhkl6agiTFUC+GfMkvTWoU4uLRyzkPL0ZjPltzoizWgILoxYSKv291BXFhYfi1Q3qkBQ1LNi3AGING22vbDPqLAi7ClXWZilJu647eEjVx2nYl8p2V5YDwNUkLJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dp7tOWIw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dp7tOWIw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CC8CC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749808193;
	bh=Hl4QwRWhMkBks31Htfq95Omg8t37SbT5QLcrhnahI7I=;
	h=To:Subject:From:Date:From;
	b=dp7tOWIw421sm9FW58ieFEJwqD766E1GHq6dqhdPjwnQeEjg0PqiIHciSxQ+p4+Xx
	 Y8XPQ18YqgcppUO07ysSpivUxdnpp2az2vHA5olHcLLzMnyYsmOE+WS69fU4uGYWda
	 YSmz3PwLaDKg91KJSzKYeUH2ITXMQQghkrf+GM3UkOnbD0AxF8UPVBBUqFeJLc589H
	 BwZ8xMhVHZqNgAvegbX6b57bXPpwH/3FTw5/FI6Zap1e5VIRgoNJzt8p8Er4wj+pn6
	 Ff8zv27NvHGboey0N6406wZznpYb4sZSngLIoikEGWWp/Udh9e+7DyRWajmyEHGOtS
	 6PuIzhypZyd3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED7FC61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174980819357.9531.13720110938766037379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74441ee94dc75c944d53ee38c62b78cf040bb0e47cb958ff1fdf1f5ccddb8750
Date: Fri, 13 Jun 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749808193
