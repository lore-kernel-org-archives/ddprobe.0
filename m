Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AA11DDF8
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719343403; cv=none; b=MNf9VP3rjWnAfJesEg49YbhuqQXT6PrRvf2Lv4MFMWqwaFuh0FavxO6702S7MXdhn1uBSJdEsaHVqCUxPymOYdtxbnsyqAsXrObT+ZMkr8zigxISnWMkvx4oPKxhrezQzywc8tyz0uR1EjpnE4/9AsyC9fXzIn54d9fUROGSQqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719343403; c=relaxed/simple;
	bh=btt3qM3TlIf1akBH0h++dN0mNIqDoeVbvFhqt10OY44=;
	h=To:Subject:From:Message-Id:Date; b=agv19GsDVsUETeNzqLy9bR5gg6C9m/i2HbXr+DfxIuQYI+lLRgJcjBozWE22aN2kPxVJbRd2wZuVx0xHLg91qvkprlVSFANyry1rcWHgGfZ2sMaRPieUx8+yONmXE+PoyWrV+3kIfKqJyd9vtKDE9WkVq0fX7hUHlSgnVrZEPq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnKPazjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnKPazjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0707CC32782
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:23:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719343403;
	bh=btt3qM3TlIf1akBH0h++dN0mNIqDoeVbvFhqt10OY44=;
	h=To:Subject:From:Date:From;
	b=nnKPazjEWpzslGpYSTF+gvkvFipLRfdglu+WjpLnWe5O+mOUBp+7F6FpvjGo2tjfY
	 fi+TRqgznftK91c5hpVI85bEPWux25gerkTpByAp6Onj4iheCYf7S+XEJ8Re+usn/d
	 20l7WaxS4FTpH+P3q8jyxu8MZnM3z0rpi+nBmSurq7L9RlEU2pUpnun4RzR1jFeeNU
	 JkU0n3NrxsKyVUuzEFJaVs79GqZPILNqVY0M225764YK/68ltVRmek9zcvKOpnruuC
	 KAJ7rGJZtgZFE514LPRJHYeHcnc5/VchrsIZUXzOjzx9KqG6VOiB/Cya9DxE+UKDDm
	 4QXgPkvCQ0nyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE780C30659
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 19:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171934340290.3770.17711462884363321794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee50e66ced37bf61b5d210406177096e870c5577255e542d332530562ff58ba
Date: Tue, 25 Jun 2024 19:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719343402
