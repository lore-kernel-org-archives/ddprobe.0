Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F364140E50
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730547354; cv=none; b=LqN2IssDSYLyrKjdU8Y3Y8v85Lte0MenXKkuzwK42il8CxhYfpz522pCzBw4Xku7/sYd51rw2qTSXipQy+m1xDNGqhRustEG+bLLObLCu0i8DYSfHCq5hs+xMJbZQNLjryzmoIIiOBJrqses5iaFU/W3jNqdRWUfBoJDimNj75o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730547354; c=relaxed/simple;
	bh=K6PKBbcI/8IpCuEeifE2K5/jl4cSTTuOvz0NL3URx+g=;
	h=To:Subject:From:Message-Id:Date; b=TaUsF3IMbUvhpiAUMSta0am/+Y64eRywJbJqAx49EmgbLLEzAHOyam/YlVQGIcZN4rUqsJXkXpbhARyAKOFukwv8Iyo2N3IwkUnaOkMTXqIbls7auFmsLnYrPvNzrss7wa5QgQVhAVrOtfZlFyWsyK2DwiYUEIQNLGDMTqNnliA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neN+ATgj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neN+ATgj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA825C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730547353;
	bh=K6PKBbcI/8IpCuEeifE2K5/jl4cSTTuOvz0NL3URx+g=;
	h=To:Subject:From:Date:From;
	b=neN+ATgjTyu4C2Rs7dC/gvKraoT5u7uzsjwIsx7InoYB0tGFNQq/RFCy3yms0RWDA
	 YuH1RZH9zqDd0QDe+FKVTyhqGIKi7TRztnOieH5ocNalc7EAwHe+weVJt9EnYcQqD0
	 DaQQzV8TPvS/vY+Vd6+2lIWJnsUfLbda2BBpguiPOV850aSzYUxCNXO8mmNvKpmi+W
	 dslB4TP4dNgYbOQ+O0WpNaWgtIhgVNQG1NjkYn7418p+7PvbnT0zuoPYhuIhANwllQ
	 nLKqn/zbpQK8IzJw+/dLQMW5In+bVQ288ZNE0DHOB9ndVd/VK7t2Bbvt305qBCxEhR
	 OQpiO43+LvWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0ACCE677FC
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173054735363.26325.6247105990620073599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 336dea46762726f7569298b40c7558134c99de0a4bbabe71bedfcb98203085be
Date: Sat, 02 Nov 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730547353
