Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5FB211A05
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766762634; cv=none; b=jeie+S7ZbaxVhA/pBeaB3BBUOqosaRPN6lC4cG8w1Gphthtb4Eoc8J1pxm8/geLuJ3Oj/Z97o5tCKlwLy4h0vnK9fBUmjIIb+gkbokiLzXYLbFgoSFdkyVvESpSrabND91kvdnhnxJLGL4y7RBlwy8yMU60KdLHmS+Rg5EIbcGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766762634; c=relaxed/simple;
	bh=3ibi78Xpf/QiSj2ct7WmHieWMfln3TkJxtWncdOz5uw=;
	h=To:Subject:From:Message-Id:Date; b=kgzvp/+rsjCiXLgunMmDgAIJBep807Dps1wP6lDR67rEZZbZ0NSfglC4+mXlCif58mEkuCMgEeC3/DE8bOy0PNahpbgJZIVxGKWpHHyfmmuoPUIRP0tlgtwXJrnsuqfPvFz3+EMzlwQBhPdS+Ip1+RUxwNBCIs27knwWifZ+vPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5AfHzOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5AfHzOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF7ABC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766762633;
	bh=3ibi78Xpf/QiSj2ct7WmHieWMfln3TkJxtWncdOz5uw=;
	h=To:Subject:From:Date:From;
	b=Y5AfHzOdj7KiXrvwJlfwM+wZ2dKULRnvzp3e8USM23FcOBUMEy1ic44IMMnVg67+e
	 J8YeBNV9dl8oc/0wK8ps+Uz1OAUurBrxY1GTyEMIXoe2WvbQCJcBZ9eiCj3FQMd2As
	 vb/S+QPKjnj0j7J6/EvY2H+BPM+XcsoPAgpeYWE+H1okTn2SAScPD5vQW/KzIMWYwB
	 saYCR2jXea2rFnXHFoW5ZHHdnNkcq3c1i7qpGIF67EjjzBXTYXYB7nNbr5oscjg1g/
	 bKvy+cMEbhtLa1IBAfDQEslI5Rgu46ojeS7t9lFmapEEFepF2IdXEujwEag05mQn4h
	 P6VhXgaagYj7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A10DE8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176676263359.1865.16904956951537811363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c2c1a5a850f4e64bec11d57a49ad188675d75171f851f4875785249b7a5c9d5
Date: Fri, 26 Dec 2025 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766762633
