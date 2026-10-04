Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483EB421251
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791119434; cv=none; b=SsjwKm9KBYLxBpLrd7ghHky2t26HkHjGOqD3/4JPPJ/3Ym3pxBHNFTkn10R8PCespkCLA7vBCfygm8mJdR/nXkMMam3eu3hTlp0oJ3v1EaF+PAvzq7uO2b7Bf5ErCcuAUNFgDmicctgipC0VsxnpP8hIZhBkQaIwJPYT8Qt8Bj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791119434; c=relaxed/simple;
	bh=al/Hy55Xa+tx/uIm+hJ3J58N8Eg2OwcSnndy4GwXFUs=;
	h=To:Subject:From:Message-Id:Date; b=NzyKjR6dTV3VlUy5xelVfsoAhnrgLKoMa7KE33ZPSqQZhkDqAUIN5fqyco+prZEgcyDFUmBt3R06zONxMJb+Wp6h5LlVYgtgajN87p17LQLjIqpltPJL5IQy82Leq/CDqLKvfIiMlo/7+KwQttnUjB4FBJSL4xc2nipZavBRuII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bks4oOir; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bks4oOir"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2014C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791119433;
	bh=al/Hy55Xa+tx/uIm+hJ3J58N8Eg2OwcSnndy4GwXFUs=;
	h=To:Subject:From:Date:From;
	b=Bks4oOirVpBSCI/0xL5yQ4AU8pgJyTgeSoPJ2Ekp6KhAI1+jAnxcBZGGiR7E4gVd1
	 PLOq766cUkRmQMEmr70uJ5O/kqn3E9sCcGXx7R6Nc58ZjyaHrYZMyMOzURwNgmXJQq
	 h8mLJNCjXgtUDawAl054sxPA9yCW+5K4M77j0ICp/0twix2WGfe+klLLyMfrOGv2CM
	 f1N7jQkRIxvLA0Ir8/oAdnrdR9zdthSsI7UEYXFghtnHEVr3euDBAaeQ7yYWVN0f9J
	 HRiAEHtgSXfkV2S4GJSSOmfOVIAT2P0UanpY5pBhRi7csUUW+P1fAmZG/GcsRepW1o
	 Ofw7W52J8kw9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFBBCA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111943368.30748.1848460218160687443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa854ed149b7c960a1d30d03a62e2e5ff97cdcf417b479be3fb46897951d3891
Date: Sun, 04 Oct 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791119433
