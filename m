Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E944690
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733681154; cv=none; b=qTtfn4a3/hP+yHA5yGtjIaP5xiFrIV4fPJ429bhg+OvY6VphRpkVYCJ8CbbDqOHyxV2co578xOxJOjAiHhpVfOLSygv9AKz8nyz/k+17EBa85eL8mmnq+8RPjSzomhQbL1uOcV+ZsVbQGY81irVnyEBmz2AbA01HOyBqrhnIAJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733681154; c=relaxed/simple;
	bh=eQ7kDYZn4PC0kahMu1U5n9B0sCib6e25cDnJmJXycQI=;
	h=To:Subject:From:Message-Id:Date; b=ST9GkmfHDCqYZdT065Ir/Ngl1n/cOK/NFj9GAN3xTGDq6FEIPAu5jxkl91zdKXThgAIjYbzMn4HJ3B52z0f5BcH4b7hS2FsUBF+PjgMNZwhXuGQ/asJkOmtrqZOl7lyLdQV2PUSwPvKkB72/8rvCbysLNw4/MQtnKET8aANaneg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuQbczN/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuQbczN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B50CAC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733681153;
	bh=eQ7kDYZn4PC0kahMu1U5n9B0sCib6e25cDnJmJXycQI=;
	h=To:Subject:From:Date:From;
	b=IuQbczN/F5XTj/8067EK14gyPD48NODhZfwAouMErSS8tWAqUuGPqpyeSHI7JDvD8
	 PF1U5QMvYsG1NBRSj4upHH2J8Kn8b5zUO/LKo5IbT4CoRD3APwVZ5mCB1jk7QwCVJN
	 3cQ55tvRzsP7GRaRpzmvvhUkKHbdQu9T24OMQN53zXyZwBblP8vWIwUfz1pCJtzO7a
	 qTOisen81wiJlQbNt6P0alvaCg1DJJATnEIioaPAcomzHjUcPf1XJ/SsLRrlrA6Rch
	 ar6LeGLMTRdyqlnZL+xiYiBR0yeLEvHjrioa2Rbg2emQPZCyyQX5Iakpm7oP5GOXEN
	 g0kjajKgq2Kdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB29E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173368115360.6386.18035415692047928074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a536b53b86472060c55d7e4ee26d0acbbd2c90802858605cab7d95afd78c787b
Date: Sun, 08 Dec 2024 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733681153
