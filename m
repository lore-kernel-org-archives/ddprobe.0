Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FA6B368
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 04:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714797743; cv=none; b=jeDzq45QdlhcHlRE+SE2o7XZEc+YbQ1VWjNdta8IbfAQFs/qqA8UTR+K1/pM+NqIVOdigT1TPOOcFyGHkc9KuXE2hRV2AZMAh/h2R9gGUWJgPUu+xZHPTpfVPyTBwWUxzo69QHXPd5OBqIKraX3FRMek9Gbc8YAlElqJ3n1k7O8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714797743; c=relaxed/simple;
	bh=+FuFN+G1uTQpFrvH/QVY0/TU3sko9RgwTIsLkT+N+5Y=;
	h=To:Subject:From:Message-Id:Date; b=uQff8/Emw5d+ZXkfobx0CqowERi+/wutCHiWAEuvShqAxgiqygcY/6g9EnLOfALeYxAAwT0JPlUWwfqI/VfP8smkDuSukD2KAZ5B+YSuK499xpEC1pZB9LmNee/eaqVa+daUafCTwT+hTzaqZiRoRvy77lv7ZPvQ3yNJdkMZRVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IS4Zt+xn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IS4Zt+xn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E04E9C072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 04:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714797742;
	bh=+FuFN+G1uTQpFrvH/QVY0/TU3sko9RgwTIsLkT+N+5Y=;
	h=To:Subject:From:Date:From;
	b=IS4Zt+xnlzAR4p7ulkC2d9dUXz52S7daFTlw4JAnJ9Fa7sgAqUJngF/PXWQyPzrDH
	 zJsb0W2BDxzUj/c+RLmR00/lz9mG7g9h5ExkVcQn+G7a86g+6cmm1OHFDQiTzkzd7y
	 7vrcvIw7Qhij3wA/NTl9X9ijFOtBclyg+8GmDts6bU0SEfSHgPY0/wLlMP/j7cTIxi
	 SY1Qos/E2Of/NKneAjmTUdBK6RcThpUee5f3ybRdkVawlUEI89OojcC6FBByeI8JmK
	 f67kji5X51i1EyaQvmLCUPF0Tr8UP0/6sFxuzsCdxqxfXljGnGlWgiaIZrkCLEKbPr
	 f/gyVFf6bbeEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC5C4C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 04:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171479774279.7985.2114170538612166833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9d1f3fa9f983f05a6604fd1f01c42232bcdb7e12de796d2b79cf3ed0129dd4
Date: Sat, 04 May 2024 04:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714797742
