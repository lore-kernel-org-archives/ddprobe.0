Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFDBA34252C
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774580694; cv=none; b=Ez29/BqA+zg+7ayEVaj0RN7OnFlZOyC8cyZ+A1xPaf4EiBMa43pvzgogObhNaeAp6QKGNms1r1Am4HmjMQ0Lkfs04M+astbtuyJPD7jK/iDEQei1LDCarRxcMhq/PeK1je+BQR668i+NX9xs0HjizdWD8+y0PqICPc871QCxHO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774580694; c=relaxed/simple;
	bh=ncC+0m/bLuTBhk+bMtPTwyYEiRIUAO7fRxjuLWPatpc=;
	h=To:Subject:From:Message-Id:Date; b=MQy+QJMCjw+JLgYZnd1rv8dykfArMviqIOUDMlJTEbGWfyleifku0pMjg06dUEqk/Yv5i30qKrBzV57nRgfjuGH1eXn106yJmwU/vRaDXBiJCYH/aw2hp3Jr0++Yxq5PBgyy28JuZkr9zHRVqP2WWyiuF9o+ZeQ7kHb+ZwIFoqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ooMVtWKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ooMVtWKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA10C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774580693;
	bh=ncC+0m/bLuTBhk+bMtPTwyYEiRIUAO7fRxjuLWPatpc=;
	h=To:Subject:From:Date:From;
	b=ooMVtWKgnwA/qZkjLJTRBAJgwH0WpJdlkjDS7zqQkQwtt9Whwiu/Y8sv4GfIRcykV
	 UwoUrwiknvDR4VDzZbDwx7N4zZdqd+mGETLMbknCM5T+i3i8C0g/nldFU8m0k8+N/j
	 mpKPFS2NNeI8LZjZDNppgVZwgNW57oobJsPkDgrhZF0wrKofLMSgOEf2MNmVRr0Wtc
	 EzoSYbkKp0hoA3v8fVwp1BRYlA8B+0lzpXH4iT77/jqAce/0rz2/LF+4UiHoQHbXXm
	 tMNgYSdAsI+anKKpEfoRpHNMdQvzuHQp5l+2Yufj6Bf2rgFULsgH3DBndZBQQOvELa
	 wd7asplAygR1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B8A10BA421
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177458069358.14235.1217689274723460081.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c124a93237767b01697f0d99ba9271693bbe2abbdea9ce4b3860140c75420ff
Date: Fri, 27 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774580693
