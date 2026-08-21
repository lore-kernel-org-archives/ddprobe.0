Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 957FF3DCD96
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787352634; cv=none; b=dTXTDV8uReb3koupXXRUPjShjd8fdnb8Vp/9vN/uHeN6hCGTdPkP1fvl0vUZou15ze2eDAadoUsln4SlOz7BgEtr7Z0aD52b32SApzbBCW6uQAhiataXSEhBSM0SuWIpUSPMQ2vPQIXNLMmegeTXPLx4AcOwVCyJL7jVE27xak8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787352634; c=relaxed/simple;
	bh=j+V8KPtazOfyzj45UWGpAGV2w4OMD8YPPT9OCofiRsI=;
	h=To:Subject:From:Message-Id:Date; b=hbmJkbB+jX2Nbw9IvOc97PkhrC2Lww5cEqE9foC0Mc5VwYx3CqfaG57ud8iI/PSAcBvd2dQxENt9ZgclVY/MIH8XnR3WzhsHQAz9y/ZSDSgAAarrFNDjIbhVMG4HLx7MO4X/9A+Xf1yAbuZcVqXVK8k017sXBKRpAAwlFVyWIoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h2JnQ9nZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h2JnQ9nZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE9B2C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787352633;
	bh=j+V8KPtazOfyzj45UWGpAGV2w4OMD8YPPT9OCofiRsI=;
	h=To:Subject:From:Date:From;
	b=h2JnQ9nZk/bp86MVkFN9Vbs4dHwIHAIukykG+BWvR7ujk7Sy2b+9k94m2DhadpEI7
	 tRDmSoF29z1Tf6+YNOfE/N4EyqekXCvKJik1svHpP3QR0eElT1KsZyOiWlc6vGU+lk
	 ldv5Ye2cl6qjduR8rUJOCpI0eko9fQepkfTlSHwXrmB3+Bq/q6e1L262ftkFSsJsqD
	 +zOehXnds4LHEvosWLwoOrK6hjCqrQ7XageUyYKkZdZBeZx2wLu78BfcZ0feB3l+yW
	 QlTE6J7wibPrIl0zvFwzaKahy2qwp0LnKTtE1fAPDrc3bzVdX5TZg7DnhhH7sZZO17
	 NIQuIIs86TgwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA523C5DF97
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735263368.6130.13051524078814809581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03528ca482fdc4aae001f922ab604ba2f171ad7928ff0d86a0ba384a6608e50a
Date: Fri, 21 Aug 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787352633
