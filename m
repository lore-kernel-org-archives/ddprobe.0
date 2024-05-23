Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58980AD2C
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 23:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716508403; cv=none; b=OHPYzKyJAo5/Ohel+uEiSX6z27ZzB52wMmjaH2apOBKFAYAbzmb0vsOEOW2exAn5r/CSyt5o3lG7NBU/lsqBDWcMTkBDGs3UJ5pBiarKgkxgU/kJliRZ81k8SYGll6TM+2UIVH3GGiXFRjYef0LklRaZZpSCL1Gr/wQ2YaS+i5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716508403; c=relaxed/simple;
	bh=5AR2EXUSFdWcyETd81YNuCu3y+Js5atGSKgDiJiteiY=;
	h=To:Subject:From:Message-Id:Date; b=H6JLCSNcV1ZS6dxsPNfPEeqxTDHyC5Hvk7zU82j9HaYlgRKKZ0Ifcm3dI3/iBeJ2HQXhMr+n/NmooUuZFMQvvxWDKkwf+0OjpEpsP1AOgdllkmo2wEbuYKCsqX7PQrUfaMI0mTn/TXdwu6a8wNFftLHF3g4nbtsSHp/ZTaAdnGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hk1qCAkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hk1qCAkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84A3C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 23:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716508402;
	bh=5AR2EXUSFdWcyETd81YNuCu3y+Js5atGSKgDiJiteiY=;
	h=To:Subject:From:Date:From;
	b=Hk1qCAkFWf5KAo8q0o40QOs5jiGyByDsdQSZRhUq+wVz+QpishYmvRRtoK1JMIAKJ
	 ik9agZ3zkAv3agloKljqrrDT8oORVpdgbIfLYmeMX60iCJjiXY16Kp/V5JGB54C82p
	 kH3opl6Ee3MX1qFhBAlmBpWkV1/dygBOoe0JBVQv71NhQ31pB0jFfNjiGI0apHuaAw
	 1RCCqshu79k5TZFtVUvVraGS5H7W+okrz+Wu1Sthv1w+h6NbmQxNf7d3VGiRWCu9nu
	 GaEtCGt8TzSFAMpkx9vnLN/Uakhdb2maYOOqh7wTblhr/QfMgS+iEH+SP8hxrszfy4
	 xo+fPSRkJkVzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C29BBC25B75
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 23:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171650840278.10663.5515341472733779649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58ef3bfebb26fafa00a132742dfac5adc160713038d123a2f7b16f38eea72546
Date: Thu, 23 May 2024 23:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716508402
