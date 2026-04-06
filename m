Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AA331F986
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775468134; cv=none; b=UgWC/T4goYD1kG+bFaEK5A+ovU8QnYWG+yGkGhZ2JK92AJtDBO0VPaO76SLXlLbqoja2Xyw+IEk6OE9zgGNXX3NSYlOshG9J4K+4ogP685kFCgGIzfrb66PxkCKsnJuJ1sP+r+jetk9b12p7RyiofuAsT8y6cn2Kd/8bbnNeeZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775468134; c=relaxed/simple;
	bh=Women/I63p4zPW78lsucGyLRUgS5Vuy5m2vfpdsKx20=;
	h=To:Subject:From:Message-Id:Date; b=oo+mX1k2xW+M3Sb098uYgY45X0kAx0N5DL5JP8PKvkwWSFhSxj2bvH/yjeCXxGW0BSOUdiEs1AD4NWd7CIYiG0tXe/AZ7wqzCSUvMi1h/XJSP28GE8uNr5G8uF2muSMiPiP11sFz6Ra60W1e0YIx6fO0UaeDRBM434StYpbRYsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bu5RnUax; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bu5RnUax"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C46F4C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775468133;
	bh=Women/I63p4zPW78lsucGyLRUgS5Vuy5m2vfpdsKx20=;
	h=To:Subject:From:Date:From;
	b=bu5RnUaxH+rCRmt3AoAKXHSetrOIQDPpZJ/BAahbSf1X0pb1iUF6uEjsvYyTrJnvl
	 1Z0OeyDF6X9o0EaU5SSOjYxZQraVbqJNk+TSprVTRp2VJbOOCk3XfvxywvTjziFLXT
	 i2QmbShSLTKEplYDPungjpeM7yrudTEdzcpn5kUGYf/wXMYKG6PMO057x1vv/wEwEz
	 laKcJL6x7wJyH2B+82MR1pQqFUrbgZDZAOf1i9QR9v254ri5GbWa7g55g7Cwg0stt2
	 VwjfEX7A7AXZN0402+tiOTqkysW3QUgBUBBf8tHH0nmz77WnC4XttyqW9eNlnIBdzO
	 asU3a6lbOuC2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ECEEF4EC2
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 09:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546813369.32656.18257036290404235074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b31c84562f9ab4363dc19e529db8ac25bc2681d41e0989222223cbc3ae5fb4cb
Date: Mon, 06 Apr 2026 09:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775468133
