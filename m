Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529292AE78
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770783894; cv=none; b=cbp/kWYC343uo0+cRkcsTcBFPYby0iyC191xwfBLB/1mRCtJlXnIAlKSq2K6EHrg8s+31QFXcoMsXPZuFVz8EooBA0FXN9kLPn+hgP7mUFXfzEquWBQaA+RZytPx4rkx4o4GQSXHYja430r/0DNF7x4/MoAiZ/PSEiD1NQS36M4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770783894; c=relaxed/simple;
	bh=0O67TG7yCI/Fe69r+So2op8CwJeLzXOICGZFBHsDi/k=;
	h=To:Subject:From:Message-Id:Date; b=FRUDZG1I6yA9Bj/s8Gu1FEKildjze0Zvys712J8AVuIguOchrRxNsXcM1T6dVQ820bTqmETEaikxUx+fMQ2oNTMq80qPT3hd2DSBfmzg94SEd9INytq8b3yle9EsplPIroXj4KPmrKU8z87SwFirBVRFK5XE7axgbMxz5I4aNPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WUjrReWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WUjrReWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD021C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770783893;
	bh=0O67TG7yCI/Fe69r+So2op8CwJeLzXOICGZFBHsDi/k=;
	h=To:Subject:From:Date:From;
	b=WUjrReWmIbAEGGVx2lQbkg/HPYY+ZK4bqb0jcNtZcVUSe9QLAoXOtYAYPXSirIHkn
	 1fR6BGJi5qthUSUBLw/lXRZ9uS/+lMNyh2ZeENxPatUr6+2qgeWD/KZgf4p9kn8TLl
	 ++zckH+wXC7fquU46ylOhIAFcwrqeaPGVn9fLI0MLpbWp7tTXDkQnuBY8lZjfSP1ZH
	 1HOBDODcrodhmURBeoSlwDtYoQDwaTyeR4U2+vnQx2thNjC0S03lqwjiwuaBJUDthL
	 2h37YiLkIt/vI+02CG3mnJBxfXwewiBIusik3P572t1ivSGSEHR5JgLELTXv7DNE63
	 W5J0vERzaY9aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E40EB5965
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177078389365.24902.14628113477959083428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd91dabed576e815752280681cd91b46726128685e780ce93407e6437499e5e6
Date: Wed, 11 Feb 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770783893
