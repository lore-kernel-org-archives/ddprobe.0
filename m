Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33015185B7B
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730651154; cv=none; b=Uhi0Md0d6PUOtFLS4c6SKig1jopUABHmnHoV7vKxUs/fD+021xGJRmBptWdUg0cz7YKqffGwOmpwnFVlMlZ7glkgFPsKrbj0BO34S4g28DiOFbgys4CNM4BCua+IE/MVUTbfnWscUzrkt6/imKpeoq1PIE6PwSgLrrT2fS5QMEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730651154; c=relaxed/simple;
	bh=sBpFISSVM4t5l4TRvsdLfYP0L9S9AKYK/3FCCFLX4FY=;
	h=To:Subject:From:Message-Id:Date; b=GcbxeC8NHMrfMbtXdME9PucSnxqsbqRu77mj+W5VsVO24EnPLOIv/D6hXmoqt8+KQKRpuFVDteiUMkOg4OhgkaRcOMZNy8/eo+7rxdGKjsM1L752Tu1ZjbTda2rCrfOnESVc6HVA5RHTrgc2hBikBUxd2H8cA0qRAez1LkVjozI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U7ERwaLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U7ERwaLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A631BC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730651153;
	bh=sBpFISSVM4t5l4TRvsdLfYP0L9S9AKYK/3FCCFLX4FY=;
	h=To:Subject:From:Date:From;
	b=U7ERwaLbme/LbXmGlqJTeFsmFbNYT3P4oh4nDp6kdSVuigo08JoiBryhvFLEWkdHc
	 7Cc39fqPcOdnEwccIDw1vPjXhtfZHkxESeQLlnhf4hj5EpsXVQYRwGos97nboi7d/3
	 ZCTC7KkEPTat9e0NjcfSVHnrtDS07mdyIICdk8q9Hk1zukCNLTStcy/0h5AD3uqHli
	 YLhZSQS1QEgP79lpBQUW4/RmfxU7EUokWHaBW/q2mWVPj6OxKtrEpkJ8RXI/Nr+3/l
	 /60l/R6qZlOrAWziEaVDqx34bR+XrVJFj2MiyZW2i9xGguNIFuAMDvExjBzcfAbc8R
	 DpH5KSY8DDclQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91885D11181
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173065115358.17953.4257959465000823218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e3e24baab4ee89ad12eb56898156a6f2b330c84f96dc9e6c3c652234e92e7e8
Date: Sun, 03 Nov 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730651153
