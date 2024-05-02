Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4459B21A0B
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714635743; cv=none; b=psUwQtHY/C2o3kZlZz0pV4OGCWhZdqaoq84DpKsuxiVbV77Fp8aKlD7avqp0yzhb2A3hXacjNbE7zmCJDwMZMC07lYs+srW1PAdOO3T+MEW4qe0svLtUHoQUqfC/+ztnjnroBS0eGnOwy208LUfwbF/QKuZNBUR0GHBuykf8JPc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714635743; c=relaxed/simple;
	bh=OsrJzUq4pXbzf2QZyZ9bvdv0uFJMyhHHMauSuboYV9A=;
	h=To:Subject:From:Message-Id:Date; b=k8s1AP1z7c4jmK932bKDTcabmsWvewDa8UmwL8BelH66oG6SqIhfQ4EGECpY2IXzsUlF/XTH/szKPvif/5uf0XazvyMMFvDxxm4LQaSKjzNVhnF7Ql0ZXe80fpJRaylIbcc5JT9wm1CZOpVLD+yKeUwHWsd7/9ptbratdxvjlnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIJiO6H6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIJiO6H6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5577C116B1
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714635742;
	bh=OsrJzUq4pXbzf2QZyZ9bvdv0uFJMyhHHMauSuboYV9A=;
	h=To:Subject:From:Date:From;
	b=rIJiO6H6XxNxOjjIMMqxMyZGZh8YJg1/EOPMcF7r5s5eZSyvz/Aji69DPTLxR4zIu
	 iS1d96XCtoLcgO5Qx1D8KqQcsFwP1MdqqHNynapnbqTChrNemis9c5FyEoFMw0a18T
	 nt/w+Rd/dRvIYpwqC9mJqZdxeeBMMy6pJbUE1uOX2UBvg5dZo2LCcp/XoCN+/dzM1B
	 +NhkGYyVpERt88H7/hxvWMmkKpeAycteKrbb5lugs6AHNnG4uyfYti9xJVRgJtqwVU
	 vJbv4tHt/R6TsSbcedrT4L2jlXNEeL7ysSi5VfArmvOo7YUa6OjyiNBHrDDf/Xt+e6
	 frpOw005TQOXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00DFC4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171463574277.12734.15581272773174685583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43e8e03e30eb9ee970b15f9bba1f80e6972086b17966d1d09d9b7d54bbf330c6
Date: Thu, 02 May 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714635742
