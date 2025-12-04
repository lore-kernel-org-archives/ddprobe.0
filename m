Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB011D416E
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764818574; cv=none; b=eDRS8Rq8Joaj6e8KXdgCaATCGlDNdf0re4id8eIvezKEi9RFVj8EvcnQS0ZBUqQqJpl//AeoJhoze3DUZmgP3UFQmuO+WJgHQNZaBOOhMdlcquqKVAV6MLPVE0K8J+3yo/eGllMutFtDIMQORkdUAdPVM88m9TyySqrhwE+hMRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764818574; c=relaxed/simple;
	bh=HNttykhxpl/t/pGXJhvCYiEU6ao51K3By5PFwg7X5gA=;
	h=To:Subject:From:Message-Id:Date; b=M2Ej8ziXT0V0Q4YmSzcsAo08LNzfuobaUXhVqLyh3GHt+Wnzy2OMWnHRAf+rQAFPkPu5MUltDGwU5+otAmw+uHcPACbg4wMOk4HocUwDmnhQbby0Q/o2Sp6m4r8DJO7LtiaahnUD10f1/e7sLlubKuJBdpvStWuY6ta8vGj8zSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZjkG2AyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZjkG2AyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2ABC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764818573;
	bh=HNttykhxpl/t/pGXJhvCYiEU6ao51K3By5PFwg7X5gA=;
	h=To:Subject:From:Date:From;
	b=ZjkG2AyPvavpZAHat+Gh3+P5rQ1lvJAMZ7v09zN96ObDy7cOQKTVMll6iQUZIotL3
	 1JSJtI+mWwMnc2w0/T8u0uAEacW0P/VP8+usJYfMs3Q5XgEyyTEKepDGjIdU/hRYnI
	 Pu0dqri3cmUlxHD6K3GPDUs36pCmbgcdJY86zh2wOMQbf6H1afb+qb8Eqaurdj+PYz
	 XaK0j2mIMjdMjP///puSWjkE5RiSm/XTHtb/tpkbtyKIopC5CiYsw96Ao2nS0zME1O
	 2iESclNjTc7iSMpLzD+TmLrTfBi1rL+l0F04jOyA6+O8IdmYJk3CXyXjlnd6/l5qdx
	 JqYcYf/Vi1DQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A5DD1CDC0
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 03:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481857358.13247.12007659343539080190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35c4728e1d8dc6cf8f65c2aef914422e7bdc414ded33c6682474ea3f9842a426
Date: Thu, 04 Dec 2025 03:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764818573
