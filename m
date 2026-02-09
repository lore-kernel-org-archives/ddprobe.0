Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BF2332EB7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770624234; cv=none; b=UOzGQwryQyqX3X5+jjWDccxTVwFzeESnNdIYwBHZw6i3IMxwmVPY7Axlnvpx9URLevo1pS2zUrOifWupPWYNxWmoV+oZH1eTjXqn+F2p2nv7cwakkUsyOBooOLrXTVYE8jaCaAbwXwjq/FMZAJZs6BeB+hQjxgPpnvo1sKznNgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770624234; c=relaxed/simple;
	bh=5S2Kekh7pOdsqnTQ9Wn9sRLMCHHraqFVMbw3/8mprCA=;
	h=To:Subject:From:Message-Id:Date; b=cdUpnuNBMit8nW5Ln/2ereB9RPVbb5AMsaLpXttFRr5MpAzRZ+BgKrW7dtavYy86gt5dG8hPNlbXzNEggbUlAoH3cPhFEcxjKb+o4LO8iME9taU3jSpMEoiFez/BcvkP0A9iM2Kqad583uXo+50OLi226ybYA2ETqSX8EOHEagU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2OFelED; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2OFelED"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A40B4C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770624233;
	bh=5S2Kekh7pOdsqnTQ9Wn9sRLMCHHraqFVMbw3/8mprCA=;
	h=To:Subject:From:Date:From;
	b=b2OFelEDP9cSIkGFwkraDzikVddV3K3qjl3cK+yx50ZRv+lgSc+q6BVYVbttSUg3f
	 7RmRbhscm7k4Goa5CHZP1GRGfVEt1bcnXIVDA1rUdrtQOU2RjYvYJqK+FIMHLSpkv5
	 tHUFnAG4BensTR4n/X5s0tDFLp5cE2+EsLoURw1y/ptIFEgPMlIQ71ZhhyyK5ziYx7
	 EuPs3IUyqN2APDIAhTYPmEFNL8N/zUd+d0LJi17pTI5EGu2pBPmyEUnuAbT2vcr2oL
	 UYMUJ7PBPX77BVVbgWkCTprZrGjrE2iluuR8KH1boHdkBx04p2+28XeM2jN4ERj5/f
	 Y3HoUo8oqqklA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93F9FEE0ADD
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062423359.29534.8245289935860162853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6d0486b2a475282a6a37aa92d4ca9b0bb642d84c54f85f3bff5c83724d30fd1
Date: Mon, 09 Feb 2026 08:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770624233
