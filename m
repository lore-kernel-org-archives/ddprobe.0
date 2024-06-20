Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05C161BB6BD
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718907624; cv=none; b=Wp3rGCknz59l9SVmZmRWTzehGSovJZWJvpf5L2UsmQHFaQS/BPYEupTYbjIuNxy3Qm8PZitSVdxS4uRR8foC/G+3Ks/+bErM4XSmzc55hS7tGJ2GaNpKilVcCuCNKqjoL6Z5QSKNk0kaLYgwkbEuxX8gYZu0X+nAS3tbGt9lfRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718907624; c=relaxed/simple;
	bh=wUdroYrn8EIgA3eE/UeAKYjZBt7TWsr7NWdKzRcwbv8=;
	h=To:Subject:From:Message-Id:Date; b=kVnenwtKsQGKJhMKNxax9nYwIzyPnVMWGJEwFY7ccrueG4a1l8NwG426vZcJF1LO6u1Dnoi6XcS44G/iRKFsaq/ippmYx8wtLgJST/02Jq3WMP4NuLGqN+Dtz0ZeRg+QhT0pFNJq0G+iEnp6T8mgmXOu51jZMZqsXZUCZzo0xIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UblW5noh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UblW5noh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 175C6C4DE05
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:20:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718907623;
	bh=wUdroYrn8EIgA3eE/UeAKYjZBt7TWsr7NWdKzRcwbv8=;
	h=To:Subject:From:Date:From;
	b=UblW5noh7MKEQ3K5YE1MVC4bvL09nfwPzUrXLc6rpxt1GeZcrhZhc/A5tJr46ZDVZ
	 9Jemag0vL6rfWs5aiJDNS8QMk7iOrGPioCj1vaX2khdyhsql3O135kVq9fGbRHnOcT
	 z0m1RqMTu/0gPTPJjNqShVVxyoFBdzH/LXmowXHZGbSUt3GEG651Qepll4agvSMciD
	 1qJAGa/6grh1KWHFlkn9qWSuHvsZtHAGeMaEvON6GYvrbWQft6il/A/cDlAZKeL5zh
	 BIjVHbffDnZUhGGsMJ3jJqcxXMUO0atP9wPRnxAV6VBuDydvhVlEA9vomdjrSAWimZ
	 X1csShA+4vK2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2244C27C79
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 18:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171890762283.15594.15599437662862086623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c578d7d2f7357b762694138509614df67e72f57eec3280d160dc9bd14b16ea3
Date: Thu, 20 Jun 2024 18:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718907622
