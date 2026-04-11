Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B1F21E091
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775885854; cv=none; b=EyA3jpvR8yqph+nQ9U9vnq01JbR50+fFfV96CNVYpHN2MbNo7lw7vQguVwlwYJvblgNFuwiep/f7KU/84l7Z0YL06HHYIgjMVrKYbK3/mXS73AwJ3xec1kCKk0id0AtFB2z7KGePkFHXI/IusRGbBysCKUCveRB/xlR+EIbetWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775885854; c=relaxed/simple;
	bh=+OR/rmxqFSdsslu5747z0HpvDD2C30ABluL1sctrs4U=;
	h=To:Subject:From:Message-Id:Date; b=hoZGKohwa1SWlALDJUHCg2H1aBcRF34DhZR9MEgwQF0dgU+Dfb1Q5oNtAkeQqrmL2X3+FRkcmqNmEaSIXx2joseAb8FbpKBP0CtPLw0Be9ntxwgBOIt1dxOga8WHS/CXa6gjQDA97yHHkGW0WhtFe+MXqnsqtO/HwTI40M64H5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0QDnOSS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0QDnOSS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C59E7C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775885853;
	bh=+OR/rmxqFSdsslu5747z0HpvDD2C30ABluL1sctrs4U=;
	h=To:Subject:From:Date:From;
	b=G0QDnOSSCLrznRT8Y6coVYM02lRKU0TRbpZEm2YINuz+opgY/nFf2jTNNin8MqK5W
	 li3g3OZmme6pDsOu7w3p+50u306XVGXvgnJkQUfkI7B1K70RP8mfusjOrfOSpK6l1M
	 Sm9GlSfvt0sHFNPySpNh0h/04KGp2nuUkHre/1uqL3oM/dJbnYzJsOCwPn3wTTUxFu
	 iGKjvT+WV4oxg2dSkf2018vsOw7sFNnyj1hz4CPG2txSccH/Yv2pPS28VdLO1VjSH9
	 deGkVD+iJJiVu+iJe8GPi0d9T6Xcb026WleRptbjsBNSn0almU5UXZa9BLzl89PKCP
	 5SC8kV8n13ycQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CBAF45A1D
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177588585369.11794.17759329688410751107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82704d88b0cd10e7f6abcf92978d0e12920eb73e25cf3e5f0d9e7bc603e5d48e
Date: Sat, 11 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775885853
