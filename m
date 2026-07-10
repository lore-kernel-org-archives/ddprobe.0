Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397DA27727
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783709314; cv=none; b=G3LuvRhXFdYZZ+oMHoDSzjt5eg1sfRZ7mUFGwFCosxnaFTSDSwBHa2CqhX+ptIHTOe2iJnLdsxO1RPrFM2OS0stOO2Z9ZbNDBd45aWcizNkH4GFF9oAErcdm2kK/A2RzcIWSKCFWnXrWdNwpEBcq1lmD3LOKIihftVkPF2B0Mzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783709314; c=relaxed/simple;
	bh=GmJr78gWTwmS5y/q4KAPAgz7f8cU+oxaK96QkubMOLo=;
	h=To:Subject:From:Message-Id:Date; b=pdDCs5E2fKkD27GIsr1qQ+U5q/9r/deXmOti2Bqu2xlLYU1hqK/0CfCdfckBiqMmv7Nk7Z0ORpNuSBYWaQDUvnhxNfdk8YpkxUAZmHYO21YI4rS4Muxj3PPCrtK7OHFnyz3J7nZOUBAf4mO3IzKpdMnMNXYP3fKFo3xaHI12Ocw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wztg0V4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wztg0V4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D19F0C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783709313;
	bh=GmJr78gWTwmS5y/q4KAPAgz7f8cU+oxaK96QkubMOLo=;
	h=To:Subject:From:Date:From;
	b=Wztg0V4n+55XtM2DWrPzmn9Z3tRf+hlCriMYGxfKy3yBa3o/13FU9lkyKTiqXfEG4
	 ebxICAeExOMslTOC1uA11R71NhHHbHbtIuU6GLVAOr5D6BGZhCPtAcnr6sIPFOTwWX
	 2KwZcd451BWb1F9tR9JWQe5345txJ9Tz1x0EwVDucXYIlNAK3ND1m9TY4u9hMjtEdV
	 XBG5H1Za5QjBZQ1WLREUnlU68FpioinEBR+YIfr1bURIjJtj3lg1qiXU1gM/E3hCa7
	 U1j6t0WjbFJjUzjEe6R4vRTsRuyONenQGpLFK0maXn9VsIqhCAxwFgrEmCHk5oJc1B
	 dqnLR+ViHwhew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE386C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370931368.667.13532179372113093988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7542148588dae716614771e9ab0b2ff06b01ecbec6c01db16b2aa71bd6a62215
Date: Fri, 10 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783709313
