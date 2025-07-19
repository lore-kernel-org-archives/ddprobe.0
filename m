Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6D61FBEA2
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752896994; cv=none; b=ehxFQUNqQ96BhebPPKBDfUTvJB0TiXt8//kquafG5vSZYjWgxSwCQ6kfXbvmo20iFrXOoLT/Yy1RWTHHyBAXVEaYe4Qs5wrPX1KqwcxYTNTJEjUO281/OXlJh4MYsvLnEiJsIjJFNkWydOt06Z74O6NLBw0+rVG0eSyeGEdIb7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752896994; c=relaxed/simple;
	bh=R73wAFhZVZ5m27LdoIg1FGMt+pYG+HfUV6C/0t4fRqg=;
	h=To:Subject:From:Message-Id:Date; b=pHVBa80PvGdKrCKippnJoj7fzR0RwjWbHke6vEyutEWKsGsoh5wAyodvAsauBF2ZeTDN57Gy3hjQIs0U4thV2e5fKuU2F6kbT86hjk66Ogqs749CsNk+zOk7plXIjxPIIXvhmdJIfwnAoscA1F9fN6E5sRC7tcRa9xdbq3HdSn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kj7jDZjS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kj7jDZjS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F272C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752896993;
	bh=R73wAFhZVZ5m27LdoIg1FGMt+pYG+HfUV6C/0t4fRqg=;
	h=To:Subject:From:Date:From;
	b=kj7jDZjS9RuKBh0XkmZkYSl4zk944cphNxp2BbvD0uOFQXqa/yBmhEWlYmQvcLQ+O
	 PNw6zGdA3rBG4a63l7NEtlBEuEFhAn4HkF/hBw05QMFuq7YjKbPUhn28fSkX9ul9o0
	 CKjeLCEtqxNe45PJFklsLmHuYVWNFLa6wX4IUct/aT+hDqZV1fkOV7Ph7cmVLY6pkz
	 FOhuHoxmNph8Bm+tvtcQLqEfS7S7ium/6F9RdddlLLY+MX470jylmOl2TT35WGnF/g
	 JSkHRbXrfbH11N2oeQDVFePj23w31MZ3MdvU959+mvtM7Ir0v24QEkaT7ZGA94LYKa
	 oO7OSFAOWqcmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F330C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175289699357.21002.5968385268484269974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f5db53009cbb579e03181be6dfabf198d8fbadc6c68d9ef7f73f39286e83ba8
Date: Sat, 19 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752896993
