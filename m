Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02149345745
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773944094; cv=none; b=LccMDu6X7qSqK9CvS5yHhCpVVnTLD6dkp7OgBVB4UTkHtCaOhsMWE0WYXUCgMp5qF5tbDv9PuRgLaMcSzY9DVuNYmGthr43kgAETxI+2sbrna6ZRraYOecmZv+IlO2fxi8H4UVkILzhr23DckIF/cxfQam7vxI9/gK2An1TEKzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773944094; c=relaxed/simple;
	bh=O2mOb46WprVZbckbbaR21QJ55RVtXzXvXU2vXnh9zxU=;
	h=To:Subject:From:Message-Id:Date; b=SjrYnCexV/O1aXSZJFk81IeSQl/DVNMzwTlGvcczq0gejJYSgpphoxcArdhRv/YwEwjkNX3Xg3HpzZmBXASUaofRlCpdOGSw15vNwO/T8lYUOLI+vxLl2ngnIu+joaoetwMiNJ2bivP2aXdOX9Xgsg0YLaZDUcY/JsFKsOM57fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kLdqStIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kLdqStIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A204EC19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773944093;
	bh=O2mOb46WprVZbckbbaR21QJ55RVtXzXvXU2vXnh9zxU=;
	h=To:Subject:From:Date:From;
	b=kLdqStIokNYSwitXxFGSikPXav4NjisoX3t9T+XLRYBhGLtEh/30UeM7PDny0C6Pp
	 7FykBK1CJFFulUdK3xUe8EvE9vZKlOGEzUxNru/4ybkR5pFF3Hvll9u0yBL5Yf1TWf
	 iGn0c2k6rhJ8b22T8B/plkxAU9Wxq7Uk1ENX4xa+isH4p2uJz1b3qgQ0c7tvFydpCs
	 v4g8cpM8eBPsPZ9rCHPqGsH8c+kD3+v1anvwluovFVA0NLusOAnX5Sgz2CwTppISBW
	 4a6k3CjlIIAA6Mh/E+BuddgpyyteIUf/rFDGv5DNlO1QPLXjslNkfxrXnH7HXcg8Zn
	 yYHmI9xFIpLMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD11091905
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177394409358.21744.7405611135485529725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02067995893ec8b8f3da5f3ad8c219d25c51ccf7c6b84b995b2b994fef968b7c
Date: Thu, 19 Mar 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773944093
