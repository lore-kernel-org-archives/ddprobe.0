Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213172C3278
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756571394; cv=none; b=OkLf/3xDpcOaIY69oFvW9caMJrTW0hYxno5faoHNPsCwjJ8axr0EqB9ewvQIgOQnmGJLW8lfoBjGHndPe3Uw9/cW2XnoZ8L9dlUFO15WaRFxLFkV7ntIbtFo3INNG1o7uo0YKtZCndUZWM1Nmx1l8hjgDQHRQBTFjLHwPJLZnf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756571394; c=relaxed/simple;
	bh=PdfAWp2umP85+7126ADBeJtwgWMpbyF2+DQ7xg2LWcU=;
	h=To:Subject:From:Message-Id:Date; b=juFoOYqSBlBBrr3HIlq41wDNucNjt9XHDHytxFCCu06fvGWkeKGnCfNuiu/6gcfmEEeRA39b4PZ+mlnzUUysnooaZpk12IvWbI7shP3EIwbkK1On10MZnjtpjqw5vb3xm6ZzVn8ONc9yAx3lZf39k1KnZROXTZoptQLDRDEmBhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FELOAJF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FELOAJF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0300C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756571393;
	bh=PdfAWp2umP85+7126ADBeJtwgWMpbyF2+DQ7xg2LWcU=;
	h=To:Subject:From:Date:From;
	b=FELOAJF75Z6SdPJS7BtDhrlyFAgpf5bVocPZuWdgKl7yyMVIYnNU6M5YY8orNb+lH
	 mnH9fwq9UToH1nQTn10AAapOQTWa5ArJUN4/GKcnOlQlxNyOU7S5XAzqECH4rD22fW
	 KdSY9GXogzYKkVSY8+SGawFhLiztzA00du39WOr/OnhB2SWTdLRmJScij0Y+J0gXiM
	 TbQ+2DEb/LEBAX6lARdNUbT4XizaZo8TMGfmPdYWbqJCUuTfxhZYxJEmojp1+Zx35m
	 /iFWgltx07OwJNYn6tjX3ihJdR3ku6+Yuh8EwGmMwNk+V0tTIevo9mGXX+wfAr482/
	 mu43T7FDokZOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED9FCA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657139357.27721.2750749733736989560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f28c2592eae35010384fa8fbd0b0b82b8916e7f261a2a54033ee7be975df34dc
Date: Sat, 30 Aug 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756571393
