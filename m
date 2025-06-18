Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3366B27EFF1
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750234794; cv=none; b=bt5nCwUSIYFJ3p+6ghliaOm/70BkN6URxtUWJuCkJP2dqgSKa0ihPK5RzQ6rqBtoId7J9RM7OhAIYx0bVVuNYjc6OH8ad9z3x+tYA8MmX141+fKusPReBY7ugXJmbi6ADTUbPw+PTQRrPdosrwL/cOT9C9mJvsH/EBcktIeQxM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750234794; c=relaxed/simple;
	bh=x338Ura2VycgzSQbtE05eH4aAnhFMQvx5CS6iPkMlyw=;
	h=To:Subject:From:Message-Id:Date; b=d4ULnyv4z0kFWHhlTjYhXGdV2UH1MRHb2HSzlGqbuPBQN4SK+9RmTaP+lxrHQW0uJJrcc/d09D932DoOGPiEtYWC7VQkh/lqPuUPDZ9EkXgrIvrBDn9Az/XnZhgGEBTMBEmIvbVQIkr8cfVoU6YmIQMI0OU5fI4thb/BjrtNJmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t4IpWE7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4IpWE7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D02C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750234793;
	bh=x338Ura2VycgzSQbtE05eH4aAnhFMQvx5CS6iPkMlyw=;
	h=To:Subject:From:Date:From;
	b=t4IpWE7y0OzEKpPihZ3tC9hsPwEXTxSRIDo0FVeQ+hC0bgC7H8/lvLNtfog5Wkpgd
	 OsYNUNAnkt/0XZWNDydQmm+kNjT9mJOiJdl+IMBeTQxLxd/0YMtY/lcpV63NzBUnbu
	 7gt9cs3H9nqwDAVABMm7RxqkcCti2SnO77jyYOMz1hm9DVVKCugGgQ8uG1Gs1/aedy
	 SyR620bPUsi4jmOVv1krR5OatFl/NY5JPg8MeO3g7zp/gwDBSSHBBPzQOYxwjeC8xO
	 tAtKRP6N39GW2tyb+fF1hDlOXffwhpxXTCLd6m0IBr3WmFqAyS0/7ZSLa5adUOCQvu
	 tc3TOAz2bUkJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F843C7115B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023479357.31104.7109656761021691262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686dd5d2e037a55b6567e6af7464b9beddb1e9c69833e6cd7a897372d110d71b
Date: Wed, 18 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750234793
