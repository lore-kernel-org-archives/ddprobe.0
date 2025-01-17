Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C59925A620
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737081354; cv=none; b=Ngk2i+cWvU4r2QaV9kIea554FozRdZ6eJrpHeYsro/aa+XWocIHl/xAshNT51+sEagPxSxrEQ9iGxVGiRpEZlEXpCuG3/FLEOvKWKuKXd7zt/c4gSaryHdicW9QKA+POle63X6xAKZKny1fja/E5DCER5+fWZ1lnovBLoabF3YQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737081354; c=relaxed/simple;
	bh=pLmM9WbxYTNSETC/7YldOPoc1qAUdkXIV0gyJqK6nu0=;
	h=To:Subject:From:Message-Id:Date; b=DVx/lHYC1p7aaES6uii4TODabxJKOu5+d3OyA1O51HYS1qMUTfZycBsb+yrGGCRC8m1qtOktI0w8kwgRITXBFyFL0LxaqY4q4pNxIBVZM/EYpuuQZfQNoi71lisTSTi74EVNKciohwPi0K99JXMuAdJTQXXNEQZPH93tUI1h53o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kktDCDJl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kktDCDJl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA8C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737081353;
	bh=pLmM9WbxYTNSETC/7YldOPoc1qAUdkXIV0gyJqK6nu0=;
	h=To:Subject:From:Date:From;
	b=kktDCDJlNT0Rpzy3IX77frx34HWWYe57vPypmFz2sKFKZqvFD3encQNgTRzQf/rW2
	 JsZfagQUMojEJip1pUaLXFoeeFfTh2Y6473sGoKO9ReX1APa5L6OvkBvnjPEtIrC99
	 uVSXnduYlJVFgk4p2yWQ9GQohIV9FjLyD2ZxJhHdDnAFZ8RL8XSIT4E2ewVTzF4sww
	 ha3a90qCGV/S+NpVountO49X5mFEOPILHKs246NPDhvA5zwTi1KybNFmcygRJ1jEjx
	 k7gVboA1zT1wba+Wy3LvC3oDK/cBk1zyzX4+unYMSXE6nmTfbCNUuyNKPhQOj2j3aK
	 k8wJ79shtAfrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EFBC02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708135359.18724.2182271763623770451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf99a4cfdd3435db527dba9a1f26047fcb7d139a96e5a51ceb989ad217cf1315
Date: Fri, 17 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737081353
