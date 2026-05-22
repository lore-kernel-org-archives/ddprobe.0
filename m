Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322AF258CD9
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779437554; cv=none; b=ZTVuDG2rqE9QRdfPzmOXm0WyC58QLBNb95s01xSLLAIXrselYFe6l7a1f9eVv1wfeTq4h7lB1PlEx3aZ4lvZ2RpzT8LQW1gOWXFWjjpsXolkHr0F3hPcwOM1NTKZm5g/nK9Gu444ExOb9/JDAePfUlvJE+VQZatP7MQ1SrVCUyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779437554; c=relaxed/simple;
	bh=SeHMOo+Wrlpaun4Z20VqqTGm5ihUMudFr8BHtiEMmI4=;
	h=To:Subject:From:Message-Id:Date; b=H3O9121b/wMINOHWrulu4RRP6xcJJhOC6NCtLPtYeOuhJY5z8cnlBJ5/cdqmu3PsLq74NbChtvYg6eGnDyJ3RcwmhvAe2t234WvVq/xIpFbaoteLtZQReUT9IhJ27A/EMefa+dN26yXrlXDjWZfexoea6E+MdkoPIx4ySXfuF8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=deOeWB48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="deOeWB48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21FBC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779437553;
	bh=SeHMOo+Wrlpaun4Z20VqqTGm5ihUMudFr8BHtiEMmI4=;
	h=To:Subject:From:Date:From;
	b=deOeWB48mN2aJ3nSJZ03fDpbpa8SdTpADaxUNuEl6XRpMLwmyfCHMR33Em4g/Y9c5
	 tMXAu1lNVswtyBrfZrnWeSuMU+pq+u3kruDp/sbwfLyS+t0uHHy6J9eTD2xnUjEagu
	 zgJH3ktVYkzkgCJGHOUsTIXFE3cG8YSOHB5cyegiW114rXPiZNuUyNtbgFXl6+wnOB
	 dEiUfoVOkGYcYRFYIU/ySfx0QHBYulBNeggKoCvkNfgEwBFR6qzVRJ4PeffDqI19+N
	 +g8NREV3Sumd92WUiQNbxnSB070OZjEP/60oxfkjykb7qRmf+6Szf0//9HUlFbVdp2
	 v4hX3YQQHXPMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A91E3CD5BB1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 08:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177943755368.14117.6054085796588122087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c96b5c027e11925b8318a1bc9805eb07dcde5fb98d2ae7cfe2b7b23aa54a2dc
Date: Fri, 22 May 2026 08:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779437553
