Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEB34C0420
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791213634; cv=none; b=MrxAPFNKZlbBYghxIEi3jwDNtvAkbpXwa9z7Dx9udENBkyNoC0jYmGBwrr6CPxWHAVjlpiMWYloIWDiuIl1znDMmXV7tc5XhQRwAnyE3mpG+3L1IA8EJ8NjqDgvifP0/7Le+Oe84nR6uIkwvK7LG4zoZHR7jACwwsnwRxKGgwqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791213634; c=relaxed/simple;
	bh=AL40nBygpuuQ0BOTZovasE3xSWbn29Re1NRwoZJZXe4=;
	h=To:Subject:From:Message-Id:Date; b=JmNyBtkI11ajQkxxm8Lr5U+IGp2Ng7sCxxymKfHosCNqrdxHLqXSziIHTQLDDMegZCnsaH7EjLYKbdJpiL4Jg0GgQ1bv5DnUTPgPdIc/KHMwS223nkH1KWWV9MaG+FtM2jAaPsCk1UbHrYgv1472SjNT6ZuxMG3tJtog23K76pA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=avKsY+XM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="avKsY+XM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D67A4C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791213633;
	bh=AL40nBygpuuQ0BOTZovasE3xSWbn29Re1NRwoZJZXe4=;
	h=To:Subject:From:Date:From;
	b=avKsY+XM1Y0CDsWoJ51Buznp3xjDUGQj7gVv1865NP0jdnUQ/HRjhA5TbdHbqHx+U
	 +W4+rsLkMqptGQCJZfa1PxfwYZNdCNU+Zw8mlha5+bSAlQ3YiA5ta4ofOS89STO7O0
	 h5FWx2HDnRc7egBUlJuHg3KsMx8IgZpGXcKUkvlk/3WsZcJrxt1UnEmlje2hiE8GMH
	 qM8tTLfqscq8pMJvLcwKUVaqttXlx02gGMUUOAltPh/LsoZxv2qMMALvcfDy3Ynop8
	 OQQlhfcXSGbu+G9aDEVvHLi8kc8+nrD5w3CkxrflV5joucOzalT5wT2r2q2YrtQm2w
	 ke0uVz7fnMBUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B206ECA5FFC
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121363371.12258.4869505693398245145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf7dfb7dfab031301ed4a3e40073a1b1e2bb1357d9cd8e6ab35889ac46ff72d5
Date: Mon, 05 Oct 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791213633
