Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2603C15530C
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748204994; cv=none; b=kbF1w9OH85y+MVbxTH1+b6utx+59ySfOUN43UgqePNXVienikA0gqcAbdzXKzMNuHrEwIT19+zaaHU5oH0WtX6c3HhhRwwx/uSLHrnrjwXMegUH/wgCZ5SofsoY0XfBGMi7NkS5IzafYbxv5dYlgtq5ES7L0cuDvQugZ0g2Sd2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748204994; c=relaxed/simple;
	bh=XMbKOc0qt1+WHB78ltme+HtzFPjL/km+WGLS3S+RCyE=;
	h=To:Subject:From:Message-Id:Date; b=Tw2HAiZDzZyoaHEEX9whwbCMLs5LyMBh7lurisqmLFxcuEMTAtGjeJ5s45P7QyBi0u8os8RSaVtlShmxa0B/q4PWt1Hma5cvxOmCtdLiXeah1wMSDVRhg0JQmQWN6K/r2YPLKZfV6jckykCbNdfLuxijPJK1PN/CogLOEv35btg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/HgqlxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/HgqlxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D8B6C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748204993;
	bh=XMbKOc0qt1+WHB78ltme+HtzFPjL/km+WGLS3S+RCyE=;
	h=To:Subject:From:Date:From;
	b=X/HgqlxNjWPyHUSSFLKhdiEdlfsA7G3PgxWmJ5n9pXaUuHMqwfL1Nivy5Znw4JBpE
	 AIcDvLpEd0qBpXGiDtG95vqw+4SijfCfEMEi8TNQ1+hoEBA5gco8e8B/Ii9nOKe/fY
	 vk94jhipacpRckCIgNjCRhzo8ZHih+XPqeeYynHM+K1SckdclzR1uJ5fVsAxd/Gx1Q
	 IHphYuWDujA2OogmIRZOaqu9DWS/usyafk0KQz+uimFZfDj4QoAJbnoZGa06gd3/OF
	 AESjtiGvvaA+k3ocWeLFhJn6lPioFqfbbWyzBoR9nQNyWZRbaO/CV+456+R4X6fcSR
	 4hJwt1h9TUCaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E76BC54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174820499357.22091.13898019105393924954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fab93bd3ba9dd709d6f3794777d11657fa8687d4d3f2e3085f54d57bd25c66e3
Date: Sun, 25 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748204993
