Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 546E31DFFB
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 14:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715523143; cv=none; b=u7cmfDUIQ+CmsqtOKQN9LXMWn5qmgnqzwa8FC6ePomnWM/zvxVBahuUyOySWLZE8k9VZa5i9UyZu/n/rRXSQxbJ9dCQ7oS/J6DdivCCsW2i/XCo5SW/+e6EF5FUGO5cU14JJ1DpYhbZUzRmpUgQYS7KamInUB+9COCbBqxmnWlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715523143; c=relaxed/simple;
	bh=6HMkSIwmhDLkVnwurNtYe7c7TcFdegPqS3OzwYwn1Hw=;
	h=To:Subject:From:Message-Id:Date; b=ND7vWBXzIoeBTgix+zxPHy5gRnNKFjKF0UVZ4L3v/QA5OV9aX4e/BpyIQ2yj4nr3s0OjwhPBEcmtuedPdq2eqGebgJAGK/al0mH7t72rRfG/PsXEh2wuLAGXp4iY3IOMisVBc2WraIf3ymEDzce2Eqi6jNXE8abtXZd3ECOFotI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j89ul265; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j89ul265"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E40C2BD11
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 14:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715523142;
	bh=6HMkSIwmhDLkVnwurNtYe7c7TcFdegPqS3OzwYwn1Hw=;
	h=To:Subject:From:Date:From;
	b=j89ul265r9VP3pLAGzjS7A1LjjAjWXa1Fs463L5XPaKVFIitZOD0BNRLzETKCwWQN
	 PYItXL/wJyedk58X5K5Qzms/cTmmDneveopT5ZDSWhPmdvNoY1wKBhNhWoQO4XITz9
	 j0hDTFa8zcmcELHGQWkZHdd5SYIyD9vs+mXf3Zz/n1AVNHSN1Sp6RXBuSBPiSD+YT0
	 9+MQzgY2jQImpLrNi7VQ0z607xKSuImgFnP6qNlUwakws2EhBNLaYU1m/KzDLUl4S1
	 ERThGXfNY7e/D8J1vJI/NHmn3RInmdIyWHUZz1hwZXGCpD5R27FFu7N9bqcOPuN+qS
	 nVHPZKSBR0VfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1ECAC10F1A
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 14:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171552314276.1531.13704585812402697760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be2445cdbd134bf18fd5e47e95305400afd4b4a2aa7149e54aca77c4b106bda0
Date: Sun, 12 May 2024 14:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715523142
