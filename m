Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A1A71339A4
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745170195; cv=none; b=T9Cq6caYr+hFY5K8M8o2QY7k3WopH7ALegCsXN18OGr+0GSD3LNsqsnSPZFcyFmxkhLZhe+l0cjMJfJg0dyqzPOjPOOUqL+ihvD7Sjz24ls9fTqroRoYbmqI1sUFh6WwQrrqVsHJhg9Gg9zLv2C9kiln+GhUcDo80jKV+3jCj2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745170195; c=relaxed/simple;
	bh=xEvyX87M6RLrEByJOj6Ej65Zb/cuxWToWfod4qXC9c8=;
	h=To:Subject:From:Message-Id:Date; b=ci5setqw+PanZ3QUIyI7tZmtkVhRKiWju+eIz0b/gv5kvoBtK+NjBZyu3vZZk+7OJ+Qj3SVBXRU5RIyuAmm2VhIj2sWy31oRlHRTKd9ClPtGGThQTw+X69/tarJ88pLXxojRXOuFs9xlMW1A/+Go65ih0iu8981nuHIy0vtqnHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7fLJJ2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7fLJJ2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13FBC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745170193;
	bh=xEvyX87M6RLrEByJOj6Ej65Zb/cuxWToWfod4qXC9c8=;
	h=To:Subject:From:Date:From;
	b=i7fLJJ2ekbRlsCE8+XVsbdJ1igsdM6kge4c9MN2i6FD7WUgnRNLKbOdEhEz72lZRb
	 OTfCe6C38/DQEEOUgGjfYV17LIvzz/yUIJP6Zr2Ds4SvRDLU8efEwU2SqfPbQtjXFQ
	 KuWyV9fN3/nnvCaWUDURQVzr/rdM+pGFijFr768wOVJdqQO89ojzl8wujtOAp5R+Lj
	 DAbw4GTAWih7x8ePRrTbJpIWHNaLV10NUdJgQV02Xyu4oZ1NCdG3SSEBZ0pW33wY9G
	 JELYiXr25SpGOo5A8JtwRK94pnJxokp/YfnX8Bye0kTzFOiJvK/H5huH1DqUZCOnfP
	 3e/prtMYkclrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8E7C369D1
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174517019362.9526.6664321666633690513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc022bd3064b21a1c80cfa06133d2b6501c0312625ccf0b8ddebc6a11a1d54d
Date: Sun, 20 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745170193
