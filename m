Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F0B2D97B8
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759847394; cv=none; b=KOxzc2kPq4EBzacmXcZ8/lkXwMr0rwcnpr5ShOeAUudEQYL3VkX+jdgcd6eQI4rkZ9DOWdhC1vCrscHMsmC9PXqWzsockDdfghGapRzeHBqwM+l2vkub9cgDmrehZBbxzxTZlRzUpDJVDVz9opUeFEgC6KYK6x0pTZfjJ6H2UIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759847394; c=relaxed/simple;
	bh=8v7L5ZDfCAi9e7Y0+6KgvTsFaLKMVRUQznTwSIP6t7o=;
	h=To:Subject:From:Message-Id:Date; b=CE4fQfK2eBsStSOgABT24IbnziQhwGu2IWl3zGOmSSs8aayKmbIkRl3Bugy7eg2511DSpdMDGkb7/S7Zz3q7j0l0C/wHpE/c0ggXH5XVNoP3tjJAo98BRO/aSvNoyZxmalfbBhg7V43ec77c8zM45Wx5YUvKIJqgogi/iQ00GP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8QDQ/uy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8QDQ/uy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02F1C4CEFE
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759847393;
	bh=8v7L5ZDfCAi9e7Y0+6KgvTsFaLKMVRUQznTwSIP6t7o=;
	h=To:Subject:From:Date:From;
	b=g8QDQ/uyWpkod4+D41EKSu97AUCuWHZZJ745VzjVtIPyjP6Oybx3A9g+b2Px7nG/E
	 ZMLQTQmzexSh6fpnDAdl2y+MoRktTJZAwj4nnih+/MxgAN0bxJ15XNuQf5OtXyYArZ
	 rGq/sVGk70UGS8FBtVHs+mTtVWjMuKAkZ+Le+qKp8k89wjysY3HRAr2YJ75SH7Ilbz
	 zAgUG0yLfRt2ioXVYNBBUyEdRBk8FHO857R+5L0cVtJM9DMXZRzc9bP46Vbx/IG73i
	 8VtLXviJMK1XguX2MRrlu06nVEM54AzxxGhV+5BC6MFWwuwR11YqnpDxTRaBmRBvMO
	 MDPv3ZC9xptPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F85FCCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984739358.5702.14552406072346255772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4c713ffdcdb31d369af23a01a0033a736d01dadd4f679fd24830e3666f3e202
Date: Tue, 07 Oct 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759847393
