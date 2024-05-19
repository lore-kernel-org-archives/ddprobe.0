Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A36BE40
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 10:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716114743; cv=none; b=FO51SJz3iHY+8hk+LIFCtnjBj5k8P29vTbiPEz+3pTjcxxul4WBIB6IWGiJVJ2SKentTe7ge5JXWA2LIhqmiSOteqTPGeVXlhBHef/JUdE8eX1kXyIUwtlhYwJpua6XK0lxXgrOB6kGasA5GjydQgdkraMaFCY3hqt7judFm5mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716114743; c=relaxed/simple;
	bh=aJceEvleW064a7GDOKlhR6cb/KDBWf5LuY1MZRJ1Xss=;
	h=To:Subject:From:Message-Id:Date; b=DmIyUamZqHloiWpBRzFKmOPFD727SKSRjl2cJ5ExoRTgeysdeWBgMsPpyDs5+00vUlo+bPQW9pJvUg89tZZbeXTVaTnMXkZLDd2M0ColnzwW4X+cvUV5qcyqI632wGk6pkvSHGpbKygWTf2BTyznU7W6mYXMxqHHPU9WJyybBuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DYGYW03v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DYGYW03v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE243C32781
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716114743;
	bh=aJceEvleW064a7GDOKlhR6cb/KDBWf5LuY1MZRJ1Xss=;
	h=To:Subject:From:Date:From;
	b=DYGYW03v9i0rmDfuPpjCVeTFsDDQ1l/gqq4Lr1fU17TbkrtbUqfgBZM4EB/1OL3nC
	 EJECFajMu42l9kqaQwiujRVYccS6jCbPMOONMPHDpGqRXdwIIZopMzaWuWhV24zfiY
	 Y8LkLUGSee3FLUD1I0TnlCQUsObRf6u1QMIeB7CX4yoSj/tbKIvR+qj5POxEumpKQG
	 Z95691s3Q1s79lBrI01fDBHAJ8YMxwnG5k4u1UJpHwfj2HDiunSZT8eWAhaGr4gr2A
	 vUJTA8nBOiI06WXXXLVog+Q8w4+aKCMw4lqd8JcB8hjD4En86PbKedUgf0RYvq+83Z
	 QIYg40b5aVe2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7298C25B75
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 10:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171611474283.14926.18177849697050699219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c17c8b5d0dc4ecb95dc90dad9a27a47e1bbfd551a5e03d6c12dd08f98b3156
Date: Sun, 19 May 2024 10:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716114742
