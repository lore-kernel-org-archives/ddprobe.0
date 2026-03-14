Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E0C377ED9
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773494694; cv=none; b=VcvKGypbvoIwmnbqbrt8SdKieC7uJ815IUu/yVfwLkK8Qm+tySifobSqF90I9CkZcTJHrZ2jdI3t2Sqev91gyTj9Ljiyjvz1HhcPpfljMj5VdzMIDaY01TWRB+/9FF7FyMMnPMPtX7dGH/xY/BBHxF3tCS7/dkm/w9hLTmOxwuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773494694; c=relaxed/simple;
	bh=4l2RYcWhkxsna/4nPmJhDR+hoGAoPVvx174FAg9phbs=;
	h=To:Subject:From:Message-Id:Date; b=NEQO20ndfSHDe5mMckTjNfUN+FDeveycO8gxpW5h8rY1Tdd426sXsGvilnStwcnX2WERhgypgOm4gFYmRPt6WtV/2t2wAJEFtISZpZnMKLmR7o9PXRdkT+K5HImftk9yX93lZNQ6wGIc5hwEh1YlU53MAO2mynT3tfsb6HU2gbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j40+kaeL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j40+kaeL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4077C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773494693;
	bh=4l2RYcWhkxsna/4nPmJhDR+hoGAoPVvx174FAg9phbs=;
	h=To:Subject:From:Date:From;
	b=j40+kaeLkQZxMRZoLb1vOlEX3Ll4+IKOx6RKWeRHhDCSilQ5UXddApzyisaj0gTzz
	 g0q8/LwoePPOmga3SvIeycachm/IjsUQRLsb3b3hRnbAKH+0NHolHoQi8ccY/y7rVf
	 /3v29Y+fCElewwTY546eM1qFsF81HIRntfpxcVHteIvtXz4a/UuaVYtkhsRXtFDQTd
	 /f5NECFJAuFMj6PQaGywFwP5wuDK2bzzUudOA+U6Yv2zQ0elxQOL9JmLhel24ElJ6j
	 kN6tP0lifSHLt+OhWBQBG4mN+yXqjZGFFHSkSNCfIlJZyItMjkKf7bZ/uhVecSIqP2
	 PPaID+cRxyrLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A024A10706DC
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177349469363.23264.17333153831059779117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e96f2d75a55c725fae4335afb2d9e8d2886ccca1bfe62bb1bcd0d06e769865
Date: Sat, 14 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773494693
