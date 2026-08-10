Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CC663CB
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786333834; cv=none; b=FffcueYNanGGaBAWFjV6BgdJbViQ3lPC8LN3l8rJacJ6BRUyQkpg42Y6af04bpOlPNdULMzVTsP+6vOzbtTkNk8YE9F+9oSQHRLMU/KmhY6j/m5R0dLhgF1WOVM5554I0SpGFxludrjQmuEx8/ZFYuiSCUoe0ZgB17els271hh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786333834; c=relaxed/simple;
	bh=PMaWXzXao69nC15INyFhx182aVBkSg9gjCiRlWBz5dc=;
	h=To:Subject:From:Message-Id:Date; b=GbpCOE2WOMzOEp2ugEQ08kVGD8Y2TnId6kA3d5mM1mKhJJKb1rP3QMgpnS7dxCPACEDGRXF0qqTOsKyKKB/gfOhCz0co2cXZNV6wx7uDA7VNJEXekA6qSh9N+oajkT+OWpNjWH4I6Znqi0RsCmD3WOZrV4ilyPzDOpFSr8akdCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LIBM9p5I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LIBM9p5I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBFDDC19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786333833;
	bh=PMaWXzXao69nC15INyFhx182aVBkSg9gjCiRlWBz5dc=;
	h=To:Subject:From:Date:From;
	b=LIBM9p5ISJ2wo5XeC8QSZ48eqeEqAs12wgZhWFOOM3+v9PT0Ax1fBcc5RHtBVbi4a
	 r37wwV5sRt2v8DTxISM1LumXPb3bBqdXXi0LgrvsTNZSJgrMz8mqC/0iu1eCDa+AwS
	 OSTcCx4pkhtNGz1H8lGEvEyX//qGiN7G2HmQ+IuD4/fOGt3/C1jvdHKZ8HEyURlJPR
	 nemN6EAOo+/buDG2gobnTMhwinsbyapH+6gwPGwdRhaoY+b3idhq8bGsrQPjzw1Ika
	 N8Tbvnfe43ccCFkWtqSPB/wemFHerVmVPI3vGmJAFr/GGEZUqAvjYdr5jp6w4P2VG+
	 t1W/vMe7jGNtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A95F9C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178633383368.1522.9925748639312539178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 556aa617dcb1b3ff8672f843e03a00952b35cb973d2b69a2082f6c5160437305
Date: Mon, 10 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786333833
