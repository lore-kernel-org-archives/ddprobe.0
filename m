Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E4AE198A34
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718630303; cv=none; b=ZGPAqaO/rG9qP3jEvL8DsJ1mB1Ci2QAqHGU8vAkzFyDdeCLRlRVXEMQAW/DlMXFz6F6ZYxzwcNQUjkk0RgvCBcofTZfWVUGkJLM788RLdjap49B4jSHWsV7VE+S77Jf3MxFyhCpHyuCaa2verFoK6GZI/Ls1506yZoBG5fyVVFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718630303; c=relaxed/simple;
	bh=n14arKpyEReZbT9ZkpkIpxP97ZsycfsUNhYjzjz1HVQ=;
	h=To:Subject:From:Message-Id:Date; b=NqWmW+S6v9/+OsocISIUtjdMs/KyeLE81NtjHZxiTF4KSIBX1cZeUV+IqM9sayjTTEHDfCIh0WRjbGAhxVrnpg0NxDZukgnl73+JUF0P4wnTKRZbNsMZKWKHD6ecEw2kp5bMw5N+qo+XfZTYT05osxbHXEU/mSrVDGbDWR9imy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pbOppovS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pbOppovS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 076D7C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718630303;
	bh=n14arKpyEReZbT9ZkpkIpxP97ZsycfsUNhYjzjz1HVQ=;
	h=To:Subject:From:Date:From;
	b=pbOppovSyJ8UQHhzMCXmhvguYm0En0Zl9VntZuuI8FRxRBvK6/WtpzdUO3QeYLvmm
	 qw/91Pt3LsZkIGEynBJtJvzwKTpuaLKx3ayG8Sy7NSMOSsudYy8issj429D/6F6HAQ
	 Vpv3MfCqKx0tYQ8Gww2ex5JYZuFuvnOhVfo9ChLzFLoNDWXiSRxpTMwe7qsE1k4Nww
	 89g2+AKjdQVJ1YeDCy+Qdkl007r0LKfDEJWPUK9/bvkHlKWla1/Dr3jKC9djp0INNh
	 1LEObMXAyEck6CYrKW+X7iuzze1gGHR3Ru8AX+2plTnO124LVs4/xqcSl8pXrRUkQT
	 aI0In3fovjggg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5B7DC2BA15
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 13:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863030293.29411.5073808358322974703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a997e129f91c8b3525bd72391c1192b32accf397086a4ff90f075cf600ccac
Date: Mon, 17 Jun 2024 13:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718630302
