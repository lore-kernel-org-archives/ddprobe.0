Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330CE17BB4
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727280354; cv=none; b=TzccnaCV+ZN8ajQ+bEfwb1+sT7I/mhZysFk6F3M3lyjan2MkH4c/35i8vDeiF7r+SLNzG/R2SZ8f/O0xs5GR0EkJKc0F+KhDZCCYx8D+/PCId+S2K/aGgqFiRTlQYQPdeBjEHubG9WSIRMrDjAmjdFueH7Flcd+Qrr1k+zLdloU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727280354; c=relaxed/simple;
	bh=LUIr9xHcal1buQExReT4a8LQN7FJ1Ouim30tFJcrijs=;
	h=To:Subject:From:Message-Id:Date; b=durWknjCS4M7YrDtTmTyzrBOfjDj85Kxxqd3fJJw1K593GFPVG/W2FuIIDpcEB5pSZmvGngvJmYXJvTrLNzCaCezZOlZosD7daXiPmeFiFjIbUEwUYt6tVz4yXKvVQSTf6oez/PiM1I04smMute5DkZl4yxNu/eznrSVL/N2tDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/+/gOwq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/+/gOwq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2051C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727280353;
	bh=LUIr9xHcal1buQExReT4a8LQN7FJ1Ouim30tFJcrijs=;
	h=To:Subject:From:Date:From;
	b=m/+/gOwqftQAhGq3/prJ50X6U/ZznndGRMff1ww8KnbhrDpJUCDgQXwjpHYsCNUHh
	 0V3VsbM0EmDCEybQo1mv5f61VStqqTEbn2jfvumCCX6qPddgi+AWMEZdyg0jP1ESa3
	 pmQH4Kwot9IfDku0bPqpOzTomZceTC6de6gdTX34CgeioXBL8ZPA2oXqW9qc4VUwpo
	 BlXUq7DmwufwzR4R/cfU3EcldhWchMfB/iw0Wg7lHD2JRoVM2b29zLjfnNAUY2WDDf
	 AnGt0qAMHg00C1dORKRm+8KeOPZohiugptCY4J3WWXkKM9G8FZgwvPsDNaUBJypx5S
	 k3qc3Q5hSyJKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902A3CCF9E4
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172728035358.17702.16485417008795835106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c739192447d62e41d07f279dc9e8817695c4ccca9a2e43371977d4eb581ce9c6
Date: Wed, 25 Sep 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727280353
