Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58166156241
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719575063; cv=none; b=FC9WB3VWRHg9EcZWIh7YszNxPaid5RbAd3EwWGCIynssJLj8kuHBXtdWxE8Af3GfUZu4582HHOnr0uks2RRkUFTQPt6SZLx/egmyCd/vvIP0UQXCyKsbpl9dblCqY+MHFtXiXvkQzQuSMJ/N7q0XaEgy1k6pyX4BF5Ih9+osswk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719575063; c=relaxed/simple;
	bh=tWfjHLtBxhCHBQDwa2Pgk5UNa4GDJ1E7jiZ8CIpKz3g=;
	h=To:Subject:From:Message-Id:Date; b=ZQknS6uuQWoya8EPpZH9dU83hO1PFJicbufIs2ai1kV0nM4eo+s6Yg4xGga1TjsMHnJ51TjKXpbUiJbemnJvK/3CBmTRwpW6VN3RAAD/rTtw23h1XOBLFgauMkXMFoAru+1XIo3mAKB/ziVxsiqlNY7bwC6BpAnQJI6xi1VLMU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk3/SGdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk3/SGdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5899C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719575062;
	bh=tWfjHLtBxhCHBQDwa2Pgk5UNa4GDJ1E7jiZ8CIpKz3g=;
	h=To:Subject:From:Date:From;
	b=Zk3/SGdmCEGMFQJEnl/j2fqnIub9JYvM7Z10oKltz5r/fqpCk3+HVwRy4dgXPFN3m
	 8za+xgxtbNVO97m7B64v4xHUk+32BiZa8DEhOYSmW49ftaVXeJwUqEReh8YgrEN7IB
	 qyrpP+dXPLq2wEFc/gojlKxuAyDKXG7K3twReHh0U9eA0Vo2F2uaL4kIcylv5gJNU4
	 /O+uPIvt5+KbsdDUWkIORQx7+Ji7Kvu/Qx3mCltCrN3LSfsn6S/dsHjKYakZho9O6e
	 vBmc0h6yLXZBIpO/4FhriF+sLfzejq4967U3T//uTxRWjoWPheg9WM9HYvbQuZVE4l
	 vdhsQoYRnW5kQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF934C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957506277.3041.11245557205755230234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73180660a588c11d7ee02ac4ff71c030388c7dbe50b8235ffa08e827def63173
Date: Fri, 28 Jun 2024 11:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719575062
