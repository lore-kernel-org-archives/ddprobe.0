Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 259643F9CC
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724104554; cv=none; b=uz44lNHqqeYMK2fbeKiRuHIm4zJVY2mn6Hfx36oTuojQ4K6sBB1GuCicmLx4hzc0qaTiJuLhssAumtTXbp1vmjIBubTZjcaWtUOqe/X0gE1eBCbPVAlZMSJIbiKaIv+c13AxlgWbQqTl6ekGrDIlUKdtbDJiJzdiX/Tl1l0QCkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724104554; c=relaxed/simple;
	bh=CVImRMqykm8OzvhO0L2gPp+sRz3uVqjF99X0ZPqDYIg=;
	h=To:Subject:From:Message-Id:Date; b=nbfTZXzzpJkWqX7I61IVvCIYfTdIC3OJUHSyPwOrMRBK5jPZ0v789iy5QlrZvi7E8Z/KDo1/9fkSHhZ4YqG6Nx+v38KiVjw2vasBEh+C046dQ/xt9DlzADnWLrjot9fWpeytqqI3OKKhQ62OxQl1ytkdiYxb0O7WhH33coFudJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X6nBaWP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X6nBaWP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18F6C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724104553;
	bh=CVImRMqykm8OzvhO0L2gPp+sRz3uVqjF99X0ZPqDYIg=;
	h=To:Subject:From:Date:From;
	b=X6nBaWP1SUpfyiyF8hU2N+Hb+/QEM1W4ehuKwj+A9mpII2lkNFAq2ijG4JoBjl+H1
	 Q8xPtx02C7OLMUYLDXVJehp3/un/q+35mhII9HOOXNjdWurxIJH4kr5pFf8JOMeThC
	 oxfv5RmZDSex77Uv8roiRYan7UZBqjYRED0Ysj/bvtqWNilc0Pky56HlTaXULhcYsC
	 /YcbBKiBvkPMk7PNVlMfwvYIlzVARTjlkedbTr4jJcu4RjUtTvCcecOlLSHd8nDHI+
	 MUnN5J2b8WETujylMmTSNCHf8dbZOk2K7k0SC70rDQzb96dIMVj1KioxWFzF9a19fj
	 AmKYstKEUXaEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91556C3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172410455358.17104.12277515822127199483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd67dd82756958ee15549a851aad1be103d7b596e5c9b2fc30e428fc0da39c0f
Date: Mon, 19 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724104553
