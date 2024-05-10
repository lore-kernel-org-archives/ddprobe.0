Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55326168AFA
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715332343; cv=none; b=s/1CsWkHMl0gad0ILeQsO6cCNB3L3shNA7mceVcrhsSyOLFOBLaFLjFEYD0ySGMS1sDfRGsm2K82So4QdapqIrNY19173wxz4oaOFDX9DrsmNPYoACfmtuUkpbkobMHlpLO5BPdB8ZJIQFroxFydmLkeZeXhd7o/egOf7eFI5oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715332343; c=relaxed/simple;
	bh=00ZS0ISnPu9GBcOfxPDmugjLCU40KqhkRxuP4OAq6WU=;
	h=To:Subject:From:Message-Id:Date; b=Bw+DJpHJ+fPqG0KhBFkF5xzO9zveGXTWdXTfcgQsCzP0lvZnUcNhzl6a2H8CUIiU5vd4U2nM+y1lbLvAoZ/FvvyAD27g7pxsIlJ/J7C8HuVXIq8orRGtWX8LV3QSPHmo+KJ+4N+7XPgqy3weJRK5/qG0khBHuNqlHoMeUyIaQvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NrM1w1fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NrM1w1fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9244C4AF07
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715332342;
	bh=00ZS0ISnPu9GBcOfxPDmugjLCU40KqhkRxuP4OAq6WU=;
	h=To:Subject:From:Date:From;
	b=NrM1w1fs/3OTQAnXhRQlQwXue5hilqBlyjUsvvUylZkepGevwZxFqhNIjAbp66U8B
	 odYhF3In4EX0wCNWStvYRz3O30b00/IRW1uDZn2rXVdR8pImiaYdQxKVH/2iDn3vjJ
	 /u7gtnUWLhVlSSnq3gwJwQROkJ5tR/Ym0KSPKOc8ByLJgSA/Kb7bsfnA0BYEx/sMYc
	 73FsOdY61PwNTT2Wn+RZcrcqTxvv2RzxqCcEyPcIsxB+SLfp5/BASpQkyJewiV4YW3
	 rvxYogIDkyaoJNzDpNrw8SRw0FwxagrmcRTFL8P7F3e2AjJmQEvJj25xVYaxssfvnd
	 ymcfZ9L9UyfSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA8A9C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171533234281.17303.641482374148343238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d53b467210c6e4c7f16cb7c9d5589fa007416ceb520b2f37e495debc65f2c6
Date: Fri, 10 May 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715332342
