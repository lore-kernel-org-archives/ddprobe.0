Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BCA1B4247
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755500394; cv=none; b=lUVivDl211QqEGHhpFuW06Li0OPrk+4jRzWnrg7dV0nKwoPqLXgqnd4lhp97d6q6SWEL7N1Cu3gKXX/cC6rb636dV5xbOjHpx1TA6hohouHFgfosY+OxVLYCh+O+KAx5sn6LMTSfflGCOrbtKO6Cbq0f3jtdpDj8qJgHd96Vt8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755500394; c=relaxed/simple;
	bh=Q3a+ywJs5elszTwSXiD1AG17RvYV3+UQPNu7eBaWDWk=;
	h=To:Subject:From:Message-Id:Date; b=Ev4+rr0PqTwzJQ31s51DshamwfPBk3rzfu6HMx09NgXQ/rJvwgJsTBIrIHDyo8KcCKXdH+QGLyG4+MR4Bi8HIW582SUwNezkPl/nPb7FctEyVWynkLOjKRXstmzZpRMTPFUYc+QR3uhqqtSNhztg9FzxZ9ZIbHMjcZPn3lPapVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s9T5Dzlo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s9T5Dzlo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D43EC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755500393;
	bh=Q3a+ywJs5elszTwSXiD1AG17RvYV3+UQPNu7eBaWDWk=;
	h=To:Subject:From:Date:From;
	b=s9T5Dzlow1mMbxrHUnBov8s8FUI6K2znUw/+bDn6wpsQ7mRcu9H0+n6DpUv017Y1U
	 7nvKEcTEgUi340nOYrF1GyW/LI/d74Y5RGobTN2ijliKrcdjkcKTZwNnDWFv7gT2HV
	 otSqG1s1fEdJt7po6T5jLGOAmYCHwDrVvNrn9QvskGXENYjdn/7HOylDKM1BCEW3Hf
	 X0imSb+O3xvHOJ6f9q7pgyS8ceylcG5I8ikAp3l6hS46UFYYitaBI6TsjgHR9VqOoJ
	 6Vnposl5B0UdKhDlVH8ItxRD23VM44eG40mLbn2JZ25D+myCJvNO1vEVhWrSGMVkVP
	 cKjdO9h+7gSvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1ABCA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550039357.23572.11902799790822029825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c78d9fe8d394c68a383ff6f026b460117a65649ce26367041e89a2f668a5bc9
Date: Mon, 18 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755500393
