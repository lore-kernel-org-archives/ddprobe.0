Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF0730E825
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769166234; cv=none; b=S61DbCSp8E19aBW8C6pwobtLfpuCMEIkUB0Vqj7tOM7Ygtq3JpZQEf8glOYkpFSiRYXFkyvwugD+sMA8RjVO+vzcN4ANPl90BXkfE754LbR/kJef7GMAFwev5hx+1vuDCtfLJZbJHfkkhSFxhEY+j62gfHGKj9RDuKPlJ/kJtsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769166234; c=relaxed/simple;
	bh=pLeq/H82OEhi7FmxhR9BmUTu/bwkSUyotq+vrwL1AIY=;
	h=To:Subject:From:Message-Id:Date; b=I/rGETqOrcDLHXzf/iKVjFo76kwVnwooAxWxrM3yLI2n1X9aFd6rAQiMPeHBX1Ni0kokcQ5p1NKSCIz6TUy2jnHF3LxbXtNzS/oCh2EMQQuP16QHgd5/g8TgmfWxS0a0RpM7TEnmKCogu2Cu/9/YdPRwT4dOr5NaJbYFNsAwOTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=erFbrDUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="erFbrDUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD7F0C116D0
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769166233;
	bh=pLeq/H82OEhi7FmxhR9BmUTu/bwkSUyotq+vrwL1AIY=;
	h=To:Subject:From:Date:From;
	b=erFbrDUockepyjN/GmFH3SyNw/E9TPK5ue+LYvdh9EOO5ugNOFezTJcbjOxKqc2bL
	 xKMX2s+NQIhIGjU3Ud8pHunc8JjFwnrwzVku/L7Tk6MBnTJmBmHG83CTJBreI0gc+u
	 FTRB8ZhHMlmvIqXsjHAAga3sFTMQnbL3OPMa2WQeooV9d482LWCLSE8O7/cwJ68YQB
	 yiX/e3AGtS1yHmj8yjvMMiVd2aMYcqHj2RaL2pbfpJ99YCmmUB9gngsH+DEp0CQqGj
	 YH8CfJC3hDdqYVbwcK95Vb8aSxSLlRJGGH6lvqRaBg+sKoFej0rfL2QeBB6nrgFDGd
	 d0NHiRnxwE2aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4FDD72372
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916623362.16884.12103280831059533101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fa6efa07c5ec3e7d3dee8c5918bb0a67cab6aac6ac9d1b2cae2b1ec27df5575
Date: Fri, 23 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769166233
