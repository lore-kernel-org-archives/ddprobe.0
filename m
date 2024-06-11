Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116AA18641
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 06:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718088503; cv=none; b=jAYHtBqk1Tht70Ht1mLB3dFwyX3jzplvGNhdH1qP/o0H+Ii6Y4YASUI/xQicRyDYWKKrk6NOxmgQyVBkPUZHybNoeCPMzfvtcWaqfpsgfW0N/DCWLsIjnoL2KSynnMPOWJdBVKqF+6qxIiDd0cRC2zBmlPfnCA73sVPeyZ1ziv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718088503; c=relaxed/simple;
	bh=LrbWduTG/PvvXU6TYJDDWRf4NK8QTGpVy70Uv6xnHVM=;
	h=To:Subject:From:Message-Id:Date; b=rpW3WrT9LbhmAiDnxiHaRNqbAEgJA+ZEoVKtoLiGrybORAdWrKo9JF88cAx1xXGusl9LUugaCPBiGE4ORFOrriAmxLLwgpu73wPb3O3IRVHvG5EJhUM5tU/k2P5RQtPN62wckZtbVnjF2rr3K7MRI6Pz6t9NVGhhUHLJE+N1k+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I6rPSwnr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I6rPSwnr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E42B0C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 06:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718088502;
	bh=LrbWduTG/PvvXU6TYJDDWRf4NK8QTGpVy70Uv6xnHVM=;
	h=To:Subject:From:Date:From;
	b=I6rPSwnrB/DVFRAb7D7RWWW47D6Qh7wYvbKHBDzspS4Ovj7gNolyEOCn/GQj1I+N9
	 09xTW9glBIMNv3drrFoWkhl+x2XI+isQ+Wvy5DbKkFT+9C29augHrqUMaUpkEYW0vx
	 1d94rFuYlLqSMMGLTiYR+oLx6IhDtEjoVE+XOTs/nc7C+6E3487L1DS1cuQTyBWmHM
	 tiZYn58Sy2VhOCcrk4jgo1VrRMnGFNUWu3rh5blFFpN3bK6B3Mc9LKo21rqVTL+b7C
	 uBPEuYVNS4YAbjxzhur5oJn73lvStjFr5d+gaDahsiSosKF3OhzBpX8Vyt0X49o4P7
	 FOhuKkMjxM8eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D00B8C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 06:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171808850284.32146.3459560208083184780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fefdfda900b4c22861460cb609ef65b68c5a24b10af5b6cd42e41e21dcca481
Date: Tue, 11 Jun 2024 06:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718088502
