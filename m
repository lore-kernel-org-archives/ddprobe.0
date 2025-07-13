Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7592877EB
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752430195; cv=none; b=oO6xyBE59zzWSifE026I0j9ihnN8hSXIAG6UmPED6S2CSUAXweSo7031gBLdPw2gPDZmCnwKSIbalSs3gSzwrglWUafYhB5JN4ZNVqlH9xTTow6I8I1GNNG5vPBwCvTDr6/dKpxMFoh019FCoBBKwB+90YWSb0PhEUfoozYLBEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752430195; c=relaxed/simple;
	bh=LrFAg9xS6WCPVG1aUHrfIIqawEfK2qRpYQ7c/4T0ow0=;
	h=To:Subject:From:Message-Id:Date; b=Qs4OsPQh6v/q77T7DoYRU1EEaPnEca5QGc/SSWZlwYGIkqUBVWoDk8w0oSOZ2mM4PEh0hv+Y7y8mlk/fzily+rGco7+zAxFw4ZUNdcNmBuOwLXGN3LKByRtguGXgHDyaKKkbfE76UixfP7m3+BEcG/vCZyocaZQJkdi19eMD4Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4Bj4abC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4Bj4abC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F354C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752430193;
	bh=LrFAg9xS6WCPVG1aUHrfIIqawEfK2qRpYQ7c/4T0ow0=;
	h=To:Subject:From:Date:From;
	b=p4Bj4abCB9P2v/m/B2iYhkD2JduFMxWVYIhk/+PpAgdfkcUDxpXN4XkyUtjtrBfD/
	 yQ/17h48Fr3XoYCPuWtD0kD3QtnBJzwBfhAYrUZZvI2A7oRpTNiX7jmKWUIt4tvV0x
	 +CoS389u0jufSM6M0uwQ6cFZwuFtwO2N5pvD/xe4KRpbN1dIzwcJ8EkEQM6S4RVPEP
	 SXa7pM5JPY3OQo+98kBovyDM3pRbSDivxDhktg2bDGIXrq7v7Y9nOB3a+zsto7vUMX
	 aTe7qEocWgtFIlgaPkaH9U69FSTLPOozURj1rEEcLPJI9dnHjIHbb1LVfWR63EjpHv
	 xl1YxrvJ11Hhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9175DC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175243019357.30116.8941160674115139139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8e8806801711dc136a63f8c4b6e3f8f1932e5ca1aeb74b134f1ea8aeca7ad1
Date: Sun, 13 Jul 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752430193
