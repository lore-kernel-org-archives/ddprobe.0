Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12FAD284686
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767371034; cv=none; b=L0vhooYtjSfplI+Mn8w64bD+baxCDygfZdq+X1k7lT8DRdQ6259/5KAKdrLGIJb+FLoaQVoSiZFt4Iqs1nOo9EPgk/Mr0dv+x8upcrdmlCbTzGysA+GDrayulVETO5p/WtAmTMPkKFL3nK90cCazpejJ/80WhpPaCWOwskD68RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767371034; c=relaxed/simple;
	bh=6YJd9gE2ncq18jl2V4m0IQ0WlZ0fLL2ybypEqZPrlA8=;
	h=To:Subject:From:Message-Id:Date; b=p6rlWclyL6XDPmMkOkESpZFu2KPGv8KXunpM4yvKh4q6ekz3zIzEzCEU3zDAc386IJdBpH0l53zERvKUs1y1wTMIgRBM7OxIHz9SZ8PY2SWViV/3u6ou5AczdawIflQ/SnT5kRsgIn3jQzttur83Jsr+lDR0kHS3byUAnWpZmN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCh8EWfM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCh8EWfM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5FD2C116D0
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767371033;
	bh=6YJd9gE2ncq18jl2V4m0IQ0WlZ0fLL2ybypEqZPrlA8=;
	h=To:Subject:From:Date:From;
	b=SCh8EWfMcAH/0RsbUWaKvQcqsJeOVzeBW0kb2f6gvDtjoEyAueQJ0VJrquGpQ3rUG
	 Eaf6CloHJbENpZTBmr0hfF1sXJLFc06VPgFWT596lan4Zv4Dxk42p1q7TPRItqER9M
	 l82RgFzt1vCQgwaIFkkKDFeKWIyRVaBJS3cFX2DklkSQ95BEw5L3M4KzkjfDelhiKk
	 lw2apW/ujPPn1sEF/MOCnAP5T7g8oB/z/i/r7fBHDdAWL7YUacHRdW0Q3k2DSGOxl0
	 VPU3xguwGLEyZCqp6ooxvHL0QSJSIi4qTL9P2yWQIQaLsaW8PVEA0qr3BbkFEyqfAB
	 Du/IJyh+mHzYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A529CFA3728
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737103363.30614.11398526076629549695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c542aa02f0f28a9475c8b680505586f47fb357b4efb4f5814b4ad4c72b28ca
Date: Fri, 02 Jan 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767371033
