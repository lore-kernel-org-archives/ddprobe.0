Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24958303A32
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779877354; cv=none; b=OCZIFnzkfjbDwZgo7cUEHHRmkwFq4ZztpjLG7ji2kslJRnraZxrt/CaPTifQOmUeYjF0B46Cb7L1v7TflunCpqYPO4Lw9n9Cke8+kHw9zQREHpPk+f5tDQdvzZCUcM0VTn4wbR5mVSOpMNKI4yOdszcwpN9996Lf9u6zhnh/Wo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779877354; c=relaxed/simple;
	bh=hk6zbSyGPySQGDWMrgzcsPM1jiYL//U8TARa2VfUQvk=;
	h=To:Subject:From:Message-Id:Date; b=osJ339rP+6aNmbNULD73AY38iurq5qQeEa1inJTPBnhNv1CcbzeUzYe9tI6Prfl0K785MqjwpPoftOMxJXV5pxxUBwWXFVmk2KWkd2nBeLK/SzXik1w4aIGDv1tpIWU9sDWzpBHYjB5Vegqy9cKB5STYwJaxsveFLrhPNc/dlKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bm7IgSey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bm7IgSey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF709C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779877353;
	bh=hk6zbSyGPySQGDWMrgzcsPM1jiYL//U8TARa2VfUQvk=;
	h=To:Subject:From:Date:From;
	b=Bm7IgSeysNA8308Mx4ABZpg7MZyjJW/IhpjRMuQ3BkZ8a0TuKSeqsiP4jaRA8/Hbr
	 Wl5oVaMJrqJfJ2w2BPzW19JgyR5xrIkx9HDNHU7T9dMIV41Ru7vzY6pPmF6KMHWaXq
	 mtvMEOpvKangk6WtRATFRrj1Y7BH038GhrTzgxCjCPiYTMGMpLFRySVRl7vTZGFPY2
	 nbNSb+UH4KqeSezgWsM+lhKPjrSdvbrrYw9qU80J/7bi0SEkZPVU+Gz02e7sqBPki/
	 IdzHhrClhsrZe+m/7B/cE5zBWDP67OMPVhScRdz/udIunXp5yrShFHbnVocuWWTleA
	 juBUCWH+K6+cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8235CD5BC9
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 10:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177987735368.4962.17639763958253624398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30b68fcf123b9f022a5fca9eb2508cc6c708bc3fd0e9bf567b5fb0e94d6fbaf8
Date: Wed, 27 May 2026 10:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779877353
