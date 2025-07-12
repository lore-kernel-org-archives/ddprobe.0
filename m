Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3846B1E5B72
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752301195; cv=none; b=Hn/VvYLNfEhaERKAzdlBoPCvlLNDSLkaTo68vHO7B9MyqupbsuvsbSJnfXRNB2tC/PEDxcq9TfchJn5S/xCOyZ0FJwYlmlGjSlGEVIL+vS8+cWNGqnkmRP8mDClpUa+dZxLbmZ9cUi2Aa5uqoZFs5bhQksqEcPcwoOaucRlE7Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752301195; c=relaxed/simple;
	bh=zeH6SSC8PEPAyBfLN4HPx0Xbhj2VWSMYJVD7Xygr7kg=;
	h=To:Subject:From:Message-Id:Date; b=RFfEl1wG2k1lUdqCeXDz0eO7llAwODVph1ViX6O3U2AKUyaSTE+1GGaILnecWahl/EZ5vAnzvQ/B7pG0mGZV5s4UDzSJmOgigGoKaBF/aHaaoVw4vtoORXTfGYeDXUTRwHbHTzyIsPF9AAh7z57n9hpWvm4ZfkY2fthton6a1xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O0zfb+kf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O0zfb+kf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC21C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752301193;
	bh=zeH6SSC8PEPAyBfLN4HPx0Xbhj2VWSMYJVD7Xygr7kg=;
	h=To:Subject:From:Date:From;
	b=O0zfb+kf/QVbYotR1vf2VWzX9x0v09ob0AscBUDyZ2mPMsaaVY4hA4CEjLjppjdiD
	 gYRfiAEsMVQOkUaorX5y08fRkN6NJZvoYy8nociLcgkcV6/nisoebnigMEv92sXgS/
	 pvETv4Nl8P/tf9txVDWMAcnfQQ1pelgaloOePYLUjc5woL3tq2yp2ZlpYThRKqWt7I
	 tatFbrYQY8O2h0dNjkOm3m7WsbUDm6/1mrNHBSz3g4FADqsiTzGDuTQROM/zyppq6V
	 lr5Srlf7WkVejMa7bu8drtES604wqlI/PK1q/Gg3vlMrs3872xTDKmfSa8p7v4aVBm
	 7MVHtR11ZmRrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0C8C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175230119357.3383.2411237386837081814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95888d813ac3b0d09ec18eda08b405b345bd739a35128a4c39d5afb54369093
Date: Sat, 12 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752301193
