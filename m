Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A19A135A53
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786138234; cv=none; b=UIhAamfK+4iE92QF8AArOpzCuFyqMAinRGea0O1JHy7O78VFrjXRADCfvyjhz8q/SE0pj3e/8DJxd0uc46LFColMSNjHace3r79ss7florgma832AAo/JakpOQn7rydkUWDel6aPP4iaqEgJOF3lwotpMTNsCJQkL5asdb5ZRWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786138234; c=relaxed/simple;
	bh=72ABQZzMh9o0WxhkDuILl+QpQxqCAsN8p6bOkZJG9HI=;
	h=To:Subject:From:Message-Id:Date; b=d2W0MxrnNkjhfUu+dJ9SsmECbZ0iD10Wqx7cdrdt+6CRhtkV4z1s+SOQQowRFQfzLmvlLgrISRsUpWH5ZgX5ALoyGedFON5pNG+po31RbGt5x2t57mQkUlFgG48m/H7pxFFH4IxcvlfryiEqI1PC9nkO9cLVrxYwx4/x2RtYLn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHJ9yA0a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHJ9yA0a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8BEC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786138233;
	bh=72ABQZzMh9o0WxhkDuILl+QpQxqCAsN8p6bOkZJG9HI=;
	h=To:Subject:From:Date:From;
	b=VHJ9yA0aCjOUhDdyJGAsd9S/soUizdyEPGrWDBsNhkWR1tpuoRbW/V5V+FhMSY73t
	 pP2qpQnBPHFkhDr89ziZANyoE1SP4H7mc3thA9B6MTjda8gxZTNzmNpcI4MoXYrCcf
	 Fuv4bOwws1xTq5Gbv9LK78gh2EJWwaZ0WaDdF8mGQSnZ/ZHRFOqB0RMZxX5D/NVPW1
	 /kUABc8npD5Gs+/4VIJO8rPySNijnmIHifcSx+lLwPmUz6/wqoo4ahOk6Z9Ams00iq
	 fCs5c8Gc8kuWiYhx0S1Di9zaLhvOCwa2dgpWfQCFyqNbIHOBzpwddp7VEdRhdI1xE9
	 jj+jHon6UbBTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FE3C5ACD3
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178613823374.4713.9373279892261376712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcd1fb03f9aaceba59c47cab086ca0fc1f27690cd593b32748d5d471aade9efd
Date: Fri, 07 Aug 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786138233
