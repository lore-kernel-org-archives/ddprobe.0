Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A60D383329
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778549434; cv=none; b=FRHsxZrrWADd0k6tVbRBi3nzc5XxbtvJrI/uhcrKY7E2Vc1au6YLq26b6mZ1nun3N14PRJxnDNXaAsf17UDHZcMpvd8MLzF4+y1IBtUQYjtxEcqaJS9LK07sJI3oxeoCbAOEqmkXM4QEAx0DPBc2NODp5/9Q4dgT0wupVG4O0oE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778549434; c=relaxed/simple;
	bh=drz6GxglkFzKYSksa1DPrTAfbs8p3r/kNoGkIxc4p6o=;
	h=To:Subject:From:Message-Id:Date; b=YHeIzLWEWxLxEZV9YcjRB4nbKxFmTmZ5fOgTB++vvx6FFB/ZtxE5HILfTnlMR2/YCC7/mNYNn5Glc5OaPDVzqIMhjT3vSObOiKo/swr88aISsl5EP0mDzu780Fv4vNKZ0tx1YocIYnZMLbLWNV6g/ZTkB9FnJJxn1rmU+wiTGxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7eaOND3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7eaOND3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEED9C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778549433;
	bh=drz6GxglkFzKYSksa1DPrTAfbs8p3r/kNoGkIxc4p6o=;
	h=To:Subject:From:Date:From;
	b=b7eaOND33DIs7MgH9yy8OjDCmCk7i9DtUrfxJnKCihjfW4To+ZAgZ8vymjK4doqkr
	 BjVf30PDWmKSuUDAbOIQILQMsryYdwMDhnCO0PuJ+5Zmfb1xGtJi7HdK9EBj6zoW1K
	 jmUBd0UeVb0Sh0nJ4YAyHRohXTTFyfewQCNBNH9im2u4M4QktObZV9hkqlIZjkFgS4
	 V4q8o5BU8CYr7/8XnNi6R0h3Ic3idnOjfmR133lXKLP9xPc37iLKpi0hsQL/VdcxVd
	 W3+NmnIQKWFgCN58/OUBReaHOOR3WWBxBj3Y8sSoI4+gZLqjCzuLv9+5FzLiUO8aCe
	 WeKDkk0cf7E/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0451CD37BE
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854943368.11357.14033028354843818518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d165fdf2a4e26ca312ff7eee84b3175b194b1a11ddabc0f3d80769a01df6751
Date: Tue, 12 May 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778549433
