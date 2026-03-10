Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06D5A346AE5
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773138294; cv=none; b=MZwhnTs5t9H2ey+6qOFwlKWBedWyzWiIq5eZDuMVHSAg+wi9xfiSSoyd0WipjI3NdRXESlvaQin9OCjPFe1vp3Sz6Z08IHFmMlC13x9KhDoxMeSLcovrjA7mIjzWGTcOr/jtdn7AS+QAoUaLiYS1Rhp72Cy46+5VBspE7hGOQCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773138294; c=relaxed/simple;
	bh=xqaCH6GLT42RfXYPJ4NBeK8mLanTtIOUn80jnkAAT4g=;
	h=To:Subject:From:Message-Id:Date; b=S4AuDW0EAXhDmtAu33gO+fkI9QMO8K/JMxqd/FzMf5ZGuJa7DggboHgfhUW5droKQdjeL3XjfB86+NVGGiDQBMXPLrypZkvl3N76wv3mDojDdzcfvG5K3oe0Vh5ujKMHzefR9NImjmVXFWNEBtNi5cNBDB0fqZJA68+u5i+3EbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2ajWZzf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2ajWZzf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ECCC19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773138293;
	bh=xqaCH6GLT42RfXYPJ4NBeK8mLanTtIOUn80jnkAAT4g=;
	h=To:Subject:From:Date:From;
	b=T2ajWZzftfxACuz8Aq/XaEqsDJwfYAWlG7JDAHm0BT1TfUcKTQy8mZ1MR1Ibk8cpG
	 DrR1DxIqisAv6AzV9JxKYvCL8dSzjLtzQioLeCVeLn7U3BaBfhwQM/Isz9kWdblTcI
	 yMx8cGvEprQ2EmkgHry18FIyW99W+a0Pf9oyEx0eXwshD6oMNSqfFKrHbX0GtzSlGS
	 BnyfcWaj72S/n3aSMu3gW0CAS+h3BIAlQNgvo+5Yw74nzNfThyj1aQpYiiWxiAIKkK
	 +rCYyJCKKXuU0gwlJ5BDJqCM9EkkSJyhuaqjJF68xtYWVws/xhd6VTGrHEQmtsMb+K
	 Uv1y19XGB8UBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E87EB1042
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 10:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177313829360.7435.1298534629937644169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90573b600d8a3b5f689af28fb60f7c5969366e12a5adb8bba9b86711fba2185f
Date: Tue, 10 Mar 2026 10:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773138293
