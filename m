Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED8D277011
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761081594; cv=none; b=LHrb/vl3tn6Gr61hp8wgJA/9TYuJ3A+wqXcSQ/Uk115v5prd2NxdeWxLMQYtxFd32LDyrAr5GuuRODSD1IBriCplJWDYwLTqV3cSKBLxrl8EtP7cn0CaWghtFdXUtiS32PsBm50jR4i75pCiZXofIyHPb4fc/C/BkT0q4eyp8W0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761081594; c=relaxed/simple;
	bh=+dokjNpXl03QSTz4RG1VpU+WuHIdQuoBGl0E6/+Lozg=;
	h=To:Subject:From:Message-Id:Date; b=stpW8u7ZZHUV5VZogK44ktlno5M5KipPTBEtZWHxvIdq/WZhsfWoDMh/+b+Yp4qOBScpdTagKAG3OQXDXCtb/u/WNO0o7gdr7/HarXN/JTL8EoDgu/mnfO0QGW2T9Kjl7RtBSJUpZIiAQ/avxroOnbUfojokgu9AwPZBxbD+2Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFSxzycQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFSxzycQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA43BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761081593;
	bh=+dokjNpXl03QSTz4RG1VpU+WuHIdQuoBGl0E6/+Lozg=;
	h=To:Subject:From:Date:From;
	b=jFSxzycQoxg+7OAhYPWP7wYyMu54LB5g4wl7h8ko5+WDLpRXqPB9xVN0iXcTMiQbG
	 v/Rapgt4zsFlKARybKKZ1m846mAlhCqC4rvFIoC1PdDK8o6E2AoFeCiZ176qxCTV0z
	 XXLrLsJCm+hurzF6zVAnBG86OOXEk+3XvkKab2bZJ8KAkeC5Cr3u3U5o9m0GPOY/gY
	 UjDPQuqQArGGYJ+VrAAn676/yMgnd8VC/ecmpgJ7HGtUXM+stLlwC3eFnnI91Va1xM
	 1J9CiVecLV5hYPRfWLoP3efv9nGQO1a34HSH0/XV5rVqpVbPPzCcOGIxdRNLos2e+Z
	 9zewTvrT4DYiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F04CCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108159358.12145.9218383419252728714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1616c309fdc0e2149e82b25bc15ba19861d229d70566c693a581e26d9c62e209
Date: Tue, 21 Oct 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761081593
