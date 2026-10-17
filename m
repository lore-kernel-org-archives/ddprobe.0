Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA6A4CF489
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792251634; cv=none; b=cR0scrIk7hvEh78loGXyUVINAnBy+eP5ZyKo5g+0emsxFte8Dmw36+WHCpNjIa3TTlOlsL++C0WYVOrqXaDkCZ8y7M7rxTApzdlaeqP4lvkzdUoHNhnoFgRSzcANCDiYNjhCdQXlBkw8A3UTx2Nso7pwHhvc0SShJQnGPSiAjp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792251634; c=relaxed/simple;
	bh=t8rMol+LWY0ALAsRhDHOpG98oJx+ZRNdMsW6nt7jF1s=;
	h=To:Subject:From:Message-Id:Date; b=uLIoC8ft0RbXguoMDKyUXCsFbOBxExzNESIM1lqlFGn08ayC5DHYVdMoZC5+dpZ2FpYesgK1OsWFnHpIZulx6wo/FHEYIx3twaoEquYCGPZv9biZG0zSU+iR1s7WDwmOcWICUvd7aeatLMDfOuBHH6LN91VYvSxo+DcIZj7Jzuw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c87mSfso; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c87mSfso"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE177C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792251633;
	bh=t8rMol+LWY0ALAsRhDHOpG98oJx+ZRNdMsW6nt7jF1s=;
	h=To:Subject:From:Date:From;
	b=c87mSfsootwMywwAb9yNeSRv3nE4I8kCXb2jXialSl23YZpduPk+i85Wmdioui21x
	 nP+JZzkfIYv4Zzj76rgwA2NnBQFMB9x8aC94IteWOz65Ph+LSuR6Zyey+GGo8SYTBs
	 bmF62ts8fJCMKq0mc9Yilue5ifsVRWIfJInsnbz+ms7P+m6VkkdOG/4sfCujdba+AS
	 KONk3ias+XK0Vf9Q9vEOUf32NjkxMn8fMPHriaoXe9BPMA0h8Ur7hmWXOfKTlGyAR9
	 dQYmpARuGXSMEOZCSyvrdylA629H81E2T0vZrunMTsVuBTrPu8D/Sp+/tsZaEJKfhN
	 vKaQ8ujHOalRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB86DCCF2C4
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 15:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179225163369.28279.5399711876641734275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb328b2c6137e53a2f3cf585fc8b9ac75c04b80ce86b324f78f615fb9fd37562
Date: Sat, 17 Oct 2026 15:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792251633
