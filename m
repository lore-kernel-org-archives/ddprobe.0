Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B20D12CDA5
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751242796; cv=none; b=SWK0l/gN/F7Ek2WQZrvr/rn66dXmdzonBPIisUr5Gw+MUH9fY99oA+FfTHm5hmBEzi34kiUCPJlBdYh4iPm4fgSTjPxs4dvX5hFqpVXaMm4vOT21i33vFtzLHifp6WmNu6y4kojlx7HNDvQLjkyO0mlAp0zknBT6/i6+DAPaIso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751242796; c=relaxed/simple;
	bh=nnMtQFueNwmDNYr2btfpdtpdpoj0Yi3ASV12DerTiro=;
	h=To:Subject:From:Message-Id:Date; b=HvtNjR8Kxiq5RkzHlc1RIY5H2m6nkCPi3w0Qsq+jISI5UlGpXqmwG5wohquV9IkAeYAMuNQoUa3rjM5P2oyMCzkSJa4rLTpBVmUvM+G3jWhxMJjlURWE0pz1j39sbCOyqqjYA4IfjirV7AdrX3e0i5LF9phCTiosSrOnRlUMvwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=of38q4jr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="of38q4jr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07E4C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751242793;
	bh=nnMtQFueNwmDNYr2btfpdtpdpoj0Yi3ASV12DerTiro=;
	h=To:Subject:From:Date:From;
	b=of38q4jr4Ra004DFokvyJ1Nk8g9yFnb97W/FalbKYyz8XSiY2p8ogSMCrEocHlC8M
	 7fciOVMSug611bC1DnOgmipdllDrU/jOIdJwnNz5Ad9fNvpDPdtzGOpUKqHiw4eSda
	 ZBvFiN4gZ53TpedHcjCJHWNw76RDNzia+qX/KMIyPuoj+4W2nK0MwBmhFqbVHzttIb
	 HkX6j853jHQxk9DbRYdgf/w8ZosUenHHUZPCFqwdKKCOpM8a4jJ9E0OzccW2nBXY8k
	 IXk3HTratl04IoWE1uOXaZuDgKIbZ8IOfbAI2OBGbx9PQQA8gLRqD+atS7YiDVk7Rq
	 DQyWhCVbM2TGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F9C7EE30
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175124279357.25908.6373868220468744840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc9314ffad50bfa21e544ebcb133397a0b0e770f0fdac9b96e8a7bb36c59036
Date: Mon, 30 Jun 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751242793
