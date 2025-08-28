Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BE61A4E70
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756372794; cv=none; b=SuvNFQSXW0THs2nrgVHq3ledd1iXjjLekONHxw2VucK7Ankxw2u+4jB2E1NpIajdW40m/NAckjJacmnvUVacLAA4SRzPsTYK5m+ah6MX5KdotxdDqYIFnay5XBGqSSVPHpnfy+w125GE58R8UBbIv0/xVWB4Wy6SKusF3sbmh4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756372794; c=relaxed/simple;
	bh=YVSW2J2Uc+nTSjhU1n0fgZwtmYJSgDnmyxUmYJPACes=;
	h=To:Subject:From:Message-Id:Date; b=RFIF5UccQBAN6EChP2qFeIlQV1KCv6Lt11WEohftNzMDkM2Ni+G1xskOyiR4Y7rm1YVrBtT49R8XXmz0Xr5thlb2jcmUYSH3znCQFlWISRoFLqE7R3i26l2niwtlXDFnKjS2CgVYSZpUdZTaZOqaNM7CR3H6zM4NjgTKlg76yEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K6IMTeAT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K6IMTeAT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D764C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756372793;
	bh=YVSW2J2Uc+nTSjhU1n0fgZwtmYJSgDnmyxUmYJPACes=;
	h=To:Subject:From:Date:From;
	b=K6IMTeATKhx93SUzOtDm/MNnhKrIvE2IU4jyfs4Byap0xA+DJiceH59MX6R26CvZC
	 KT8J+oO0FlTsAV3q0UC1anZgxbBBNs3qWt/coxjIBAnmefTLzGoSNVtfuGABP/svaC
	 brQ8QwWA2DE0xJzfV7JNlQl/L0dkIMgsQ2qHFjyQQpGyqsJmOH1NfB476ecKdancTk
	 gGc6qu61KnseFWfBmvJzzUUpoF2xG9KhO0UD1y9MMwVtie+rKJs4ymXtTvFsIS6b3U
	 GSMTszwT2e8hmJQkAUv8xwm4qjt0KyI3SoM+cMVfhCZGB0xiTZ0KbSTTrlIuXd9tRo
	 m/MjrgmmzlZoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB68C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175637279357.32083.191302073686735653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c62ac6a6dadbbacadf7e9a71e87e975ac1a3e5fc044bf418d1b2f2ac53f5bee
Date: Thu, 28 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756372793
