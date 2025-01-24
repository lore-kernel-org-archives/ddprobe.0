Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F380158DC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737743754; cv=none; b=GsJTqrZ99f+arU5ion+/8u5TpHOAB37TPgUIBPZXyEeQv3HqQxB+nv3ufejROIi3LJasH7H67/AsTqrbL6WmWkSLUVye9Bc7oUdc6zvcJPeWYdmmpkFX7Bg7B51CPq0Uw5PWlcQUY7HhFgCtZkuurXt6jIowh7RmAC0LSNq/4rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737743754; c=relaxed/simple;
	bh=EJS1hKYWRMEXSeBVTMYMcdP68fTfUaUK8NCCsWoE1vE=;
	h=To:Subject:From:Message-Id:Date; b=s2O0Ke1CzP4qVPfYDQwFnPhNJ5CfYz2R5jgi/7RsSqBzR8tl2NZajHGzABBSGJJF7rl3bm+jJjoVcdEPs/7CpOdM6mbs5ESp0TvojGL77oVy4mEcolTK3NM5Xuz8lqwRirJzyPURSurBaJoS6qOmUckUQASA4GVo5sHMDPv+O+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BXgi1esE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BXgi1esE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D8C4CEE0
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737743753;
	bh=EJS1hKYWRMEXSeBVTMYMcdP68fTfUaUK8NCCsWoE1vE=;
	h=To:Subject:From:Date:From;
	b=BXgi1esEzfOkGQ6C3S5J0Xf/WRXA/OY6yRAoYVyMrIsI3iTofhr+QMOGoj/Xnpaqi
	 hIVaE+984zvSt8uz6bdZJpxfkxyMljatNLdgcTTQHB1okWBSR6m0WJQ0pKeRfD5NOm
	 fWmNe0661CM33QNy0eVFb0SijMtUrQ/e49n5rxmxsKHkvPrQ/ApWj2YwdRWCfjgoXU
	 DkCOwBgaYwQj1N4uC3wILU32oMHbrFOYH9v4RyWRoWHYBxej5ctnxw5S1Nn8erEH/9
	 IkNcNYOVzwf4JCq7x1okCNkTZZ7nBbjOVNOs0OWs2F8Tv+1Z5LiZyLzQb6vtPkAvwo
	 qgr6DSxmi3Wkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94842C0218C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173774375359.10648.9680107065835806789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4c94b93718a6cb226b21c24f72d863d1e4c1410fe2a8225d092551dee4c512e
Date: Fri, 24 Jan 2025 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737743753
