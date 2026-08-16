Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ECD837F8C4
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786916434; cv=none; b=r4BHxJc5f+2oqWBxcUbAoXAI6kSRZlAaE8hWNZ67SQ9b5N/dwMMK7Z6eiU/kzffqoi9qoGq2sLbDcAcm8rLmMcZ32vP0A4fP71vNUTnBA8s3kDDAioWJ2oyfckbtGpslwtIgs+LVQkqlN4GAGmffK9x8BvgbyC5vHNFFgfjIK6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786916434; c=relaxed/simple;
	bh=4I/6BZR5haiPPYYInfGBhG4wFZkbUn3r/3QqUp77UVQ=;
	h=To:Subject:From:Message-Id:Date; b=g5Lcru2jnckMrxT39ubHftTZdmZx0SSLbpdPaLt9Z23CAP2jE0APXlefiPR0OesMGNP64x4Y4bsPiocMUgXDk3effVGOhlus2UfpkrL59ktNSy4HYuIHwri9LyN1cyNoSsPNW3mC63KPmayRL3IDCWsKNXbKhDcObm26rv4ZERk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOT2QiMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOT2QiMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB958C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786916433;
	bh=4I/6BZR5haiPPYYInfGBhG4wFZkbUn3r/3QqUp77UVQ=;
	h=To:Subject:From:Date:From;
	b=SOT2QiMObfmnETSBGlWHt3+1LpZhj7q3TbHvpf3i/64Jqi62kvXuDNTtSaCmqkFIM
	 F88kIQQ6kVDtI1abBjYjOnc4ambedShKv1lFG9Zr1YDte5dgMytfxYwS663UtAZquJ
	 wcqFz6EGzr0Q3MGGvIgYDbMsqvK4lsUC6zcRP9pQtux1vUMxNaga6Zk3oue2RNw43K
	 SLvZrHwe1UMuREwsE3xYZ2Fch9leQDsPp+gM1E7o4Yt0p1Ok7KFX0qgMGThYrPJXX3
	 As/Ky5w2gSLXZP+M+kfdRtBX+1GsetJYFt9WdgpARPhPMpFJ03RG1/l2hm8nALxrkQ
	 vj8rAOag3drjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B683CC5DF66
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178691643373.26381.10627205090868478461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efd9daf4626380563f391c7ad6b551155732b90a63132b6be761f729a365d86d
Date: Sun, 16 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786916433
