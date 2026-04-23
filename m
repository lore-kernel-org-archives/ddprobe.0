Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1449B3EE1DC
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776949654; cv=none; b=OiFeLOKneWmmHh1z6fnqqI5oO3poUNQMyj+rUjx4llhi6YdQzbt5h1bEsjVE1y9904rcXlIRBAv0J6EUvOgirTk4wdakNN7aHw8K8PlRcgu4TBYDtwx/IvqXbNqLX3AbvyBk9d1OHy+cAqsw49Aer2+Gg+an4Z61PR120Vg7Wg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776949654; c=relaxed/simple;
	bh=L6+Rmr33hiDsNPf9HDoS5U3dRS/o2pv8T8yxG3uUxoA=;
	h=To:Subject:From:Message-Id:Date; b=uJG0zUu8RJrblGI74z3nnhTslfAPc+Gir7XerOgNf1vQGi1y2ZhhfP5246fn8JcNe+7NF02TxCCMhLfjgcttagWB9MIPKmz+jrR6oiX3JWe0bpMPAPmo+3DJcyn6XOgILZpg30JSMd+QgngjVh3hIoNzmIcHoSwvlZ2hwVlvSeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BMl6ajI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BMl6ajI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAB3EC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776949653;
	bh=L6+Rmr33hiDsNPf9HDoS5U3dRS/o2pv8T8yxG3uUxoA=;
	h=To:Subject:From:Date:From;
	b=BMl6ajI0Pmc6aXRRT00VWGuiQlvh3FXTaYOt8I+uCjziR62capPFDu145WZ+CCAp5
	 Rq59PmIsD9UeIzmxepLsSpqpC2ql7H+4o9idh3ReqN3ut/XXA+eqwczbTF9FI4BIxj
	 DU2n8+wQht3H3yupshCpQNBtIuUFfm+q/ps2olHzxgIBsjrmuQ5gFkGTtZmslGvniq
	 AvEf8eDMnk1Jb8Tt0pHRwgZq2hD3RwIAhUT9BjsCipYS7i5chkfxXhPADccazZt/oi
	 eGGS8ebroSbZXghMst+W+HZpvcfHBThd0S47HUswH15AwztgFRiQaevgYlm1c3Vk2M
	 u/4TGgklNd/XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7A0F589CD
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177694965368.8843.10072708613749938564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04e8e1d3f201d8991ea842b89ad6c2d7e0e2cb93d6251bdfa878ecb52f64ab4
Date: Thu, 23 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776949653
