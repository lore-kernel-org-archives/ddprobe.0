Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301B6226CF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766788434; cv=none; b=oyOdF8V5bYtKmYpo/tj78lWx5DudcMiwr3lOUoF6qS2v4GP3IW1lxJ8Sd0q5ksGRH2fOp0y0SQlVqkE/N4S3LvkDQ0LrMfyD1cCx/9fCJu1SkGwEEOBk6wC6PIeIZZnr+eYWFFmZmrJfHc1T9Mq/XqTH5safqyvYLbTIif5Z1bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766788434; c=relaxed/simple;
	bh=9OQx0CLtkp0Tq5HNcYTimduh3dCffK28pra0LNf22Aw=;
	h=To:Subject:From:Message-Id:Date; b=eIZ6RlhEsTf849Y6rXWHV9GSpP7wVD6gQ+baJaw/djfIhTTX1hZCPofbDFaLY+o5zSc+DRdaH/AYRTHXs+Hb7rSGSZMS3nn9j7OeiT02dMD0lqH9H68Faw+TtbS66+JHbM2He6dQjpxXNN5ep7y2CW88H6PAxNdG3igapvKV9a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QVGeBPmp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QVGeBPmp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68B8C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766788433;
	bh=9OQx0CLtkp0Tq5HNcYTimduh3dCffK28pra0LNf22Aw=;
	h=To:Subject:From:Date:From;
	b=QVGeBPmpiYoCHxhn13cc2VPvwAiHVu33VLWRqBhzYgQO8k58LcshaFD0GAnCXByZx
	 fMPE74zSQtgfeLIEi67HftmPqTiZmjuNXKnWwxNNPAlz2LT44zDGBXRPTqTeAD6n1Q
	 ZMzrYA7NCEJtZ+0r20ggPQ24Noc32XhqbznuOMMRguRkK8Wz6v1XWCpNoh2iPFXncP
	 AK77HZiUwrbUV6FopRkXb2xu2Krl7n6J1vAjedrEHWgAEnYxnPx+GpZL4H2xqwZmLY
	 ry6pLkN4i0zD2escs/pACCP3gflY/NdjKIvmtU8yV4cgjfVAUQ4yvkSXLA/+yx0zHY
	 1y7sLN3C9pCDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A72E8FDBA
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176678843358.23012.7255756592066962494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8767367d17c57db822826ebc8ccb5a2de1d2dce7968df802882b5f1070bbed17
Date: Fri, 26 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766788433
