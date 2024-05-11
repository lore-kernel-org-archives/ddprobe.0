Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADD81CD3C
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715388743; cv=none; b=Qzf9dGbCZRM68HDxLHALx3zRLrbmY0nHp3tgKlwRGkwZXBxuDXmK948tDI/ufxVcyQXdlkCiJZbk71i8kQP6OKlxijZBxpEV8gxi2/+eiOZHxrlkkAQ1Qmydt39eoDXIPoX8L2nwoW2PMMymHyF96m5umeqWzm3SF98Ly+5Iv+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715388743; c=relaxed/simple;
	bh=OeSMxTRM2phf/wAU1d37MxBlaQnHrFeDorAcUJS81Dk=;
	h=To:Subject:From:Message-Id:Date; b=hxAM2n+IZuYXg86pm9RXaKRGaMN6LlVWkLv+ay9Cka7BiABo1ONjzxujr1rdosBTYQmlMMQ8EpRytdtkIn+4zDQEGWHy5BmYCZAkUAOpXgMoYokQ0MQUa3kw5D5IhhXbOxGoVS1gNBEySgQOGFGnF5/wl4uT6IipU56yKuDpWpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUu0e2S7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUu0e2S7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE663C113CC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715388742;
	bh=OeSMxTRM2phf/wAU1d37MxBlaQnHrFeDorAcUJS81Dk=;
	h=To:Subject:From:Date:From;
	b=ZUu0e2S7XZ6KgolzTfHE2j6CNozYrR5uNiMtOlHHskug0OBwaxVS85RBXjEtM6iFF
	 9XJNnhYFn5EOibG0TTHDHGMCtBo7XVpqzCkl3R41QDayw4uf01ZqAdOBpgJ6xG69Ey
	 TXWjCmP5HnnET/RwbHcZARDMyQ6Etsza2lSneQVTqmuCGG9F+wAP6z88XiUOf3apQC
	 Zf2bCCZynJ9NLQWaTwqWUSgfi+eQqx8m8ElBmc8wqtgtAYwlnNeCEwi0KfQCg09hpT
	 map+qR16oF7HiTsg+jgnBbBQG5cfuN7GhmpEexD2uhUDbeJU/wfRcY7/pGfeYom+US
	 dsu7EZRW8hFAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAD3C25B10
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 00:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171538874276.27199.3628106090996979306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29c5efb9f95827d738b8814756bebf3da5eb924309b8332c1d2bb2b9f08bee5
Date: Sat, 11 May 2024 00:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715388742
