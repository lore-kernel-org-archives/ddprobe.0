Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7507638F9C
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717649243; cv=none; b=UKI7AqFtMUEjoNeP2Xfvf7Q0E6MkIQ6RKuQ4zbwAnqSvlejX1p0stlIS0PM2VIQ0sQimZ9JhRwE1P5DmxdCNdbcxajih4A1DrXBWwTnWTaAFTAfAG6ykRzW2x15LkDcGm87HwSeVa3UrTITmy9KQt5WaLo94rIN/Zhhkw5NeIpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717649243; c=relaxed/simple;
	bh=ijwsPerrIC1qmZdQj3+WqArlQ1gZfs6SYlYOqKPi4tM=;
	h=To:Subject:From:Message-Id:Date; b=T52KSEA0qbOE5vsUSVPuuPTlu8X0nsKK2EZwqrCAJwz/Q2vSiTV4Xtye0+B3wxNbZFewn2wqQMx3PLK9E2Z9ytnAqQLgL9rmC3ZNMfVFE5TT8JnxZeMZ6Qvte7CudjjkiuJb4MSzWLocatnM7/YL1tGwwvpC3HOTRGb6HL+r9bc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FJnrH5A+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FJnrH5A+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D91B0C32781
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717649242;
	bh=ijwsPerrIC1qmZdQj3+WqArlQ1gZfs6SYlYOqKPi4tM=;
	h=To:Subject:From:Date:From;
	b=FJnrH5A+mpI78g/DkZt0cyQTr97IIoDLQYXIsyeY8d3vw88g8H4nlKEqy1DnYyA6N
	 ll4lIE9pU8IvDrhqp+ysPqGAlhhdxq4rXPq3q5LyD3Qx1jhdST109y1iMuiXu6M1vn
	 b7+LbO+u5ROFFDm8SwEZfu6/lVSbUW1yaksiBApELyrNtzaXBWmQoljEQ6u/r/FmU0
	 Ixu7IhbIvouJvGenyam2/rAv2HHW53l8YhbNhtbfMaGkvV2xRoOOcboUOaT8wLIY6C
	 Tmo+gCWlIkkUwV/vrhLFB0Kpmp5/C9h9m0qvTlgKdFh5P/61q/yxUGk4Ftf+DR1XNo
	 Uoa9AYjodztuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2EC4C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 04:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171764924278.27148.1432922589711795692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4739e9ab71c31892c1f3a3b3a789c798e4f40a898d62a7ca1eb6a6a4e4c450f6
Date: Thu, 06 Jun 2024 04:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717649242
