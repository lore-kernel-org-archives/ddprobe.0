Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753EA1DA23
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766865834; cv=none; b=giNaSFUaonhuuyM5KJlQQVk4iusE4sN3yqJi3Z8eYeecmvyOQ/7CFP/PuZ/uax1IvO/nvreX1y7QGKNpIyy1gZi8nA9ql3Ta0siHoaaCsrrdx99pLHjKhvBQcgY8nYUEY9zIn4XlTE+p+ZKUIe24DAcYOlyTth2SO5RNDl3VaUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766865834; c=relaxed/simple;
	bh=n2Id5A7NbY2wDmfEifaXzpQMS92x2L19+dBx4Ersr3U=;
	h=To:Subject:From:Message-Id:Date; b=ntfSWAQiN3gTVbR+jODlVUsEmJtR98A0o/D92jtGlYAkQHIkFiPq+d7r52p45lxilMc+cS1AtMvFbFcKzMApaDZgD0dXLCBDmk7oYnzvY8Slz4+8T3iseVlcJJ8GMduom3Q90RuDpRqResWP6KHj+SeWzPx0sPQ1ML9mEKasm/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E+ySssa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E+ySssa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDF55C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766865833;
	bh=n2Id5A7NbY2wDmfEifaXzpQMS92x2L19+dBx4Ersr3U=;
	h=To:Subject:From:Date:From;
	b=E+ySssa4GIZFZ1bomdX74bg9E8l5GYDpV5AaFmfc9s5QNwqnll2Nx8jVUimtPwhrs
	 rxRg1clgfAAGnbdREib63zr9I/kVVeOb01aXnnG5SgUPAMJSmCrRqYrpVWbPDmSKp/
	 oZT1Butk2NV2sqCtSKeOdOlFFNxq0CwHrmZl3YddGLECPqazFsRg09kTMUJfxNXWsh
	 b+dxFZiAjvMKzeWRtatl03f+23ZuJZKn9r3+LVhulBtEdwuC7J47KHpWZ270J6t4s2
	 Tsej3t6toikdWgLlEnR2ZhAsjnQH2bc7JICnEgqgAwF7jpWNp7fXTpeminqslVhbG6
	 jBsIgh8bvdDXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF8CE9270E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176686583372.15188.2611933946713493124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e07d4fff2926304e3940596bcf27305ed1cd9ca015ded86ed3e8333f590aad24
Date: Sat, 27 Dec 2025 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766865833
