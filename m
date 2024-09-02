Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE601A4E8D
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725312954; cv=none; b=SUOq0NiL4l/ADnw2swzk0sYV22BobKLWp1Dc3BE8irsXryC8VZb3kyduJ0jR81kiD2h0kL2WrqMCgSOnL32E3bnoNXVCCPZQY3KirsL65k48jezKpvm6vP+Ljsk+B6i0pu1LPLXqTCZ/spsRj0Kx4CJXrIrhhyeRnnnG6B44PEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725312954; c=relaxed/simple;
	bh=p4dVys3wjLwps9AQfyCQvvIVuVbWwDWBbeCq2wxKTPU=;
	h=To:Subject:From:Message-Id:Date; b=SThm+2D0OxtPXxS0W2vAxUUy5OHsTPwdy7p4gG/qmXzQxWbrevkjh+tJQjGrXHY9xNF9x+7NjItpdyIFX0AA0BLIGOiaIH89E+r1/Glk+y3EW+QiJFfsEdAI0YxvwPQVZYLaDybr7cI6mFUexjxZj++1/0OZa1Oyk2TXORycTVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1i4zdpj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1i4zdpj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2283C4CEC2
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725312953;
	bh=p4dVys3wjLwps9AQfyCQvvIVuVbWwDWBbeCq2wxKTPU=;
	h=To:Subject:From:Date:From;
	b=X1i4zdpjbOjNjum2dD81ptQ8dvm1lHEFTAQEv+jgC3AwI43UOjmyit8PGCMJhX0If
	 wmkQdVjqgE6cCEe+bbWH/xC8GhOu4q/2Zy2WV+1OrtXeOxqLHeYDZfJ1sR1QwoZGr6
	 A2AysjdU9JTaYlJHp2rKF1ehJRcOsxD16esgNiC7rADcdIqwmTciPa8vm1YUo+za+A
	 NMQtv3SnOsXSjygIFTe/BxmmMXMCbabI/wD7dLyFQtkyyildEk69PCtMrJp1yQ2BW2
	 wC9OF0oJA4Hht0OkHtCfHSRSLU+tdleB4oaOadogehwdx3a6C4q7o4IUCutEMKyAqX
	 mBqkuKZ2pXLSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9E5CD13CF
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172531295364.15031.7146540189059311926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d703ec36b7550732322331349496ab4095c5575b230c5d38b7412ba50b09ab
Date: Mon, 02 Sep 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725312953
