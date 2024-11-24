Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8B23FC7
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732435554; cv=none; b=bNPc/SH90eDivu1vfrYMrEGTzoloacdGgT/wsZDz2mltAan3Plc4LVwyzyCMLOoWVJ7bZxAhVwf9Tst3GuOViacW8FqSjdjOIlPsZa3CqVn2V0LMFpkaXmzy8bHGLDYjDvym6qfOXwhbBSt67o99KlmefxaF04TfXCOPv3dEN2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732435554; c=relaxed/simple;
	bh=JWe2m5YTjT21+O/JdFbCgCs3xAnXCHPdiwNngbrKQh8=;
	h=To:Subject:From:Message-Id:Date; b=jlxUf2g/Hnz37kltT9PxsyziK4zcrsL01XwzIKxXYB7Oo7IMmJqumRn9h9SaAmbIuCzjvviJEbayGNoUIWsAnqYn/ZmV/LgJi/vQ3Rb5DT9VQfUfXM2REKWunZKop8iAb+Yz76rr5d6refHyYLu70p6yW0SmAo23z70RrDy3Cy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AXbacZUn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AXbacZUn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAADEC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732435553;
	bh=JWe2m5YTjT21+O/JdFbCgCs3xAnXCHPdiwNngbrKQh8=;
	h=To:Subject:From:Date:From;
	b=AXbacZUnuu3PMIGABAynzT2lZggVepirlOaqgl/X9WqPWgGPKLm9RLsWv3y9f/NmB
	 IXGTfP6UItCHBFCpz0hhryuWBKki50qAh6I/S3Gf0fnVVVHsnAwvn+iA6aykVhq5Ds
	 XpeGSShEq5TEUGixwK5BZGcN/3FRc4MrNbrs8SBjx3m5knqd4Wy/gIGfN8ObwiKzza
	 rBKzmoWRZs5c2xSde8bSEuUJIBPE+FZqwr8Vt99BPlvGit/V2sD2LX7toIiAMYOoNA
	 2yXiNSZAFwLRk1+WtOMpWnSXrjSsDDzvUzhyZveNYfVVesiXqlv9q0jl0mxUidlL5L
	 BWGgb8OZvuVyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9841FE668A1
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173243555360.10485.1322508511990133231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48231f3136166366209056a96e2635153fce4aae348c50ca04003176186317c
Date: Sun, 24 Nov 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732435553
