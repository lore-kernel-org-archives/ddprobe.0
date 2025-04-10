Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2EB1DEFC6
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744307994; cv=none; b=ZODplXN1hz9Yb/TKoik9krM+xVPbpH1A3dHXof4arsp9SuRFyIKWTa57FVZJsv75HFoRNntyemZeRlqK0B5uMp/zRM+XsVc8GjK6QYBYy6U/Guz5msxEVdynX7H5LNyFY3e2yF+xyjISKzqwdZ/gBZuoJ66HTH/K/sYrDGf4GB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744307994; c=relaxed/simple;
	bh=Z9kbFjBjDqje1thKvESXK414wFxCTK8mgYk+Dr16FXk=;
	h=To:Subject:From:Message-Id:Date; b=YG3tT0twUT+lWRV1PF/7gVrZ0T5SQLRrPBZJNq+1JXraCC6LWL49rHQhw3AZ042WwJHlItVZNRHfi8DsmyWCoqBnGmx2/E574Ebdku5Qny3lrzIpJbIs+40e/JuA5J+AmluptRWiMSF5wsoCg4NxXxYqLw3vl6b089BzOowSzYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mjf7rjqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mjf7rjqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3265C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744307993;
	bh=Z9kbFjBjDqje1thKvESXK414wFxCTK8mgYk+Dr16FXk=;
	h=To:Subject:From:Date:From;
	b=Mjf7rjqjzt60Q2+mPBg/o4kXoZAU2IUhBBNlvHV8FRc9vRjToeQSfV5OPzcGz/PS1
	 wlOMyu8EHPIG7+Vb0jdBjcjCxe4pXr9rnpTKVXFMUQbYXdVgQvqp4lHyttjOseHM1g
	 eiuiPXLUwJjAgYngHwwyiRs5P9iswbHjtrxnl1ugk6KQ4RkDCpTbnKnTKpyoHgqEgZ
	 Rcb40CD+uPNzpNvlqKyAQJeXNxbMUdW4vo27bwvNfhxFlgPFF6LSR7T4X6/oZPfhJk
	 IQdlmQCST9gPUVL0sPhTQp8XCxTKWwI2cyEBYCEq7c1HDnJMTPgpyMv46NN/QmSLUG
	 VmUYfIyKo7TJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9205AC3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174430799358.13880.16765942971617456504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc2dee4e8176b49ad6d614cbf9e4f70ed457bbc991f8eb8a8594a563e2fd5b6
Date: Thu, 10 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744307993
