Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F07D3D7A01
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791963634; cv=none; b=hpPW/FPodh2n+gEFRoZAXZl/LOEQ8bi6sezd5qZbPneE2W+IdW6yL6TSgLsWy1sfVlv+lJKG9HvUzvzLFgcMsh2xkEv8EveXvYLreO+sRH2bsOixNt9xV+TUcZ+aTLX/xpa23EiVbViSwIhVRxgmKi2LApbTnNWRiTFbxakrJH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791963634; c=relaxed/simple;
	bh=kz0lLcsUBPdVFKKKDXGz6BjKhqRCo9LGjdAOECnYwwE=;
	h=To:Subject:From:Message-Id:Date; b=Mc8PSkGe+dKs6DK235mIlDKsKfy0Gl8ytNSMf0Kh6Cg0Jm6ijP7Cs/+VEgBMLOLicOyENtYabufJz+g18ZZrQKpGm1e3jtqFnTZkxDJ1Ussxp6+YgT8S5aJQdmCCNW816l4tLEhEQiM/u4owElL2F4JSS2/4rB79MGaNLyzdt70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gdaw24mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gdaw24mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD504C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791963633;
	bh=kz0lLcsUBPdVFKKKDXGz6BjKhqRCo9LGjdAOECnYwwE=;
	h=To:Subject:From:Date:From;
	b=Gdaw24mqu/ePgoaEP5usk/SMJjpFZMMGouIp90Rz52xRi6Tuc3x6/grMVMt+lTUiz
	 1/YUcoFTdSJEXWLIT4mHStd2OTBQ4GzAWrMW3/Ys21nYSXk8l6YTjhztzHu9sL2Rvt
	 yDOLT3hxw/7JEwu8ZpUTMNIz3oGk3EkzqJu7Cx4HNAH1Zs2qWrjSfTjbbjEcM1YetS
	 N7VdDjRM89O1BICmgr5wlvBkuoC4qnn+bEPddD3xDvGnUggipl56xewdK82eX3wJ6F
	 Z4qSGt0GA9wO0ZzZpVAL/1YR195blaKfYFWw3+lqJC62cndCIPNjT4hJ08tdgG/iMH
	 wkyaIFfBFzPOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC388CC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179196363369.10485.15908817001291735077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfc426d7719a5ef53991b0af75cb0c83ada27f76c1103fff071f92f62c99261
Date: Wed, 14 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791963633
