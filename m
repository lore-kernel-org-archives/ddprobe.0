Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499B718B0F
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779749554; cv=none; b=bBn8NT5VU4fwFD/kyVZhWhxz3JCaVFxRBQHaDNVkicu0KH1DpsiCnqJfPNElfVFHxhm3/KMi3uMC/vZkp02gvfqcdgcTSveWynTRLlPPFbJrAY/v9nClDqnT+Gwex8/rxbuXwNTa6uRoy5ONBYzlfSioNFwefLh3aaXSJLNsjAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779749554; c=relaxed/simple;
	bh=LrmGmWtCPrhyHZVEOMz9zCJB+EG90FcPo/9QZxZOKZs=;
	h=To:Subject:From:Message-Id:Date; b=rNUYP0oqn3f9D4Pq8H7nG9Csjk/dzS34Wrp9Bgmbrl3iG7uqRIctY0n2CJZWcED8BFCjXyap7ZCXibvN5nlmZyRZSa38d/cqvffSVd7XuUcSdbev7XSyji9Fr8mKpqnilhjqy2PWDd6lXObp6TNMG9Ag1HV+kt2aH9eJT8+fQvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOX40lN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOX40lN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFEA4C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779749553;
	bh=LrmGmWtCPrhyHZVEOMz9zCJB+EG90FcPo/9QZxZOKZs=;
	h=To:Subject:From:Date:From;
	b=fOX40lN8geCNeQwbxJn+lM6hwbswGkBfd+GoIVIoiEMAnXTI2a8UrNVo9TSINF1MC
	 ySd63tRHNhSKpdR2V5xq48Qu8vB424R+ismMeNalIkQkyFjL/83Xeu5tJSL+I2krD2
	 KZFqtvDWwnBH3NbClKIDlwmU6A0O/qX1EPDZKiDEXcWgsdLwwZ8ymj0EGXnhasESRb
	 mte0qfJM+shw0MWwrDXeC1HNb4v1eAwMWiK16UOuQmFnDRPz+R1s+UvDAArBQCNvI8
	 lYBS8Xir6Hr28NhFQZ03IZEkQ8cTAgAB9AATamqsE0ish8WaubJWtBKtpMagxoOdjz
	 fw7XKG+nHoO5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A823CCD5BC9
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 22:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177974955368.2202.5842180134908693498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f560268e3e2d8ed63ab9c9c3619114d98c34380b947dd5eb2b5cf7b867dd6e0
Date: Mon, 25 May 2026 22:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779749553
