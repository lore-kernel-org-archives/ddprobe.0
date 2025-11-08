Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C553D6F
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762639794; cv=none; b=coqDat6uJIeeIsiwx7oHbvYk6l7tqmA4ozti6OA0xtFVoa4LljeUtjou5ga1luayiy9CBHJX/2rIcnCUfkps1BRFm06imXt1WwqsmJ3Q3bpTOs0VrIxwpik6YvnVZ2VB6V92mRZEEBByiDo93d+EuaJNNoRJAg0jZM8q9lsXTIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762639794; c=relaxed/simple;
	bh=qX7V91bcwajrqQl0qYhvliPk5ltbWu/V7X8MkGSXDUQ=;
	h=To:Subject:From:Message-Id:Date; b=tKEpXC0cpUSQvEfn8bAyZ+gbwu/EaF53xES5KfVupmwBNkMBqbQS0pAUxJTuSLS0gsyhdeeJNRA1oob72XmfNWZ9GeT7KE3YtFev7oZkUyOdzyg27lTgiR+xq161foU7qiAGE5L1VgiWtMf8Wi/F0TBCWaZVCwSuxZBZ47sDLY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkQ4TPvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkQ4TPvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A571AC19422
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762639793;
	bh=qX7V91bcwajrqQl0qYhvliPk5ltbWu/V7X8MkGSXDUQ=;
	h=To:Subject:From:Date:From;
	b=tkQ4TPvtzE39dFR3sJgf6TnRUeeXvKBPbZ4lfKLCL73wgfxLVBJbK6kimZ8NNemy3
	 GjDy4b0xB0vcRkk0mBPxH9bYdPTRE/X0C14bFslAvY4KB7Y8OTZg3KspfLzq1ArM2g
	 OPR2nXRKM+KhQfJ2FWPVv6e7pqoIPGwiM+KzqHw4arqV8lFQQ4Y+Q6ODsepzBOzEZG
	 Zcp5uNiGIgbv/DcbNi+kUlf6YyLIO2/TOhrZMSOaYNY2Wzfg/B9xfvtI6agOo90ciC
	 6MXqa+jvn4ycdVS15DcAfg04YO6KRR5ad8zXR3uEHDG3HCHl040mRxCc34J4NQjb9n
	 8eRjL7+J0CzTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951B1CCFA18
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176263979358.25796.3542468767287298143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 187181c363980328ce61d2fbf419d21d0394004dff8992545d5d6bd123ea19cb
Date: Sat, 08 Nov 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762639793
