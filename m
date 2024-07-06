Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F516125
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720227923; cv=none; b=Xs/MEqhDrgZJiVPWbFU42mVU2tVb+PYJQcy1Et57g8o3RbwCPzEgtHfTYj+s30z3a3cz2b5is+kVgzq4XmSU3bGtH500GcxCFfx7cqChxvzXBlGUb3h481oVqybGFl2v8PSwyYihnBOAl/cjuHBjqCQItCmhH6i6IZw1JjFuFjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720227923; c=relaxed/simple;
	bh=UaLjCNPOTle0oV/hFn/3L74vZ8jyG8winVvR1wMKknA=;
	h=To:Subject:From:Message-Id:Date; b=V/WHf2NDzQdZ7Wesv9QV3vxj1aLY2iCbZ2X90eGozMLfgn76tmj7M8dZtPmCYDkWTvcSGKYvKik+63Z6s8dNGAOnrFQVKa8LWs/IGhyiBUZNQpGJY5OPGopGo9NHlvrHFlCRhf6F9oCBEM2o96KqWIPTsWtqjc/UrbVrea1gErY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGalbUh3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGalbUh3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7BEC116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720227922;
	bh=UaLjCNPOTle0oV/hFn/3L74vZ8jyG8winVvR1wMKknA=;
	h=To:Subject:From:Date:From;
	b=FGalbUh3egIQGPIVDzzc3P6oWTrAn0i4pJ0jMZfC8pzM4qDBaAWdMXz26tQia3MpQ
	 Yk+tJPQ659Ztk5kyLmAHMN68M2ZeVhtG9yJJYzprRZVECSGkS+4GWkTH3KDncpKD8+
	 uRVppwuO0Xs+PjUdjcLqOqSy1SNJv42Nw7vJ5r1+udeO1etD3O3JUsiFHiqNziPHm8
	 ez5BnXbey+wLmRmcHgEGt4F5544+0i+cADnJJzEDc7+3hyhN66ixBYyARmcvICiwU7
	 JRbAmrB97SkSWZX2igqCR64cJVEZJ7ywkG1PamP6J6CIc5UVrYZ7kzDQQQodYJaCPe
	 Gj3OLBGKwq2fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8430C3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 01:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172022792280.22016.11454887659304197430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0789660b0b49c4a1fdf1ab742f3fe4721d68820fa11cfcdbd1e65347e2c867a3
Date: Sat, 06 Jul 2024 01:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720227922
