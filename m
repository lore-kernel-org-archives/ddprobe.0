Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F468836
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752419994; cv=none; b=lQmsARaKD31gBEyrtD0lOSLKEWeFFjNiwd8GlnfT94DNK78iGY8TewcnnETurQh9Qv21gWXGvYGf54yQYcgd68SKeoVfYip/c6b90++STz0YUeCavY1CnuvQCqVHVhs6fDEVByGSMsvJ7QGjZmUmVLmUk3yI2e8c/1AyX8YuvM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752419994; c=relaxed/simple;
	bh=A5Fc+drcTGJ2Cz9xoIQ85yuSEEI0R4nWl3cxCchy6pQ=;
	h=To:Subject:From:Message-Id:Date; b=ZKppv1b9LA7PG3fLVjWyrqocFYk8aikfBJJ9Dncw+Ipx45iZB9umHzO3KCEoOHJk5prYInHs3JhPxXPdIVg3JA07PGX3fxYMk7HjeSenUAMPyf1tBNeIahCGCUTC6Bl9vH+EY8vfZJv/h7W7P7DIKcSWOAllYmtukfPoWXV0n38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jsEGmYe7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jsEGmYe7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A641EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752419993;
	bh=A5Fc+drcTGJ2Cz9xoIQ85yuSEEI0R4nWl3cxCchy6pQ=;
	h=To:Subject:From:Date:From;
	b=jsEGmYe7cf5xLPUh3pQCmUvKSNLL02m4AhFMv9pgLq43SAdUgR+FjkQfX8Gwpv3Ui
	 kJdbmpfLrWPrHSPqUdvHADESmmLN4R/+NopwkB7qoErSWYIoRBgBJGiKbe1+I3E6C9
	 WqAuEU/BICUzXfLNWxatVFneTE5q5Sb5ndRF0ufbI+RB5L03rYPn/8sfFQN6ZGycDZ
	 ISLZWobVjKeclKpI59q7mjH2qXyYY5VKCGiK1dTjCl++9Oebbj2cPA+yMHL5+fKNat
	 Nm9GiD3s2HFimNZOFai5lBW4akjTCOADKUSowSMInt1GcObmpbJsA2ZZXztrdOdc3S
	 k4RLo4FJpR6nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915C6C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175241999357.24789.13819322019375833258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ee8662a88afc3e29c891e342ba675c10cd2955bbc815cc8182bda7b405f2423
Date: Sun, 13 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752419993
