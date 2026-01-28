Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A80925782D
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769583234; cv=none; b=jkgScDqQH+nw6NvJd20R5lpvDpGwsjgQprIza6F6jNledXyHKuwz3XZCnjmwn0P1bhRsqnG5tdrjO7/GGkylGK6pPqAN1sdbDn7umJ0IN4mTuex/W7M051oZFf8vhQWs1BIBkWTYVfY2N/rC8DJdUaL8biXkdD6++kNsWu+2Iz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769583234; c=relaxed/simple;
	bh=kJjG2bnxhmSl65p/0QZ6T+lInPo7F1qneq39ZEi2V3c=;
	h=To:Subject:From:Message-Id:Date; b=fbQs9tcs8e/ZsDjreVIk/Bo6AYiMfVWpORlkynvdwKEJIbOqCTIhkQ13MrFfZosvc0bs0w6uScZoiRhkZxS/3XGLQU0RVYCk9n9Jd95QOjDQd14ewLPxozYiwCBpZQim4/XiUbWUaTpfTZMb/urjp1wn8XCVvqnEn+RNm7eQ0Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gHwgcZsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gHwgcZsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B55E1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769583233;
	bh=kJjG2bnxhmSl65p/0QZ6T+lInPo7F1qneq39ZEi2V3c=;
	h=To:Subject:From:Date:From;
	b=gHwgcZsdnSV2QMFw9Dc9YDA4THJBLcWZjAcxRP5+pw9njuE/uc42eBvjKSzDwJjzI
	 MUkPMVDEkemn5Xuld/YVteeqUEKHFIbp9cCGW1X8OA5n516KUgoGiBVngEpF329Ksy
	 lRnQUnQFycSVHjYWXlHn859wTOREsJ1+DeJRwkD6Iw4OL1l4AwKF1aer+F3SBOEnXi
	 om6HXkGW6gRfd5F+f17tzUc1kHW2hdjWbc9YnOagG8KN5c4sRnr9UiCr2NNyGuZ9V5
	 qPEzsK0proIwKvX83PN8qXeXjfRMlakpRoal5Ksk8V7zxyjwjIgYzWGJqP3wN4QAMw
	 EuBI4CEkKzTng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E581D35688
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958323361.17380.9802371637150223190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf9a526ccc975bc0cd9d913cd23230495a6a630941dab66a534df8fb42c163db
Date: Wed, 28 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769583233
