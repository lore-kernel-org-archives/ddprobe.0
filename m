Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56D4F510
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759736393; cv=none; b=ZOySyEjWiYq1S07q7t8z+29/0IX3JH2q3kKm3QgT/XCuLIv0+9+RdT/mCiSzoqJLCy4ie7Jrn2wEgAXmUf3tzt5OtyuySJBMk4qNNMrFVn0uP0nlW4XcGENNBOd0HqPQBU7xA+Vxa4N+fBlS1yBb5TcSnKlzGotin0wmfOGpq0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759736393; c=relaxed/simple;
	bh=hjRnw2dVOjUDD42WQ+J7lmZing4ajTdVilwVJUITa34=;
	h=To:Subject:From:Message-Id:Date; b=XBRmoh2mtYlOjKJzCHGhjiE2BtvYRmJAivsuvnKlrGGm408/m77HoTugcgNjAP5D4a8xs3BLZr81pbMNZm06pcK0PHIaFdGxW3W9SULuxhJuqz/TmxH4VtFunOXxVPOKD/hvcn8WVeQJHakHGKAmq0uap/Y+exftd06KzDTOB3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jq0/tvc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jq0/tvc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2950C4CEFF
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759736393;
	bh=hjRnw2dVOjUDD42WQ+J7lmZing4ajTdVilwVJUITa34=;
	h=To:Subject:From:Date:From;
	b=Jq0/tvc8G7Jbzfc7knbqiOy79s/hggYNdnfqm0UvQ/235yVBBvdxC8j+OmZnD9WYR
	 h3bFyeWdcgn1AR7urYYujulu7Xw1wU2yNvoqC9kHTNtDXCrnsnPt6jJuxThDVcoXS4
	 R5aBX/vga/lHOjg9T+7MucFJ3qLOBUDDjAini5l00bMgBrgt6Dwod0y5koM/0R09e6
	 6jeEIhc+UaVttwSA0XlVXB9O6FOazfL+mgTSo1KOmBCp3jfR6P+J4sJg5lpc2xRNXC
	 PDqpyGdLFyrvgms6hXQBl3o0guWmsk6GzRTZKKWH0kIRVydf5DqMSxwAMYlr7pNy1s
	 kknDSPArx/tjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9134BCCA471
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973639358.12302.16792405310434495494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9344620095040a0fa41953ecd77e0418db3875e34c9b06ad62defc82209021c1
Date: Mon, 06 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759736393
