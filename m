Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 337571FAC23
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745752795; cv=none; b=Lrp9I9F1MSCwjQ4/DqmHNDDtd7Iq02A+qdFlUkCPAhzS3nUyb7Gktvwu5aYk6+fsCS5XvYMk9x/rr+BJ/rYA04Tg7TfPxmi1pvw/87Z54owHHfOv8dG10VKHTmMdbx6kczIp9Yn8vogYvuaUHSeVgbVok3mIFd7JNcWYZG7494Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745752795; c=relaxed/simple;
	bh=9IJQ/Ykb9txHoed6aFIzVGQbjNWm1FXsKdwjGjXYNLY=;
	h=To:Subject:From:Message-Id:Date; b=t2YaJQpSM9JYIxHcRTQxKc4Fwp6SrbNvhvBkk7WzjJU0iUm73Teltt9t4iAQeaBuv6A3Xq55QLwmjYbAPvDHDXUGolfleNNiefq7FtDvCArgne41wWXnBg2XlvCXgBVZVRQ6YjGKuYDnq9A1BaDBxyPsN3T5zLrqv74ZKefgMXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unXnjFNz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unXnjFNz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1CEC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745752793;
	bh=9IJQ/Ykb9txHoed6aFIzVGQbjNWm1FXsKdwjGjXYNLY=;
	h=To:Subject:From:Date:From;
	b=unXnjFNzDTAphKLQUEIzffBugPYlOjbbSOe44H6CFJ3NeY1h+ANd1GA+J0pyBJNMW
	 BuHON1Ug2QoH2eIUyXb0nW/7UQCREmIVdv5e5o4J3fajpuTA2yzkCMRU8UHvinMbtg
	 Jun0zK77WMfIsiZPufUoTn317SJs8rapEBa7bJcZcKjfRbE8BgoxnvBCNMdZ7UhdFu
	 sUEqmdVgLSSlxzRM7yET0s3fr+xTDZv79PHTzECylNxEHg+C+P6JKRoj1BIyV7uqFF
	 wKnX+huot57fzfswm29AdtzqGc1RLfGaisQoBaDpH9o4Md8YRnR3Ye2g61ADX4STtM
	 bPfGPCyTLNoig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A2C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575279359.28891.3233018524527771606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 464a1987baf9ba7cdb75daea619707d0a320e1c269cb3bc6148c4981f37777f3
Date: Sun, 27 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745752793
