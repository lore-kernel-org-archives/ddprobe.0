Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F77218AAB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766126034; cv=none; b=G5z+XmrCOtKiOMxWAbuO0MxTSf22sch2+WZ1AO0sPl39YSm0TvmqAGJVoahA5HkEHeqtcFxFXKIeT2wz08DmtxUH8/bCeXYiB4ETaAqNoxmzwFJsPT+lzwrZBzTFBgBhLlgNlWqnCYRgdmPEM/eiZgrw/bFgsAH3a45Qz3WhFnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766126034; c=relaxed/simple;
	bh=UjKSgBaxJ0LibudrZgM3s5p00p+vGxRknykVPRiD1XQ=;
	h=To:Subject:From:Message-Id:Date; b=HzhRBzYyaEVqgJZkP96rQ39mvzQVrIvLJVDvWKwd+yb9Wj8FUtxxgrocfPo7oq9GCnbdh+2IDhuRELt0wdyAvCISVNevOFg6ib04R8QWNCQxO5hfFMAbfxX9L/UCeunl5MqtJFmLSKsZTmSTZkKOf38yckl9dqNMk5XOBlg/Jfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CFNfY8nA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CFNfY8nA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F254C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766126033;
	bh=UjKSgBaxJ0LibudrZgM3s5p00p+vGxRknykVPRiD1XQ=;
	h=To:Subject:From:Date:From;
	b=CFNfY8nApomjOqkUzr7Tn9MgHgMBSJXoX23OXNZL8YuF4GV5v/nfZVhjuJf/5mO60
	 l9iGzK3ZUAC3kpR3uCfEUh5Er0gGIJPtOPXw4EtcOXq0s8k0n7IqVYuX53qEpX60b7
	 SrSiUs6tXyqS1YlYQ5Ol3TSuvLv13KANi3Iq3iGpc9sXFIZyBzFfn41EJmGIHq8REn
	 aFW1pfNvNRwvkPbj5VDwkBvmXf2Ur2OBUKWuClG94UThWF8CB/GArqusmsUihYAvBl
	 Z8xITzDLmX+IdOzl9RRJNwJjvzecVMgcZ7mg4tn09RrZUzYXoCrygZn/HZikku5qw1
	 vZ8YQXt4m/Wcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9087AD7495B
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 06:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176612603358.10397.14602080089809943981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51069680018a148c7c9e1d4888a83402e0ae094a4800594de1b6f9e2483efeae
Date: Fri, 19 Dec 2025 06:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766126033
