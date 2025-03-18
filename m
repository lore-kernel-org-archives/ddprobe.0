Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE4520B1EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742297994; cv=none; b=KErdr1zjtMA+zk8IsVbogf8oFtAAJJRgSE8gw7BsLrbo1uteb5YVuQXmhp/HLhgF6jgeN9Xp0oE58hqDFyqvw9n/MC4HkwdicPlqMQeIhKWmcbr4NmAlsKawQO8MdaPMGMrCeSJzGCl5TD4ayALrHheyV7Q0yxEx2kBK19qZhgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742297994; c=relaxed/simple;
	bh=FY8uSHGVMMrHoNgZdbKEBCpipgIbzf328++c7q1nG3k=;
	h=To:Subject:From:Message-Id:Date; b=LROR77+CUZZl9o7o6jB/xIpdJT0G1wuSc2Mr2gmZd7tyvOn9EQ4CCJRgNmSWtdW5nT92OGJ86GA0bITLFgtdKz9JDhzT+Jx5eufZ6EJg0Xs00PcrsP7CrY9BhX+KECcRjoav5odlLalHeQw0CJwHupz+pvBOd3YOV/6edVqoaeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/kYw4cc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/kYw4cc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDC1C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742297993;
	bh=FY8uSHGVMMrHoNgZdbKEBCpipgIbzf328++c7q1nG3k=;
	h=To:Subject:From:Date:From;
	b=P/kYw4ccM82Y7SYoLbcA3zR4gnTNTmK120ISX6AYRu+1uoCp1JPlUude8iXAVAPuS
	 axt+3r5Q+NKhnfkZLrhGqmhsAehYtGiGvoWIX2QPQlkZOyIcVQd2CP+BdoMrYZ3VZ1
	 Hzkpb7HgostBZR7qkLvL6GgQroSvn3HdE8phZ5UA1q1hMflLik2jsfzy9tULKb4ppI
	 GhaDokiswINFUVRTowvn0XdYfc6Ga+8OOg+geyFY22MSmFblamYJ1WZu3Mas2qEyo3
	 5ylCw64laU1rMVhS17mVz5U/adVDtPbb3HVHQVQ+caqUaWr4h8zX0AwrDrUdgAkWFF
	 YaFGPPnyuJp5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DDDC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174229799360.23009.18155684149747278093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9acc64dab55abe285a4664f096276a9dd46fdc842985f54affae428db4e0993f
Date: Tue, 18 Mar 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742297993
