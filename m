Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CB162517AA
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768547034; cv=none; b=AXdq/0hSbsAki45+qYnpJU1hppoAUpyMOJz+pu5rP7Wh9HBO9wve7d+BqG94HTz6G7ab43f1XZrEsl1+73V34DMMt1nj6KIxJyUFpx47gYsGVgzoZI8i2XaewrfupbCUglvMss2S93+7s7/ewq0ZKxphJXd5zi2hGfWBB2wzIEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768547034; c=relaxed/simple;
	bh=jbXlWUALJxx0ZYvwXhO+RfE4nIxvng5bSvl6a1RyyKs=;
	h=To:Subject:From:Message-Id:Date; b=eYLB1pMfiGc2X4KkC6BpRLLHxUoIipdTTC2AJqhnd3QWwLOBL2dCP7liTr+n/GxnPYnLQ0Ncms/WI8vT0HcwSRXF5VMoUou1M7szLppNm6sAydi13+8RnPz8r0faeSF9s0mJAhVDTMqiqzJ1t1lc4TgJe+eDicKtRag/phWHWf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyUIpdPJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyUIpdPJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7B6C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768547033;
	bh=jbXlWUALJxx0ZYvwXhO+RfE4nIxvng5bSvl6a1RyyKs=;
	h=To:Subject:From:Date:From;
	b=kyUIpdPJbvMz6ftEj18evsi0u0hIqjrdq66GS1vDhLHWUlTuunoj2ngvtpcKeDQMA
	 KFCDmW43TBeba89fxQhTgHrNWpl1aW4KQLYL4pLZNqK0gnIufgeYsneu5N3T89jVQ+
	 m71uaTL4mo9sCDNC5YgMW0vFdJ69GX25/MNM+k7CnBxqq1JafvdWD1ISNcEu1sMrNk
	 VC+hygWX41RFF4yE3kVDOtS94q7dEx9iQb8BfFFc7akQWR/1IfZtiI4pJpy92qbqkt
	 ZEGCRX2bXHCBiKXvZQ9loAt71XdwQWW0JYJI+dvk/Mq3RODipnS1yenfSt7Xi0nbPM
	 zdnL/LShaN3gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E629D4A604
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854703357.28300.6563171011309985583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f0056deba26637c0e990a062473dc8fa186680402ab09bc6ca90f3d771395a
Date: Fri, 16 Jan 2026 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768547033
