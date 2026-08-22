Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8262931FB
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787418634; cv=none; b=hL3VvKJj0l5qvyWggYWM9BL9G3KKBVvepi/LInZXbQkQvBp/XI80P5c8tiSAtmYAsQfQGsL9qYTHSDVhDr4HWdwp9AT39Pz6AieL+1IIRm4YcIB2IOynyC4uzWNmtRaSOCQDBnieoK5tjeWcxgA15gDmJDPPthN8mRnuC3bq3qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787418634; c=relaxed/simple;
	bh=rpaZ/MrpjfCgBaWXGvHf67vhT8tXQZQlVQdNNelc7Cw=;
	h=To:Subject:From:Message-Id:Date; b=bez3aS1TykViS2mgN176OAk9WLHqsbLEKKFxHEvlFt7DuHNFH9kcZv+pmV03UrZxXlKk/Fm8uYAVQE2o5V+LRApIjzM8mq9GSSHWCMiOhL0awqZcOQMS842QJL5jDVEo4UQNH0oEyMQPygsRwOwNzT0jBu2+JWW7ZDTtZrMmAz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGAxCF5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGAxCF5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9EA6C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787418633;
	bh=rpaZ/MrpjfCgBaWXGvHf67vhT8tXQZQlVQdNNelc7Cw=;
	h=To:Subject:From:Date:From;
	b=NGAxCF5ViNFfUVFfpTh5cfvV2hv6O1t5no9MQRsZdTirqPhGiY+M+OatdfRBjF6uC
	 fJ7XQf/MJbs5U2DwY9mme/GZGSeImXa2W9SAR6beypVyp5MjGAG9b77leACop8458t
	 rDkJVr+ktBrRmu2w+Cpel8Dbym0GRXYkGi+3mKGZs4evgiZ0V8AGGvzGJOuzmu0qqA
	 PX9Z5WQpKff1BlnXMXNv0py1LwIDErUYIVC0+HSBlr33nEqHMlaS4Q+ZJP8qw50uN8
	 6espAaUytbYPPG8IJPrLbWN/oF6vpwWo7dcdLBZkKpilrdA9HldIHbn1tdEC4Bk+S/
	 Quyrt1OHp8jjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B15F5C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741863369.18251.11658140517053035078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2941e57c5884c5925cb91063b02e6208ad19ba0bd6edb97ff3d54248bd7cd520
Date: Sat, 22 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787418633
