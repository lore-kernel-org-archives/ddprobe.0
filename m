Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B97519D8BB
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724712354; cv=none; b=sEWFHK4MIJX3F7V0KoCAoEpFWWG8IOmcW3dwXOV8cHSb8f42OlcptZxkFmGI4cwd2/xmbtqTiikq4fjPt5+bU8/qoMaoA9TI2AKRKIZzlyy03rfC97y+cfa4K3F2rbRhH5dGer6l8+Aks79wtDa5NwusOmPJW1cn4Gl+O3tx5H8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724712354; c=relaxed/simple;
	bh=s04mQL4o2c6uOllA5ViRq+ufPmlcs3dTEGVjRU0/v3k=;
	h=To:Subject:From:Message-Id:Date; b=O8biqS2yeBuFnJbsn9XXYbyRKtLLeTAN88+Hqa2/g3/3KBtxlA3iXIMEnaASRgifPAKMs3vLaTsIaQYi0Ofjuu713CFFBWgGOI37dWfNHDMDNuWEdFybIeFY6CPkzqSofWlnpuXajrsnujNRbEQ1fagV+l8UuPdtuuuvX7XtyC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOBW2clW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOBW2clW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CC6C4AF1D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724712353;
	bh=s04mQL4o2c6uOllA5ViRq+ufPmlcs3dTEGVjRU0/v3k=;
	h=To:Subject:From:Date:From;
	b=VOBW2clWoktuwJglQw/waGickAploguuUc242DjTJ41N7kncuMEd46EXB+MAOojuL
	 2FFnnEMECDN4Qs0xbz5nY+cyNhu7PtxzLObjpTz1wj8vx80EwQY63Zi2ebPZ8Cc9qI
	 mmI8GQ3TuTbNxsDRIudNVJuRQppFXoBphcHg6eomvAKjdEVfZikW5nD2TW1Y3TQAw6
	 Zd5htvKWDIFjcA9HMclQ9PGObsoLo1EBG5JQ8/QQBI/EP8hjePEBcJanrDiykmbcl0
	 hHJ9RsO2/KQ47O6kxv7nZYXSQbuF8jMBKu4GgEUO4Df7Nyl8Eq/mRIyMUg0pe7yEZZ
	 FphrCyeoA60rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F94C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172471235358.21736.5556893162959214080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ddb908ca9f22aaff4464872d4ce26697cf128313ad488d234dee27599994fb3
Date: Mon, 26 Aug 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724712353
