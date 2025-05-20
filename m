Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E8FD257458
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747756194; cv=none; b=SncVt+cz9XBY5ZEEk4GwBO3QEbgFiNZC1GYkcOHgoM+KcBsPrWZM8WW0IUxipcSCdXDLyPN8B2go2ZMElWI3V6A/f3EjpHbj1jv5vrKXkWwY6Ey7TmbrhpJ2jzpZXl9ECDUFcD4ArW4eQ2MXERRWReHg6oIT69YZ+4JEyZg4qZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747756194; c=relaxed/simple;
	bh=AoZ1Xv4EWRqGE4/CBtLNrXXTlBvZCxs3GdLKwJTM2h0=;
	h=To:Subject:From:Message-Id:Date; b=ox3Q8RjmaIm1QDgdnKFiv1RV1z9waZGcQkkYEAjz9TBFBhNmq469j96/xhgAVMRkd/mlMPvJ7iFACJ6e/JY5ZRYijfyG+w2yNbmJfPDy3sPeTG4zCtvKbuuf6OjTicfdZKwBXOhmNMKgYqwIQWNv8JLFdQaTL3eAWOo52mRxPgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdWs+etq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdWs+etq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D935C4CEEA
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747756193;
	bh=AoZ1Xv4EWRqGE4/CBtLNrXXTlBvZCxs3GdLKwJTM2h0=;
	h=To:Subject:From:Date:From;
	b=WdWs+etqLFNtI/LpfZ3iecv6bEVEF6Pw5PcSBVadsO7xAe594/723xcMlf9rpILeA
	 LqdaXPxv/3hOXVZQFCfl6dSR5qwH8YvO69XRU0rBPJa4miV94BF1cnXW1hXTwH98Sx
	 OGTXwOlPi2rSsCVezBTZBRXOr9L+QaweNKe77rP1G1PMzj9nwhIGNTCGn32BAIM/YZ
	 iXSF0YReQ44/UeKacuZ671SOjw2HYqXBECcAWKsgUl6VhLtIMglVhj85j7/gG/CamI
	 72gCLMKwDcHVDsLX4F90WDIr3Ap9Jm61vXQDZqgtrqR/XZM+IBYct5Uu/GSr5x13t7
	 bxuWiZpdoE7aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE09C3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174775619357.14615.12059001266959679216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 416499198f9f246eb62b114ac194da8ceee189f84dcc84da5c7ef634f70ffe54
Date: Tue, 20 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747756193
