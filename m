Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D362E3701
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754099994; cv=none; b=jQozBnQ/YwDfigs6VzDLMKvu8krXxRTkKcM/YSSWLxldwDTqknYqpNl9l+X6QdX91pH6/6cVR5mSaq4/bpMQVg+xL59jWkCWEXPDxflqx9Uy2H+3F9+mBUCeCnWMxnosfrl1N1wDH+gjMuxyM0CfiCnK8UP6IAZh9wZbQAapsaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754099994; c=relaxed/simple;
	bh=J8HnLMnlP63IBVS10sd/TYnFeYP4k+x41Dzhv2w4iC4=;
	h=To:Subject:From:Message-Id:Date; b=VNxRUSK0tzS9OuNFJO6C6rbkmzODenfLA5Kpnx1mk1I5vq7Fsq/mbCAdYEDJoTG+2zFF8x94kUJmroNGh67PV+w1FvufOozGJn1dNSPpFpcUy/t6ggtQG7nFEVXQpGzYhbsAgakGA4xFOLIeOtA5uOgUKDU3o0lClZSAkksnZwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7o9HuOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7o9HuOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF32C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754099993;
	bh=J8HnLMnlP63IBVS10sd/TYnFeYP4k+x41Dzhv2w4iC4=;
	h=To:Subject:From:Date:From;
	b=h7o9HuOJSOXyWXGwm/dEE9y47xs1Mo0hSfvxsxLvfIhQUINBkzafTcEFXJEAUqrwb
	 DmvD9F6oHLS86gIQ+WKxGxvjXT5irdtHoHlvPvceazKJJhI/qU6v7evtUyjZ0Zx2fN
	 LmzgE445dMYhxEJIVdJ4coAydNhY+KLp5Canf6wF0TsXWF3GYFNGOxqAuOvZAmLqEY
	 t4rc14BTX68Z3owIewvFMVFv9KJvX7Too/fx9jPrNEhoh3kBPGusMaHdkmgkUAvM1d
	 4zvj+cr0Z7l8s+ffXxVw9rDGS42sqYDQwZb4YFkViSAPko9Xet8LBcXT0q2URHY7++
	 1unbQ40qlYuiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD7CC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175409999362.20459.17800282426788740536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32afea7da00af31300b56ff8266956897e5c4f7dccc2787aab80eaa049ddc05c
Date: Sat, 02 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754099993
