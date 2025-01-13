Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12EE622CF35
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736768754; cv=none; b=FSl8kSD4XgqPjZ0FqKTtUfwFzA7M9PTqW45REGK4ik+e+qPzxxAZmifpvJ1NxgSSphujdWQGskYNxPw3wuXya19lXZiQJJ2YOwYHZ9zb/cyKA4+/wqC4/K7f8ZLJF3CILBbDC0xiu7tDMfcdG7Tyf34mX68Lj3vRO+QoH+I2p4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736768754; c=relaxed/simple;
	bh=iz8WfPJJyItP2G5moueucL0w80V30O4qVRIMLjKFA3w=;
	h=To:Subject:From:Message-Id:Date; b=Ff0ToGcCn4Hm5jl8KWXtM8RYFA/6K5zWhMZJNX/9cqcapdHPqs7QygziN8cRPPjE2ILKNnYYcM3vCJuCD2eGBOH4z19jR/RSVMbBIEnyrfnXYetNAe1AopNfLIyKVKDsRV3tOwBs/7wHUY5SXTeX6TSw9XQXwDcWtmqjKrSlAIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NL4Kmnd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NL4Kmnd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F920C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736768753;
	bh=iz8WfPJJyItP2G5moueucL0w80V30O4qVRIMLjKFA3w=;
	h=To:Subject:From:Date:From;
	b=NL4Kmnd4Fa8Jvf2+uwqwvjhE6HZQWotirdmfcnlg2muxTD7f+lUTjt9ZYuldu7mr0
	 Ak8xkEI5JUultqn2tIhnOcqqL3dRJNsNEO7omC2AbSFLWDaiEJpsCUoHZq7l3wSyUr
	 WfuosnNyG1J4rJ5txx35Tb0/Zs0/cNAkvFchUTJB9VRGvzy36G0cJ2i2GEposB96c0
	 2MP4DshR+2RF7TKGg9AYq8Ksv8lWJMssttmK0VKXpA0SV8/zgP0PrADrZ0QcYAtOJ0
	 rQkqSp4M5kVARWUTLGkw3SJ+3OjoxC46sPVT80UxiT5s3knHso21hQu8dTPiVE8WTi
	 4PokgQ2nrxbkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFE9E7719E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173676875358.13417.17525542311334716536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12278438d451eb86621b0e8e25bc8a0e1c2b771701809b476c3e08489455d8a5
Date: Mon, 13 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736768753
