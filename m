Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B853D667F
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786294834; cv=none; b=hxMzy8gsgjbb8XCCAVcYnMsWF32i20lO+xyLpl0TUtJ0YkxchZ9VZ6xCxeA7PV8SZvawhgZnsdTDAixfupAkcUp3YpQT61ORXfOdu0n3bPzAH0PuIYLutbZ2yXyselhPnpeJqAEky4wst+dphUQzHPjMEF2zOUpACyWPDPNdr0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786294834; c=relaxed/simple;
	bh=sHuai0X+5D/hCecYGb2NSgvFQUGSvOj3+Vtdn+Z7IhI=;
	h=To:Subject:From:Message-Id:Date; b=duExos3TxrJ/pbnQGVTkFHWN9jcbMV8LAF+3Z0Mx5RdsBHlZd+wxZTFXSPCkvGJYRnr/E2fw25wORO9vHPkSCTrQA3muELDJ5oyPmLKUgM/bWbZ36ARXPZxcn2eG2dbWDEux4/wlG0O5BGBwFQIjh2pHeeN3NhHXXnFVz7M3nmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UglAMmiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UglAMmiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2D3DC2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786294833;
	bh=sHuai0X+5D/hCecYGb2NSgvFQUGSvOj3+Vtdn+Z7IhI=;
	h=To:Subject:From:Date:From;
	b=UglAMmiVM1QHzaRf24k1a/SiGXbUyEBnEPw+qh2826w3KlRnK7bLT26iGxj7e42LQ
	 JyRlz2jZgyVvX2O6i8oDwzY13k7Bj9exTRg39Gm/U7AkSE5ymrettD3MziUJGUsKRD
	 q/1zchSgKG/bJ77j6FsL5RAWFTHzogVyFqIXEmv/b4bmpJSXm5He3ZfG6PysceWQ0L
	 bhLin+uZfVW4sKOY02yzst8tt5IRt4w2YCbMqhydvkxqQ/mPcTKczoWs+AAOOEJ3q9
	 /Ur6pzrTJyf65deDzFyQRfnyMsttetPQgUeIjrKtwzESnO9ZRIOtTLBsA12v7DFpBX
	 2dnhGv7irKI2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15F5C5AD7B
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178629483369.5910.17288116372259226304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4dccac5362d98bdd39cf2b5af08fd65519aaf653a9d7257a495915aae36ada1
Date: Sun, 09 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786294833
