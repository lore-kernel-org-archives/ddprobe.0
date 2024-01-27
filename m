Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1074436
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 02:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706323697; cv=none; b=f+RbCMgT1w+jeYIJtJuZEROrEa7D22VFuITC8eHVgCsQTbLWkNVLiRhNqNWwA9MS1O+4rP5cIiSq6EoH6PwsBpxMa+EG0GwDm3Z3aePN1FyQHLs5YwN2H/gI9TAwPGI52Sn+MgvZAzWd169VLbyLkLRWH6uMpq1idCMGWuqrzKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706323697; c=relaxed/simple;
	bh=+7+Qq3hhq1X7aDhw9Xa9OFuU7Iyt7MEwQ6RfBvXjZY8=;
	h=To:Subject:From:Message-Id:Date; b=fEB1WqSALggWw7Ti4O2ku8EB8C3uszdQHKXuCLjC/tgU6upYL3bdfFPwETteZ0KPEfwD9zPYWnR3+xTvwis1zTiHSCVF/rmTBZKgPZ0HiA0WW85fBMeP/gkKc0YTdpuVTSGGn09YJx7KdvPUE9aO0psVTSQh/Y3PvvITmCEASy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqblJ+yB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqblJ+yB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DA16C43390
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 02:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706323696;
	bh=+7+Qq3hhq1X7aDhw9Xa9OFuU7Iyt7MEwQ6RfBvXjZY8=;
	h=To:Subject:From:Date:From;
	b=BqblJ+yBb9zCc0tdDjtCxRzHmlSN58+Q8O2AvblkLO8z04hR7vABHYG0HAldNgKq/
	 jKGnqEsIpmeq684mmwNR1aDAzrQNu+SNWaag/GZu1n7wky4O0+tJ5bksN+F69egCVF
	 NAirDYnOWpph5GWLwmDzU4aneOL58Bgo3LPKl5maMbYPLVeoRXl/gcfbPOZ6K1by7A
	 6R71KxQtlgNOKSLGBHlYRVd0DmM/Qkrmf8M8hQGgyZdw4DicThGDzrWNmRtlqnyfeA
	 2hQJLkUfMVX2KyfbMWLFsnWMakQw5q2xV4u7Ryu0twaW4BwQXYZ7/1AFAelkHUsO7E
	 qlf8eKhoYrSnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63B4BC47422
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 02:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170632369637.32194.17888538694362794723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4308d1cfdbd62d842c8806c7b1762976cb7540581097150c3d814059f140d7d3
Date: Sat, 27 Jan 2024 02:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706323696
