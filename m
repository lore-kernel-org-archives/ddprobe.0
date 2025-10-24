Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 248FE31D742
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761319794; cv=none; b=dau01CUcJf8TwOw+9MuRptZkJIwPIZKUXDR6eopfksrsksScsUsDwDB96JsGzRrWo451FXUWyKIYWqxxYQrhUohdFujQxIVJ8LW3IE/HJOAfbJFJ1zcYEUZ9entkxGcIbDRhVR9dbG0vDghzaCtkwFI9Zxt8Jcb3mpTHc9odj9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761319794; c=relaxed/simple;
	bh=gLJZb3ZP00gUr1mNPiId3uSNywLQ/tLemrmE9ac3N8s=;
	h=To:Subject:From:Message-Id:Date; b=MGa4Ek4Ik3OqwPW8j2youwwgNkpRM1uXMAn5vfzJsgl77ixkmX6NnnqKjvsyk1WE6VQC21F49DCsDMymuzVOhCkzZrOPP6AFHcfnmFgvmD0yllmpJUGrH0tubB00CsLD+X5OOnVjWz4W5AVOb/Eclv5lPNyS/4OJ+/+ruNB2fsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ep1Ja6U1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ep1Ja6U1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4670C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761319793;
	bh=gLJZb3ZP00gUr1mNPiId3uSNywLQ/tLemrmE9ac3N8s=;
	h=To:Subject:From:Date:From;
	b=ep1Ja6U19UJG+J8AO1jmniOGAQ8YyKmH+OsUq6pn6GLCuMOTaFH1H/JprOK7dAaOi
	 vr2ecXwSwn6nMwMJbE9Nsm+MJ8JgtCUPa/mVHwZ2Mb4U/BTH77+KmghMP8NtbuiLcO
	 yPCF6lqGg02lgeO/prO2KQh5bnWhUZs3KVmPcjaUHj47xF0BgKxeJzh1uX249b7QLD
	 KSHdfS1QsPTqqQHNE6x2Vji3Nn/CLK/aXjzAPAFGVJ97+bt3e5K8RE9JK4DuaepgVy
	 4y7F34yzNk8/89lqW6bWOVsSff1YeGvKmEMCivz/I7H0JGxoTIBpTN3dm9+5jHnxql
	 HzUk5p+5UcQRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F8CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176131979358.8553.4307954817378974734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d77143bc37828c57a478b224a161e8d98b5f30e9722cc5c1021225cb015f925
Date: Fri, 24 Oct 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761319793
