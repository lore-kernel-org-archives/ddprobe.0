Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08034EBACA
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789555835; cv=none; b=qh3gYC/VgCBH2lLYi7kdS9V52c/GjzKgklMZgoNoGBuSR8UmaaKIPrKMrwQ1n3fKgrXvCPu+9fieEZF8uoKPRcXrrX4cxOv9y4lI/LCwH20uaaiPh9HWo7aW0Issd1je3+x4Qs8lfeE+O/8jr2gQ5rPJaW93SJAFS+a4okiya4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789555835; c=relaxed/simple;
	bh=QuAhVr/jUFETJpIyji8QB5pbSuulDnu7BYB4aBknicA=;
	h=To:Subject:From:Message-Id:Date; b=J8xC6fO1NZvGW47S7x4kMzMA1vfYtMqCq0cP61fnghosGWxSuS9hANQkgp9GYz3DISDrG7RrJUE90u+DaIx0RyTOB7ib360e78BtkcIanpEu6BgX7dKzJwfXKS/yls1ToRa6jlvcuTuTobGWdERgoqQMzq1cmj2pKEBTjvsxUOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K15vcvw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K15vcvw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 07657C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789555834;
	bh=QuAhVr/jUFETJpIyji8QB5pbSuulDnu7BYB4aBknicA=;
	h=To:Subject:From:Date:From;
	b=K15vcvw3sUd7CsLoo2Bp8CpoFiexb1Ta8Q53TyVhI8sQQmI3kFU8hwdJLHAJw7Wqc
	 qjbQ8ETibWHmLwT+KPtIGo3IlsDCjyTcmf5qdkGAe0VmRBnGgtFrkJsWsXcizZT7iR
	 Fl7Ol4tZZSwgInHkYHJqR+4VTA1CEaEJZiYIzPpz4NKws4+19cMozMLTIMmZlzfDh1
	 0IZSCP6MCUGYfm3HogKyJEwIbkJd12VyXuFQ90UqdoQ1b/uGRp8mSlK4Qj4Ie7e0ou
	 FHgdScR4NagrMhgzNeRn9J3SPEKALiyT31YbxkOPZq4GhYw68u7TH7WoWG1LboZqjZ
	 E+JuyyfWEgr3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BE5C982C4
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178955583374.13668.3231370530952168093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40fa67920b014fa78096f14ebd25c36fca017fe657a235b82b397e9e4ef25926
Date: Wed, 16 Sep 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789555833
