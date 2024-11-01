Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8FF31A7060
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730466953; cv=none; b=DBLjT1G772QcsYMxOKpdYV/zk3Nt+j9byaV8JFtB8ZbZyXe6k1bga65VVhLKszM7llDd2cvfgqxxU5akSpgj+34Dz4XKj4NA89cfSx6Hqv/lXLis0tvJo5wMBqwWVZcAgfPg+tdGaafte23Ogb53NFTYiebFH45frZQx7vf3T1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730466953; c=relaxed/simple;
	bh=WEEH0USM7G86S6PlUaLnpp3GE6zl9cvK4UykDBdQUeI=;
	h=To:Subject:From:Message-Id:Date; b=dfdzcIzEP3ciC+lvNKWiWLO6VNGZ+DdtCIchnB3POPV8iYGym4FxhwkLC2xdGxFBBBYiXkBWfJ4tmFoZYWBuhbwvlSU9l9wYDeTJJD6yld33yN27XzEqF8Y9kHHCxckNlIWnM62pTE0nAQAgl9H1ztawqzIu1tgGai1n6f9TRfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hBQeXroq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hBQeXroq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD0D5C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730466953;
	bh=WEEH0USM7G86S6PlUaLnpp3GE6zl9cvK4UykDBdQUeI=;
	h=To:Subject:From:Date:From;
	b=hBQeXroq2CyGEKIsXbAbiynJkd5lRZAXM1LFFJi6xl6NoztJAVdIHyXp6v5jWoNj2
	 l2eG4a067yRYpz1m8Al+UFUaH28KzVwfDyt/z9Tq2oeTwHYLCT+osr/mr4JbJs4MLR
	 WQkV9af34YG15zW+rIdTs/vN+N9jDaGp1Ls17EKb2MMC6Q09bODJFqP4U5UVe4H561
	 +SrKaFC7980rmafOKEpdtgSfF8sNAEG7VEKOUQd9fAuXO3YjXvwZXCiBlpSmm+mi0G
	 LgxWRL3wNafaTxKlOPi/OUMnjAmUWlgtBjvd/4lX4lNzLAJcv1GYu5QpuP/7AdAO7h
	 PB7Tj2xGDQ1ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D30E6B278
	for <ddprobe@lists.linux.dev>; Fri,  1 Nov 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173046695361.2213.5656659023188809786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2e75b425a8243defff9562d2466b68ff6242e6e762a3fc1ace2e3dcc09dbfdb
Date: Fri, 01 Nov 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730466953
