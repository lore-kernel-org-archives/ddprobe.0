Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62E19495E5
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718971943; cv=none; b=SdtqXs/rUiosWZJN1y43nwBYxYSiXcXBDDWj3DZ/l31sfb0IbvNe7u2CzZPBlnJxilLlcuKNjY6ETRYy134hOeK7H+/FI5CSwYmI6dDbFlLXYt+e+pHARSLMdL1zpCa2SigV0ZAZrfkVbevZFNxmgkj5Ho6V6aIzAOe1WQtnwyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718971943; c=relaxed/simple;
	bh=KnmuTm7pvYioRM0GrfvRUiE59frIbia2X1uv+jV4hgA=;
	h=To:Subject:From:Message-Id:Date; b=uiJ3diu1L7arjDcukWG8eYRns4sHYg0nz/CtRZE5EFCHpYsrms0+Y0WQTsmzkJ4qmQ/FTs6dL2CZONbSB0abGr2IfsSrr2WgfH5lx5Uxu8pCh2NMWFrjotcEBP0IToEscBoyNLr1nQDq42cP+Luf2jNC+6o0pwdctc89a0lVR2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cfk865Kt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cfk865Kt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E159AC2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718971942;
	bh=KnmuTm7pvYioRM0GrfvRUiE59frIbia2X1uv+jV4hgA=;
	h=To:Subject:From:Date:From;
	b=Cfk865Kty1z3f9ABAULgzKN+g/FfiN24D/gU8NCkB36S6rJXAssQ41jiFwHEOs3yK
	 XhE6kgshB5sBqATjPKECvkf82VmhNdv/8+kOKzAV/dTbdGfZEeZ6GNjqct+MoJuelB
	 o61ZjqhHsGMpd6gQZm2e0dxrSIgfi3cowScj+8WhZR4JLjgLMA6W96i40KV984nVym
	 EkYUyB7TjZP07xUioZu1qksUS0JLfx+n59eRvCqrjU0CJBnE/8oBEQFaddhkCfVLD9
	 wzbJZzwRwOmi/I/NA3zl/I75fvXbcnTbsKa4y2VVK2DKeBtlXc2CvpfA0HRa1zrshj
	 ZKJQBhwFjqTRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC707C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 12:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171897194282.20493.5546587281222400784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 364e777dedf7b3e2bbaa1c678f6c065d001a5d6c9915278e2e4e4bf50026cf65
Date: Fri, 21 Jun 2024 12:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718971942
