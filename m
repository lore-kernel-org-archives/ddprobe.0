Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4BC82E40E
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762673993; cv=none; b=OOvFqgHetTsYctCsDyQbw4AR2YE/rPBrNfi5gxU8qwMDhKdreQW8N8rgIDyFARgShvjYJJyX8LdK6F1jHa9yHahIYGQmC4RNuoj4ScYY+KeKapfvCURBPXLXSb1U67nNZVo7K2NE8/9qDTsXVv9bN8VQiFonBEn9lsW+bf7Tv10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762673993; c=relaxed/simple;
	bh=ceN0xGm0/kt0VC8wswBjn7PGknA+maRDa2W1MJ+7t24=;
	h=To:Subject:From:Message-Id:Date; b=H6JdAGtXQKMxuu82MVg7wEC+IAL7QyIIbnGbdVpYd8vz07jrZiZOjiEregoWBiHZGQVwgLVKoP+slm6wBefz9MK3ofK9WfWfCF1bRt8wWFarDIW9frG5cEGePch19Oh9vOwlsStjXK7g1kjkw8eLCKredNeot84Rqg/O3YDjDQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qd767vlq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qd767vlq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A674EC4CEF8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762673993;
	bh=ceN0xGm0/kt0VC8wswBjn7PGknA+maRDa2W1MJ+7t24=;
	h=To:Subject:From:Date:From;
	b=Qd767vlqkPPee463/GWgz8Ua4tlczX3EuEc3BPVKoFnrmpJKPJdDQ3z3iUUHYtpvw
	 xiS4xu2GR5Vnj5fNWBcObyxqYNdbZLxtTMR2y3/fGfhfE3Hmap741mJZ8jh/wTw2oh
	 3l0XYO98pq+/rCEsEjARE/kKuQUKXEbc6kfoROczdGqq0PHtyGJ91hHViJ9g2h/msO
	 MrW7rgmY5PccTesetJgEleuza8p/a4o+boP0Cji6yMxxxSWna4jIy8UavACm7F65SY
	 D5F3JMsPfyWpTL7mLNGTHzsuWjeT5PmMl4ETOFAK2sODYkaQNpFCtSIesOqWUfDw+I
	 hvFaD23XR5h1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928F1CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267399358.460.9848490696235112162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24d72fc294a8acaab60db0f277a35cdab5e3812abf78c06793d2befbd357a25b
Date: Sun, 09 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762673993
