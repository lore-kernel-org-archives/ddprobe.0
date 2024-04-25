Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87D311494BF
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714060943; cv=none; b=IKD2QUcqrOL9J4FruSgIFKBnq3nPkLZnU0IPlBV/bUuzi2zW5aRmscbSPlShKUKBlRvv4baZA6qna+WlTm+tGktYuK842njB/Qo+uuGoxiqHP7Ha1Ut/8wHldv+vtzQsglQ5kKhCnXfRyVdzKiHs38AOAWoLILoNxHzAyhZq2Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714060943; c=relaxed/simple;
	bh=mNesjQiNpumc+RoBMHINaejBlXbSKGw6X0cfaA607rk=;
	h=To:Subject:From:Message-Id:Date; b=BsEUM9fNULlZZTVA3WtfQWdZ9MLX3OiVGo4mt4tixK0pbL0bYeLShusM7c+dRrcFyoBQ2C6tjwQn4iGt54zk2yUvwWI4V5nKYk09/d81/NFxo/c8sXuLU2mQFjbByZ+TOKpwzhGRL44sSPUulysB2Qx1F0muHFlPXhkBiviqAp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7gp8EgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7gp8EgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1374EC113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 16:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714060943;
	bh=mNesjQiNpumc+RoBMHINaejBlXbSKGw6X0cfaA607rk=;
	h=To:Subject:From:Date:From;
	b=i7gp8EgMpbNGJi4t8sQOEItjQfH3FEByGyDx9L50Lj+avW33HxVZtWaXfxoN+ciAH
	 gQ57afhgrLblIK0mBxoMjPBXXc8uV7fcMIB3EwKUCDymZZYSwxv6OA9u12B8wUsBiK
	 ZJJA2VImdx16B5yjsSG/uNpGXw0oo87D1ht1k0DrJvj60hERL8VGrTSWVAQxO384Bz
	 7n8eRbx9HvszaJ1Y9JhbDtrEOyYkaLa2FfGjTHdHO9Ecm0ajLwkQvRJVZuH5ZAdWz5
	 UPpmZ+Jbo32dS5GjM3e2erwS9/h4JSPHSqypYxJpgLFtK5XAV07tIA0P7EDVnjXyW3
	 y8wEJHEcky+dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA4FCC4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 16:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171406094287.28214.2671091577237408703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d39d6ebedd54997d3d4159256df247829c9f5accf26e668cf788c75656897f2b
Date: Thu, 25 Apr 2024 16:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714060942
