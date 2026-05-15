Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1492DCC05
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778856034; cv=none; b=WEiHR5NWsUBn4Z060tVwQgqNFXl/4rFVG7jSeHPwOxlP/MpLPQGDyI1xAqvHnzn/qqsbd+xguJAHou2ZyvGuIpVeMb2LWYQm45U7Uckjmu7XP2p83zpScZn16HvnKN3XZrXSZXWQnO1Z4sCLddkt8Ef02WGzhMwB3N/KHPYIW94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778856034; c=relaxed/simple;
	bh=oTzbavr0R1oUO1Kqdj4DysHeosf0islckgNWLD+3vec=;
	h=To:Subject:From:Message-Id:Date; b=FZzHoDUtW3wYgvHRc8UM+SYcR1n0drAeIoUCqL4RSAsrXqz5FdrU8AGOf4Ep4Q92niActrxEEInvWIvy02g8ziOazmy0cSKSc4+OBPHEoZ6gmzqE/tRtp7zvjAEZHLmmgUoCrtu0CfFcytAGlUDrXQ/8yaZpfg+68DCXFWaFya4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LMLRjG+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LMLRjG+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7DEAC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778856033;
	bh=oTzbavr0R1oUO1Kqdj4DysHeosf0islckgNWLD+3vec=;
	h=To:Subject:From:Date:From;
	b=LMLRjG+PG1yn9EEmEah3kZGQQ19C33/ANPsFGyOD6VgisbOVXscJ3CXQIOs1/L62u
	 sNDwEP/zpmjNnnDAk3lFtVliVRJlIA9fS9yloH6H2zUpJKBK2TCFW4ASk9JandpRiI
	 0zgCGXoePJij8k6yvk/YR3Nt4KwAu6M6eBGLUl6iEb250epULxa5nS7Ni2zda6yDzU
	 ushDiaoRtjUF7rTLWqbtfu16z50TRZwFx7jFI+Er+rJ3dUT3NQH1ilxzxpXScB5gXs
	 /4vFuXU8wsDgxthuHpXEmxDMlUeUgVEAyS8mq0bN1Kpn+IBEVTJr2wIoWrufs2ZOx5
	 ibbv/2HKYAZdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2420CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885603371.24470.4895958477531087557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d1e63e71446eee9a7e2606eae5e7f316e4e0b464c54afba314e4abd5a64cf8
Date: Fri, 15 May 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778856033
