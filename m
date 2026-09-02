Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE083264F7
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788363034; cv=none; b=LgDBWTTtnuAOj8mkcufeng+tzAIpasiqIGc+vSACPHMVmNTXU19ofd6yapXRr1UfnRAyV7BG0n+m54kd/Xiq3uXEGd9aAm/FRYvNcsOjebjQqZ3iaWkiltAm8R8zACoPN3avKbkJyPHQpgyJAjDI6hr2uby9MDL+x2v05NA7oRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788363034; c=relaxed/simple;
	bh=svQcfhbV4DWMdxRtgpsTC4V56wvnTUIVoGzxZR04xes=;
	h=To:Subject:From:Message-Id:Date; b=gC2gAfF408vwwDm08tKRIXhdPkbDG8zLcXF5DcnhgZgY9SUue6Pfd1C6aMX8odiTfn4qQXM4wrsZb1mLAQNzfU2JXmJtNo5JmcOt91BiFGKwDLb/ElsRNGAHnAValreNZW0vi1Vl78Eii+cqE10U68tGsrbBzwMwfnELDQCvFHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DxHG8jNw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DxHG8jNw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9C6C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788363033;
	bh=svQcfhbV4DWMdxRtgpsTC4V56wvnTUIVoGzxZR04xes=;
	h=To:Subject:From:Date:From;
	b=DxHG8jNwsr3IxCsfmBBaxStRqj/Rj/SQxNPU9c01qDb0eDBK//d+RHF5KVFOb0NaT
	 OCObojMAJJWjgkbRgrk2HV5xRt1RW9tewO4Yk5TP1gyQgiIl88NIlTh0BAuYr0aC9p
	 WE651d65OWWoW63S2jo19GXm2lReLq6OW66GbCt3KVHnBEkI312vXsWHtFvJPzDMCi
	 ApTBs+ylx9pjnggCxgC/KQwxlEbGMUaZCWPJqj4MnodpOoTqEPRh0WdE656t2yDqTt
	 fPNiCRK2+X6q1MZ4xdV6SN/U7sjh2liXqRGmMkkDhrfKjY2Ea74tQt4+hM4s5CeF7v
	 7avIgANP3qT5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA021C61DD6
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178836303368.22329.5411324554700452204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cacefb1c28ebba74c0645c5c288b0e9281672e0fd9fd68c5b6c8bc03b22ce91a
Date: Wed, 02 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788363033
