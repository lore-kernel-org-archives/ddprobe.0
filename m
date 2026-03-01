Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A402320A00
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772349894; cv=none; b=hNvDXEoUgE+YVMRbKYYSRSIikzwdO5xbuK08v86e0TdL/TLtLjQJRu7plMBv++A0oIpPIabP3KI23lYbsqnxGrIhiGvT57oLGWyeZtm3RQ0aU+F4JxWg/iOQHv/mbreYXnnD3lX13yEh4C5r5t/NHU3tflDAfE3PI8p0V/cDfbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772349894; c=relaxed/simple;
	bh=UimmdVUCOnIYFjfpGs/TfrPZ6g6KJSDx1okQW/8Yrhk=;
	h=To:Subject:From:Message-Id:Date; b=nddPyUdlRR6etA83UKCIIgPvpyhdr2vpuMGevdA929/sLq+nkG5dW1yDhdUNTykLZChKK9Mzy9rQvBWbT3qhFGlCCwgrWdTQ317DISx68eiAzqgS0zTIAKln3OUtJpOcjH92xsqz7E0im+sJkHev+qNZn6XCpHALIB66bJyWzBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJg3t57h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJg3t57h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B307EC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772349893;
	bh=UimmdVUCOnIYFjfpGs/TfrPZ6g6KJSDx1okQW/8Yrhk=;
	h=To:Subject:From:Date:From;
	b=tJg3t57htWVVbks9vzel4cjhuzQMJkFShgRsUC4CXvx/criCmD7771/n8xx/FfVmF
	 q9XoycOMnU6FZ+q8XMR2f0xhrUkT1Oh/e6SihzSVY4RA3wzahc2K1O4WJrKMd+8DTx
	 ut4xZjWVaUZ5Fz3nBZEK65rDvg3ljE+bf/DLfnI9W36Di9kaugVOZyN8FQLIjwqGvF
	 fSGZHwI6l5qH0nn2NYHVpnXy/KFya5eKUJ4mEsv8AgHK4RtkRerplGE9XTM6usd7LP
	 dpwSIFHAy1vcpMgJVZSI64hht91I9cnc1mvnO7g0InE3COpPWHlQ1yApr9kAbbkjRy
	 j2Mf21esRtK7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF9FFD0048
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177234989359.26666.9174731915412625811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c59face0dcbf4559d3defefb7be39f4f4c016c7ea0c13d429b01eb89bfa0123
Date: Sun, 01 Mar 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772349893
