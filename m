Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63188272E5C
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753434594; cv=none; b=PorLsNIOR0H0W+nS5FNOfdIi8lZFkq2fOpnPzDdD9lvxiXIQCrBWZTiWf8ojFnqI/owO9dasGi7iwabWp9UgMlXz00J8QTHDPWb2TfTKa6uvClEqzR+Szuemut1IgPUAc/8IY2qylniZs4v9RmE2oeVeCieTGpu+RbG992PC0+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753434594; c=relaxed/simple;
	bh=1dmK1AjM3E3qdsVi+QPNoKSzKdw1RQl2rcmbpovVnQU=;
	h=To:Subject:From:Message-Id:Date; b=TL/MAN8DZoYPv8ZFUVG5ezfJ21IMfK+ri1CHPhitm8xGwhsjcy0M8DJZT5FIcwcUcseP6uIP2CYUcsOsQNc112xcF8bDlPgsIpla0CeDvvm9GSjdy4ZZg+9OeoyG5I+ujrn4uKJMtQ0PxdducHajOwpWto4R75E5u6M0Y8oIoLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHKMZsCM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHKMZsCM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B14C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753434593;
	bh=1dmK1AjM3E3qdsVi+QPNoKSzKdw1RQl2rcmbpovVnQU=;
	h=To:Subject:From:Date:From;
	b=IHKMZsCMR1PlTJ990hhxG4POpfR7srau0RVP5bRpYcx7poWJc++LXkltefW2rjyNs
	 iL5ZdYNqM1PLV6mQe1hQXUduK50Qgw1NlPY63Q5Ehit6YCZb1pGU1JgkwtBl7yruDP
	 IK30WgxgbFgzRe13/o7liDOkleCDTcwua++xJllJ0f9PuES2Ex3t5f7W48hhbVA1eA
	 7rQ7Gb2joaH/nz1ZWEnNaZK0pCvMs8+/EXU6H2XDIxswQLrQHn3z/OL2RBnA2iitKQ
	 6+jDep3MNzlUn0k4lpMnn7hLJ8cx0nxgASfG30XXZkg4jNGdxyZRTSjuU9px3YRBLy
	 TPo7ccz/jGZDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9590EC87FCD
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343459357.2474.93059732551200452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a090a74d8ba95069d9dca1b2d6cc90d7eb4b97e86585951c45118e38752fd5
Date: Fri, 25 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753434593
