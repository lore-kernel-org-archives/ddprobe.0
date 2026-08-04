Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CBAB4399F9
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785856234; cv=none; b=LeJ2iEl1T5TTYhXmkl2eK1bMRcJ4ejDAcbPjDc+Hk0jhP36+/IWXaigzjX/PkFFbaiM1V7FYLB3a4OlBIo54wyrbdPW5BWKbFn8k1xdnNTlakkDXE+PAUkrC1JngwP61PZXnX1pEv3OdL7RtfxoSOXV+Guvcivt5Ds8f4jL3H7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785856234; c=relaxed/simple;
	bh=ZshU3VPXeCl66FCPLh99gp0PDtPsmYkRrQeX+I7Zmgs=;
	h=To:Subject:From:Message-Id:Date; b=CJ//v+pDt0tzbO/59uMg3oEv+Qe9HgZ4O55Y8V8IHCxx7tgcw8FapZaeG/Ye4Yd1Z7yhPSCIiq8PFbAGWcTjlfd918+KMFRx8AFYikhm7LBIkQMD1WYnm8KPYCAU+AdBaV2/iCOz/MWBo/xqcVgIUn8mO+2Ne4sSdQeq5GHQj5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=slJj1yGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="slJj1yGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CDFC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785856233;
	bh=ZshU3VPXeCl66FCPLh99gp0PDtPsmYkRrQeX+I7Zmgs=;
	h=To:Subject:From:Date:From;
	b=slJj1yGkIOeiv5UXEhCgnvSDhWoVQUA69YXqFNFg8BoIEuIQxHvKt/n8Z7pU8HAlV
	 HUgQrwbUo3paIZGBBvU6HJD+WA9Wqpgx7+xHWm/8FkD/JuoNf97eJggkmHrUrVaxh8
	 Y+2RPjpmpDnN10wXCnrPnpJFtKluyBEh3t5I4mKwSBFXPgWE1LlYZ9EcAAx0yjqkiT
	 /NrlBmFDg9iJ4nFwDGQDwu+p8nEvsxScLN2IBEpXJ6emQLfyL1vAX4WqHL8rcdNdEE
	 wvCN0duz0l9xj210fyQfyzaqxP1PQUr+yccxRsnK8xFB/YhHAr/NuuPkX9Exj3RVz8
	 J2oEcRR2Fipqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0EE7C55184
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178585623370.8781.16868435419071989625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53abef69e514346ca3de4cb87f97242b136d730538ceb6b1a0ce9d609b7071d1
Date: Tue, 04 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785856233
