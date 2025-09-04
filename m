Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6FA1C84B9
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756962594; cv=none; b=rFBV7qgOY7fleKxyO9YsZuKDPYo9wVuBQ+JLvTo+27ECiQUZc4doT9JaHFOn5lc2iMKuKKY/mpTg+K6+yoa7UdITnLfX3Y3WwLyb19V4ihOw5dE+G91SffscKbdswkfhHzBStFt1KHhO0ac1UIw2g7hTOJbSl4bsiFZCo+Jt2Ac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756962594; c=relaxed/simple;
	bh=ARwFzMZG6UNa1UalLr69/GmpZWBGopIo1VS+toWX+ss=;
	h=To:Subject:From:Message-Id:Date; b=Ewi9ZOU108c9e2xXD5H7i01iXt8etovbX0TR683inaifPoy67f7+ZvPScAHRP2K5PAOCn87KpDfM9FZoPtC+NWEktUQcysyeEdMWxl0zZ3iVZGTcTZpAEVh0NiVlHpp9WwdtxqSAPQsNXtmUtKp/gHXu1xWoRzmTIgDjGKLjPok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1rls6Ro; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1rls6Ro"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5012C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756962593;
	bh=ARwFzMZG6UNa1UalLr69/GmpZWBGopIo1VS+toWX+ss=;
	h=To:Subject:From:Date:From;
	b=n1rls6RoNRK9M+yxL360plrENCXh3Ev1vY+1z05GNU8fUxmi1LAOaaXsvHoCjhqnU
	 AafGKI3viyDhH38IvaYUgZynuAW9UQGuARITWV9l5XoggkmMigBQn1c5HnzSLY6Cd3
	 kPWsrgxVH9xLgv58U0LiaK+B2toZkSkGx8Ph2xjSdP+3/4tOruP1t4kkEZvcMzAsyJ
	 O8FPStLZQYtejn3p84j0gT1Yc1iLQ2spwrozHr++X0NTskcTYwWtxluCyJms6Cpx/F
	 WoHWFdGsgTS7XV8puLbh//BtdiXTHXT6ERsVYbZ3G5p/DnfeJGoBmGM2oc+gmK1qYG
	 Wtc7zeyQVjEYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D6FCA1014
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175696259358.19158.2596036338767407638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a848c03378079bf20787c91df7e42b7dd578289f817b6efdfa941ee1fb251f63
Date: Thu, 04 Sep 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756962593
